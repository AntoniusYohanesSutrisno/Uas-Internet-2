CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(100) NOT NULL,
  `password_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
(1, 'admin', 'admin'),
(2, 'athallah', '123masuk'),
(3, 'aulia', '123masuk'),
(4, 'laras', '123masuk'),
(5, 'yefi', '123masuk');


CREATE TABLE `login` (
  `id_user` int(11) NOT NULL,
  `email_pemesan` varchar(100) NOT NULL,
  `password_pemesan` varchar(100) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `login` (`id_user`, `email_pemesan`, `password_pemesan`, `nama_pemesan`) VALUES
(1, 'coba@email.com', '123masuk', 'coba'),
(2, 'ariana@email.com', 'ariana1', 'Ariana Grande'),
(9, 'taylor@swift.com', 'taylorcantik', 'Taylor Swift'),
(10, 'zainjm@mail.com', '123masuk', 'Zayn Malik'),
(11, 'gghadid@email.com', 'gguhuy', 'Gigi Hadid'),
(12, 'niall@gtg.com', 'niallea', 'Niall Horan'),
(13, 'bieber@j.com', 'jbjerry', 'Justin Bieber'),
(14, 'arianagrande@mail.com', 'Ariana1', 'Ariana Grande'),
(15, 'taylor.swift@email.com', '123masuk', 'Taylor Swift');


CREATE TABLE `mekanik` (
  `id_mekanik` int(11) NOT NULL,
  `nama_mekanik` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`) VALUES
(1, 'Shawn Mendes'),
(2, 'Harry Styles');


CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `jenis_jasa` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `telepon_pemesan` int(15) NOT NULL,
  `alamat_pemesan` varchar(100) NOT NULL,
  `keluhan_pemesan` varchar(500) NOT NULL,
  `biaya_transport` int(11) NOT NULL,
  `biaya_jasa` int(100) NOT NULL,
  `biaya_tambahan` int(100) NOT NULL,
  `total_biaya` int(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `mekanik` varchar(1000) NOT NULL,
  `status_pemesanan` varchar(100) NOT NULL DEFAULT 'Pesanan Diterima'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `pemesanan` (`id_pemesanan`, `jenis_jasa`, `id_user`, `tanggal_pemesanan`, `nama_pemesan`, `telepon_pemesan`, `alamat_pemesan`, `keluhan_pemesan`, `biaya_transport`, `biaya_jasa`, `biaya_tambahan`, `total_biaya`, `keterangan`, `mekanik`, `status_pemesanan`) VALUES
(13, 'Service Mobil', 1, '2021-06-05', 'coba', 2147483647, 'Jl. Mawar No. 28', 'Ban bocor, perlu ditambal', 9000, 20000, 40000, 69000, ' Ganti Ban Dalam', 'Shawn Mendes', 'selesai'),
(14, 'Service Handphone', 13, '2021-06-05', 'Justin Bieber', 2147483647, 'Jl. Imajinasi No 99', 'Hp rusak karena kebanyakan notifikasi, efek orang ganteng', 9000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(15, 'Service Mobil', 13, '2021-06-05', 'Justin Bieber', 2147483647, 'Jl. Imajinasi No. 99', 'Mobil tidak bisa menyala', 9000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(16, 'Service Handphone', 14, '2021-06-07', 'Ariana Grande', 2147483647, 'Jl. Kenangan No 100', 'Rusak layar', 9000, 100000, 50000, 159000, ' Beli layar baru', 'Shawn Mendes', 'selesai'),
(17, 'Service Motor', 15, '2021-06-07', 'Taylor Swift', 2147483647, 'Jl. Raya Apel No 5', 'ban bocor', 10000, 0, 0, 0, '', '', 'Pesanan Diterima'),
(18, 'Service Mobil', 15, '2021-06-07', 'Taylor Swift', 123456789, 'Jl. bunga', 'ban pecah', 9000, 50000, 60000, 119000, ' Ganti Ban', 'Harry Styles', 'selesai');


CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori_produk` varchar(100) NOT NULL,
  `bt_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori_produk`, `bt_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(1, 'Service Printer', 'elektronik', 30000, 'laptop.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(2, 'Service Komputer', 'elektronik', 50000, 'mobil.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(3, 'Service Laptop', 'elektronik', 30000, 'hp.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),
(4, 'Jual Sparepart Printer', 'elektronik', 10000, 'pc.png', 'Melayani servis dengan kerusakan ringan, sedang dan berat.'),


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);


ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);


ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);


ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);


ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);


ALTER TABLE `login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;