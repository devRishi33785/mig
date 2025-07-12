/*
  Warnings:

  - You are about to drop the column `platformContractAddress` on the `CoinDetails` table. All the data in the column will be lost.
  - You are about to drop the column `amount` on the `UserWallet` table. All the data in the column will be lost.
  - Added the required column `address` to the `UserWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kind` to the `UserWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `orderId` to the `UserWalletTransaction` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "DepositState" AS ENUM ('PENDING', 'ACCEPTED', 'REJECTED', 'COMPLETED');

-- CreateEnum
CREATE TYPE "WithdrawState" AS ENUM ('PENDING', 'PROCESSING', 'COMPLETED', 'REJECTED');

-- CreateEnum
CREATE TYPE "TradingGroupState" AS ENUM ('ENABLED', 'DISABLED');

-- CreateEnum
CREATE TYPE "BeneficiaryState" AS ENUM ('PENDING', 'ACTIVE', 'DISABLED');

-- CreateEnum
CREATE TYPE "WalletKind" AS ENUM ('HOT', 'COLD', 'WARM');

-- CreateEnum
CREATE TYPE "WalletStatus" AS ENUM ('ACTIVE', 'DISABLED');

-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('PENDING', 'PARTIALLY_FILLED', 'FILLED', 'CANCELED', 'REJECTED');

-- CreateEnum
CREATE TYPE "OrderType" AS ENUM ('LIMIT', 'MARKET', 'STOP_LIMIT', 'STOP_MARKET');

-- AlterTable
ALTER TABLE "CoinDetails" DROP COLUMN "platformContractAddress";

-- AlterTable
ALTER TABLE "Coins" ADD COLUMN     "blockchainKey" TEXT,
ADD COLUMN     "depositFee" DOUBLE PRECISION DEFAULT 0.0,
ADD COLUMN     "minDepositAmount" DOUBLE PRECISION DEFAULT 0.0,
ADD COLUMN     "minWithdrawAmount" DOUBLE PRECISION DEFAULT 0.0,
ADD COLUMN     "precision" INTEGER DEFAULT 8,
ADD COLUMN     "withdrawFee" DOUBLE PRECISION DEFAULT 0.0;

-- AlterTable
ALTER TABLE "TradingGroup" ADD COLUMN     "amountPrecision" INTEGER NOT NULL DEFAULT 4,
ADD COLUMN     "maxprice" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
ADD COLUMN     "minAmount" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
ADD COLUMN     "minPrice" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
ADD COLUMN     "pricePrecision" INTEGER NOT NULL DEFAULT 4,
ADD COLUMN     "state" "TradingGroupState" NOT NULL DEFAULT 'ENABLED';

-- AlterTable
ALTER TABLE "UserWallet" DROP COLUMN "amount",
ADD COLUMN     "address" TEXT NOT NULL,
ADD COLUMN     "blockchainKey" TEXT,
ADD COLUMN     "kind" "WalletKind" NOT NULL,
ADD COLUMN     "maxBalance" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
ADD COLUMN     "settings" JSONB,
ADD COLUMN     "status" "WalletStatus" DEFAULT 'ACTIVE';

-- AlterTable
ALTER TABLE "UserWalletTransaction" ADD COLUMN     "orderId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Deposits" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "coinId" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "fee" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "txid" TEXT,
    "address" TEXT,
    "state" "DepositState" NOT NULL DEFAULT 'PENDING',
    "blockNumber" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "deletedAt" TIMESTAMP(3),
    "completedAt" TIMESTAMP(3),

    CONSTRAINT "Deposits_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Withdraws" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "coinId" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "fee" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "txid" TEXT,
    "address" TEXT NOT NULL,
    "state" "WithdrawState" NOT NULL DEFAULT 'PENDING',
    "blockNumber" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "deletedAt" TIMESTAMP(3),
    "completedAt" TIMESTAMP(3),
    "beneficiaryId" TEXT,

    CONSTRAINT "Withdraws_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Beneficiaries" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "coinId" TEXT NOT NULL,
    "name" TEXT,
    "address" TEXT,
    "state" "BeneficiaryState" NOT NULL DEFAULT 'PENDING',
    "pin" TEXT,
    "data" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "Beneficiaries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TradingFees" (
    "id" TEXT NOT NULL,
    "groupId" TEXT NOT NULL,
    "userGroup" TEXT NOT NULL DEFAULT 'any',
    "maker" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "taker" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "deletedAt" TIMESTAMP(3),

    CONSTRAINT "TradingFees_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "Deposits_userId_idx" ON "Deposits"("userId");

-- CreateIndex
CREATE INDEX "Deposits_coinId_idx" ON "Deposits"("coinId");

-- CreateIndex
CREATE INDEX "Deposits_state_idx" ON "Deposits"("state");

-- CreateIndex
CREATE UNIQUE INDEX "Deposits_coinId_txid_key" ON "Deposits"("coinId", "txid");

-- CreateIndex
CREATE INDEX "Withdraws_userId_idx" ON "Withdraws"("userId");

-- CreateIndex
CREATE INDEX "Withdraws_coinId_idx" ON "Withdraws"("coinId");

-- CreateIndex
CREATE INDEX "Withdraws_state_idx" ON "Withdraws"("state");

-- CreateIndex
CREATE INDEX "Withdraws_beneficiaryId_idx" ON "Withdraws"("beneficiaryId");

-- CreateIndex
CREATE UNIQUE INDEX "Withdraws_coinId_txid_key" ON "Withdraws"("coinId", "txid");

-- CreateIndex
CREATE INDEX "Beneficiaries_userId_idx" ON "Beneficiaries"("userId");

-- CreateIndex
CREATE INDEX "Beneficiaries_coinId_idx" ON "Beneficiaries"("coinId");

-- CreateIndex
CREATE INDEX "Beneficiaries_state_idx" ON "Beneficiaries"("state");

-- CreateIndex
CREATE INDEX "TradingFees_groupId_idx" ON "TradingFees"("groupId");

-- CreateIndex
CREATE INDEX "TradingFees_userGroup_idx" ON "TradingFees"("userGroup");

-- CreateIndex
CREATE UNIQUE INDEX "TradingFees_groupId_userGroup_key" ON "TradingFees"("groupId", "userGroup");

-- AddForeignKey
ALTER TABLE "Deposits" ADD CONSTRAINT "Deposits_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Deposits" ADD CONSTRAINT "Deposits_coinId_fkey" FOREIGN KEY ("coinId") REFERENCES "Coins"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Withdraws" ADD CONSTRAINT "Withdraws_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Withdraws" ADD CONSTRAINT "Withdraws_coinId_fkey" FOREIGN KEY ("coinId") REFERENCES "Coins"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Withdraws" ADD CONSTRAINT "Withdraws_beneficiaryId_fkey" FOREIGN KEY ("beneficiaryId") REFERENCES "Beneficiaries"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Beneficiaries" ADD CONSTRAINT "Beneficiaries_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Beneficiaries" ADD CONSTRAINT "Beneficiaries_coinId_fkey" FOREIGN KEY ("coinId") REFERENCES "Coins"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TradingFees" ADD CONSTRAINT "TradingFees_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "TradingGroup"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
