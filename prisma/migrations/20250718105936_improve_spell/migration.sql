/*
  Warnings:

  - You are about to drop the column `descripionId` on the `CoinDetails` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "CoinDetails" DROP COLUMN "descripionId",
ADD COLUMN     "descriptionId" TEXT;
