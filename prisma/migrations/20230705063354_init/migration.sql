-- CreateTable
CREATE TABLE `tim` (
    `kd_tim` VARCHAR(4) NOT NULL,
    `nama_tim` VARCHAR(191) NOT NULL,
    `asal_institusi` VARCHAR(191) NOT NULL,
    `kd_kategori` VARCHAR(191) NOT NULL,
    `kd_akun` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`kd_tim`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ketua` (
    `kd_ketua` VARCHAR(191) NOT NULL,
    `nim` VARCHAR(191) NOT NULL,
    `nama` VARCHAR(191) NOT NULL,
    `no_wa` VARCHAR(191) NOT NULL,
    `kd_tim` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`kd_ketua`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `anggota` (
    `nim` VARCHAR(191) NOT NULL,
    `nama` VARCHAR(191) NOT NULL,
    `kd_ketua` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`nim`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `akun` (
    `kd_akun` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `passowrd` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`kd_akun`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kategori` (
    `kd_kategori` VARCHAR(191) NOT NULL,
    `kategori` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`kd_kategori`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tim` ADD CONSTRAINT `tim_kd_kategori_fkey` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori`(`kd_kategori`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tim` ADD CONSTRAINT `tim_kd_akun_fkey` FOREIGN KEY (`kd_akun`) REFERENCES `akun`(`kd_akun`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ketua` ADD CONSTRAINT `ketua_kd_tim_fkey` FOREIGN KEY (`kd_tim`) REFERENCES `tim`(`kd_tim`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `anggota` ADD CONSTRAINT `anggota_kd_ketua_fkey` FOREIGN KEY (`kd_ketua`) REFERENCES `ketua`(`kd_ketua`) ON DELETE RESTRICT ON UPDATE CASCADE;
