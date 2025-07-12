/*
Warnings:

- A unique constraint covering the columns `[symbol]` on the table `Coins` will be added. If there are existing duplicate values, this will fail.
- Added the required column `coinId` to the `UserWallet` table without a default value. This is not possible if the table is not empty.

 */
-- CreateEnum
CREATE TYPE "OperationType" AS ENUM ('DEPOSITE', 'WITHDRAWL', 'BUY', 'Sell');

-- AlterTable
ALTER TABLE "UserWallet"
ADD COLUMN "coinId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE
  "UserWalletTransaction" (
    "id" TEXT NOT NULL,
    "walletId" TEXT NOT NULL,
    "operations" "OperationType" NOT NULL,
    "isAddition" BOOLEAN NOT NULL,
    "value" DOUBLE PRECISION NOT NULL,
    "signedValue" DECIMAL(65, 30) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "deletedAt" TIMESTAMP(3),
    CONSTRAINT "UserWalletTransaction_pkey" PRIMARY KEY ("id")
  );

-- AddForeignKey
ALTER TABLE "UserWallet" ADD CONSTRAINT "UserWallet_coinId_fkey" FOREIGN KEY ("coinId") REFERENCES "Coins" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserWalletTransaction" ADD CONSTRAINT "UserWalletTransaction_walletId_fkey" FOREIGN KEY ("walletId") REFERENCES "UserWallet" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;