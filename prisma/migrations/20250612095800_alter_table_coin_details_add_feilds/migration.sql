/*
  Warnings:

  - You are about to drop the column `decimals` on the `CoinDetails` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "CoinDetails" DROP COLUMN "decimals",
ADD COLUMN     "assetPlatformId" TEXT,
ADD COLUMN     "blockCainSites" TEXT,
ADD COLUMN     "categories" TEXT[],
ADD COLUMN     "descripionId" TEXT,
ADD COLUMN     "imageUrl" TEXT,
ADD COLUMN     "platformContractAddress" TEXT,
ADD COLUMN     "platformDecimals" TEXT;
