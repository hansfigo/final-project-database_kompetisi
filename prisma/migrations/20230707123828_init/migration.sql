/*
  Warnings:

  - You are about to alter the column `email` on the `akun` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `password` on the `akun` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `nama` on the `anggota` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `nama_tim` on the `tim` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `asal_institusi` on the `tim` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - Added the required column `golongan` to the `kategori` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `akun` MODIFY `email` VARCHAR(50) NOT NULL,
    MODIFY `password` VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE `anggota` MODIFY `nama` VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE `kategori` ADD COLUMN `golongan` ENUM('Mahasiswa', 'Pelajar') NOT NULL;

-- AlterTable
ALTER TABLE `tim` MODIFY `nama_tim` VARCHAR(50) NOT NULL,
    MODIFY `asal_institusi` VARCHAR(50) NOT NULL;
