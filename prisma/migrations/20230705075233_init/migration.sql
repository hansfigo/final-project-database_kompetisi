/*
  Warnings:

  - The primary key for the `akun` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `kd_akun` on the `akun` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - The primary key for the `anggota` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `nim` on the `anggota` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `kd_ketua` on the `anggota` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - The primary key for the `kategori` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `kd_kategori` on the `kategori` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - The primary key for the `ketua` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `kd_ketua` on the `ketua` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `nim` on the `ketua` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `kd_tim` on the `ketua` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - The primary key for the `tim` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `kd_kategori` on the `tim` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `kd_akun` on the `tim` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.

*/
-- DropForeignKey
ALTER TABLE `anggota` DROP FOREIGN KEY `anggota_kd_ketua_fkey`;

-- DropForeignKey
ALTER TABLE `ketua` DROP FOREIGN KEY `ketua_kd_tim_fkey`;

-- DropForeignKey
ALTER TABLE `tim` DROP FOREIGN KEY `tim_kd_akun_fkey`;

-- DropForeignKey
ALTER TABLE `tim` DROP FOREIGN KEY `tim_kd_kategori_fkey`;

-- AlterTable
ALTER TABLE `akun` DROP PRIMARY KEY,
    MODIFY `kd_akun` VARCHAR(10) NOT NULL,
    ADD PRIMARY KEY (`kd_akun`);

-- AlterTable
ALTER TABLE `anggota` DROP PRIMARY KEY,
    MODIFY `nim` VARCHAR(10) NOT NULL,
    MODIFY `kd_ketua` VARCHAR(10) NOT NULL,
    ADD PRIMARY KEY (`nim`);

-- AlterTable
ALTER TABLE `kategori` DROP PRIMARY KEY,
    MODIFY `kd_kategori` VARCHAR(10) NOT NULL,
    ADD PRIMARY KEY (`kd_kategori`);

-- AlterTable
ALTER TABLE `ketua` DROP PRIMARY KEY,
    MODIFY `kd_ketua` VARCHAR(10) NOT NULL,
    MODIFY `nim` VARCHAR(10) NOT NULL,
    MODIFY `kd_tim` VARCHAR(10) NOT NULL,
    ADD PRIMARY KEY (`kd_ketua`);

-- AlterTable
ALTER TABLE `tim` DROP PRIMARY KEY,
    MODIFY `kd_tim` VARCHAR(10) NOT NULL,
    MODIFY `kd_kategori` VARCHAR(10) NOT NULL,
    MODIFY `kd_akun` VARCHAR(10) NOT NULL,
    ADD PRIMARY KEY (`kd_tim`);

-- AddForeignKey
ALTER TABLE `tim` ADD CONSTRAINT `tim_kd_kategori_fkey` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori`(`kd_kategori`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tim` ADD CONSTRAINT `tim_kd_akun_fkey` FOREIGN KEY (`kd_akun`) REFERENCES `akun`(`kd_akun`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ketua` ADD CONSTRAINT `ketua_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `tim`(`kd_tim`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `anggota` ADD CONSTRAINT `anggota_kd_ketua_fkey` FOREIGN KEY (`kd_ketua`) REFERENCES `ketua`(`kd_ketua`) ON DELETE RESTRICT ON UPDATE CASCADE;
