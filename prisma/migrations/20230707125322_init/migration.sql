-- CreateTable
CREATE TABLE `juri` (
    `kd_juri` VARCHAR(10) NOT NULL,
    `kd_kategori` VARCHAR(10) NOT NULL,
    `nama` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`kd_juri`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `juri` ADD CONSTRAINT `juri_kd_kategori_fkey` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori`(`kd_kategori`) ON DELETE RESTRICT ON UPDATE CASCADE;
