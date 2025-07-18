/*
  Warnings:

  - You are about to drop the `GroupTrade` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TradingFees` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "GroupTrade" DROP CONSTRAINT "GroupTrade_groupId_fkey";

-- DropForeignKey
ALTER TABLE "GroupTrade" DROP CONSTRAINT "GroupTrade_userId_fkey";

-- DropForeignKey
ALTER TABLE "TradingFees" DROP CONSTRAINT "TradingFees_groupId_fkey";

-- DropTable
DROP TABLE "GroupTrade";

-- DropTable
DROP TABLE "TradingFees";
