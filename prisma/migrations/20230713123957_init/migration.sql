/*
  Warnings:

  - The primary key for the `project` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `kd_project` on the `project` table. All the data in the column will be lost.
  - Added the required column `id` to the `project` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `project` DROP PRIMARY KEY,
    DROP COLUMN `kd_project`,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- CreateTable
CREATE TABLE `juri` (
    `kd_juri` VARCHAR(10) NOT NULL,
    `kd_kategori` VARCHAR(10) NOT NULL,
    `nama` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`kd_juri`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `juri` ADD CONSTRAINT `juri_kd_kategori_fkey` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori`(`kd_kategori`) ON DELETE RESTRICT ON UPDATE CASCADE;
