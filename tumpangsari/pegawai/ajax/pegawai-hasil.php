<?php
require '../../functions.php';


$jumlahdataperhalaman = 3;
$jumlahdata = count(query("SELECT * FROM pegawai"));
$jumlahhalaman = ceil($jumlahdata / $jumlahdataperhalaman);
$halamanaktif = ( isset($_GET["halaman"]) ) ? $_GET["halaman"] : 1;
$awaldata = ( $jumlahdataperhalaman * $halamanaktif ) - $jumlahdataperhalaman;


$pegawai = query("SELECT * FROM pegawai LIMIT $awaldata, $jumlahdataperhalaman");

if(isset($_POST["keyword"]) )  {
    $pegawai = cari($_POST["keyword"]);
} 
?>

<?php if($pegawai != NULL){ 
                        $i=1;
                        foreach($pegawai as $row){?>
                            <tr>
                                <th><?=$i;?></th>
                                <th><?=$row['nama'];?></th>
                                <th><?=$row['email'];?></th>
                                <th><?=$row['alamat']?></th>
                                <th> 
                                    <button type="button" class="btn btn-link">
                                        <a href="pegawai/hapus.php?id=<?= $row["id"]; ?>"]>Hapus</a>
                                    </button>
                                </th>
                            </tr>
                    <?php $i++; }
                    }?>