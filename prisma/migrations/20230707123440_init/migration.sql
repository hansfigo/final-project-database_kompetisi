/*
  Warnings:

  - Added the required column `kd_tim` to the `anggota` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `tim` DROP FOREIGN KEY `tim_kd_tim_fkey`;

-- AlterTable
ALTER TABLE `anggota` ADD COLUMN `kd_tim` VARCHAR(10) NOT NULL;

-- AddForeignKey
ALTER TABLE `anggota` ADD CONSTRAINT `anggota_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `tim`(`kd_tim`) ON DELETE RESTRICT ON UPDATE CASCADE;
