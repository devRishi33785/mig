/*
  Warnings:

  - You are about to drop the column `isVerifid` on the `Users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Users" DROP COLUMN "isVerifid",
ADD COLUMN     "isVerified" "Process" NOT NULL DEFAULT 'NOTREADY';
