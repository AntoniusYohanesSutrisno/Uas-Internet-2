<?php
session_start();
include "setting/koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HARUN KOMPUTER</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&family=Poppins:wght@300;400;500;600;700;800&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

</head>
<body>
    <!-- Navbar -->

    <?php 
    include 'menu.php';
    ?>

    <div class="wrapper">
        <!-- untuk home-->
        <section id="home">
            <img class="pic" src="img/homeutama.jpg"/>
            <div class="kolom-atas erepair">
                <p class="deskripsi">SERVIS? MAU CARI SPAREPART PRINTER? TINGGAL ORDER AJA!</p>
                <h2>Langsung di...</h2>
                <h2>"HARUN KOMPUTER"</h2>
                
                <p>Punya barang alat elektronik seperti printer dan komputer yang sedang rusak atau sudah tidak terpakai dan ingin memakainya kembali? Bingung ingin memperbaikinya namun tidak mempunyai informasi terkait penyedia? Kita ada solusinya.</p>
                
            </div>
        </section>

        <!-- untuk jenis jasa -->
        <section id="jenisjasa">
            <div class="tengah">
                <div class="kolom">
                    <h2>Jenis Jasa</h2>
                    <p class="deskripsi">Pilih jasa sesuai kebutuhanmu</p>
                    <p>HARUN KOMPUTER menyediakan jasa servis untuk segala macam berbagai merek printer dan komputer.</p>
                </div>

                <div class="jasa-list">
                    <div class="jasa">
                        <img src="img/servisprinter.png"/>
                        <p>Service Printer</p>
                    </div>
                    <div class="jasa">
                        <img src="img/serviskomputer.png"/>
                        <p>Service Komputer</p>
                    </div>
                    <div class="jasa">
                        <img src="img/servislaptop.jpg"/>
                        <p>Service Laptop</p>
                    </div>
                    <div class="jasa">
                        <img src="img/pembeliansperpartprinter.jpg"/>
                        <p>Jual Sparepart Printer</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- untuk order -->
        <section id="order">
            <div class="kolom-bawah reveal">
                <h2>Cari Teknisi Terbaik dengan <span>Cepat</span> dan <span>Mudah</span></h2>
                <p>HARUN KOMPUTER memberi kemudahan dan kecepatan bagi kamu untuk menemukan teknisi yang handal. Tanpa repot, tanpa bingung. Tidak perlu menunggu lebih lama lagi</p>
                <br>
                <a class="tombol" href="jasa.php">Pesan Sekarang<a>
            </div>
            <img src="img/order.jpg"/>
        </section>

        <!-- untuk bantuan -->
        <section id="bantuan">
            <div class="pinggir kolom">
                <div class="head-qa">
                    <h2>MASALAH<h2>
                    <h2>ATAU</h2>
                    <h2>KENDALA</h2>
                    <p>Membantu kalian untuk menjawab semua kendala permasalahan yang ada di aplikasi HARUN KOMPUTER</p>
                </div>
            <div class="form">
            <form>
                <input type="email" placeholder="Email" style="width: 60%; height: 45px; padding-left: 2%; padding-right: 2%;"><br><br>
                <textarea name="message" cols="30" rows="10" placeholder="Message" style="width: 60%; padding-left: 2%; padding-right: 2%;  margin-bottom: 3%"></textarea><br>
            <input type="submit">
            </form>
            </div>
        </section>
    </div>

    <div id="contact">
        <div class="footer-wraper">
            <div class="footer">
                <div class="footer-section">
                    <h3>"HARUN KOMPUTER"</h3>
                    <p>HARUN KOMPUTER merupakan sebuah aplikasi yang menyediakan jasa untuk perbaikan barang elektronik, seperti: printer, laptop, komputer, bahkan jual sparepart printer dan masih ada yang lainnya.</p>
                </div>
                <div class="footer-section">
                    <h3>Contact Person</h3>
                    <p>No. telepon: 0821-7788-3344</p>
                    <p>Facebook   : HarunKomputer </p>
                    <p>Instagram  : @HarunKomputer</p>
                </div>
            </div>
        </div>
    </div>

    
    </div>

    <script src="js/script.js"></script>
</body>
</html>