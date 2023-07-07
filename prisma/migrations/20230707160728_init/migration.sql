/*
  Warnings:

  - You are about to drop the `akun` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `email` to the `tim` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `tim` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `tim` DROP FOREIGN KEY `tim_kd_akun_fkey`;

-- AlterTable
ALTER TABLE `tim` ADD COLUMN `email` VARCHAR(50) NOT NULL,
    ADD COLUMN `password` VARCHAR(50) NOT NULL;

-- DropTable
DROP TABLE `akun`;

-- CreateTable
CREATE TABLE `project` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(50) NOT NULL,
    `deskripsi` VARCHAR(255) NULL,
    `kd_tim` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `project` ADD CONSTRAINT `project_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `tim`(`kd_tim`) ON DELETE RESTRICT ON UPDATE CASCADE;
