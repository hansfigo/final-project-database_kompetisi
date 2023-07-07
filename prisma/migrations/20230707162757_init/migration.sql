/*
  Warnings:

  - You are about to drop the column `kd_akun` on the `tim` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `tim_kd_akun_fkey` ON `tim`;

-- AlterTable
ALTER TABLE `tim` DROP COLUMN `kd_akun`;
