-- CreateEnum
CREATE TYPE "Process" AS ENUM ('PENDING', 'COMPLETED');

-- AlterTable
ALTER TABLE "Users" ADD COLUMN     "isVerifid" "Process" NOT NULL DEFAULT 'PENDING';
