/*
  Warnings:

  - You are about to drop the `anggota` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `anggota` DROP FOREIGN KEY `anggota_kd_tim_fkey`;

-- DropTable
DROP TABLE `anggota`;

-- CreateTable
CREATE TABLE `peserta` (
    `nim` VARCHAR(10) NOT NULL,
    `nama` VARCHAR(50) NOT NULL,
    `posisi` ENUM('Ketua', 'Anggota') NOT NULL,
    `kd_tim` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`nim`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `peserta` ADD CONSTRAINT `peserta_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `tim`(`kd_tim`) ON DELETE RESTRICT ON UPDATE CASCADE;
