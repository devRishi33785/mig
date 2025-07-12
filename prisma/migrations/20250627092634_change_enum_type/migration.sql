/*
  Warnings:

  - The values [DEPOSITE,WITHDRAWL,Sell] on the enum `OperationType` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "OperationType_new" AS ENUM ('DEPOSIT', 'WITHDRAW', 'BUY', 'SELL');
ALTER TABLE "UserWalletTransaction" ALTER COLUMN "operations" TYPE "OperationType_new" USING ("operations"::text::"OperationType_new");
ALTER TYPE "OperationType" RENAME TO "OperationType_old";
ALTER TYPE "OperationType_new" RENAME TO "OperationType";
DROP TYPE "OperationType_old";
COMMIT;
