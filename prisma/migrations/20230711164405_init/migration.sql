/*
  Warnings:

  - The primary key for the `project` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `project` table. All the data in the column will be lost.
  - You are about to drop the `juri` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `kd_project` to the `project` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `juri` DROP FOREIGN KEY `juri_kd_kategori_fkey`;

-- AlterTable
ALTER TABLE `project` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `kd_project` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`kd_project`);

-- DropTable
DROP TABLE `juri`;
