/*
  Warnings:

  - The values [COMPLETED] on the enum `Process` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "Process_new" AS ENUM ('PENDING', 'APPROVED', 'NOTREADY', 'REJECTED');
ALTER TABLE "Users" ALTER COLUMN "isVerifid" DROP DEFAULT;
ALTER TABLE "Users" ALTER COLUMN "isVerifid" TYPE "Process_new" USING ("isVerifid"::text::"Process_new");
ALTER TYPE "Process" RENAME TO "Process_old";
ALTER TYPE "Process_new" RENAME TO "Process";
DROP TYPE "Process_old";
ALTER TABLE "Users" ALTER COLUMN "isVerifid" SET DEFAULT 'NOTREADY';
COMMIT;
