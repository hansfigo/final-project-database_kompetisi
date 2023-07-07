/*
  Warnings:

  - You are about to drop the column `kd_ketua` on the `anggota` table. All the data in the column will be lost.
  - You are about to drop the `ketua` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `posisi` to the `anggota` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `anggota` DROP FOREIGN KEY `anggota_kd_ketua_fkey`;

-- DropForeignKey
ALTER TABLE `ketua` DROP FOREIGN KEY `ketua_kd_tim_fkey`;

-- AlterTable
ALTER TABLE `anggota` DROP COLUMN `kd_ketua`,
    ADD COLUMN `posisi` ENUM('Ketua', 'Anggota') NOT NULL;

-- DropTable
DROP TABLE `ketua`;

-- AddForeignKey
ALTER TABLE `tim` ADD CONSTRAINT `tim_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `anggota`(`nim`) ON DELETE RESTRICT ON UPDATE CASCADE;
