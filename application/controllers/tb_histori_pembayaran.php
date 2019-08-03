<?php
$q = intval($_GET['q']);

$con = mysqli_connect('35.186.147.192','dashpro','dashpro123','db_dashboard');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

$sql="SELECT tb_siswa.id_siswa, tb_siswa.NISN, tb_siswa.Nama_Lengkap, tb_siswa.Jenis_Kelamin 
FROM tb_siswa 
INNER JOIN tb_histori_pembayaran ON tb_siswa.id_siswa = tb_histori_pembayaran.id_siswa
INNER JOIN tb_histori_kelas ON tb_siswa.id_siswa = tb_histori_kelas.id_siswa
INNER JOIN mst_tb_tingkat ON tb_histori_pembayaran.id_tingkat = mst_tb_tingkat.id_tingkat 
INNER JOIN mst_tb_sekolah ON tb_histori_pembayaran.id_sekolah = mst_tb_sekolah.id_sekolah
INNER JOIN mst_tb_komponen_biaya ON tb_histori_pembayaran.id_biaya = mst_tb_komponen_biaya.id_biaya AND tb_histori_kelas.id_tingkat = mst_tb_tingkat.id_tingkat
INNER JOIN tb_biaya_sekolah ON tb_biaya_sekolah.id_siswa = tb_siswa.id_siswa AND tb_siswa.id_sekolah = mst_tb_sekolah.id_sekolah AND tb_biaya_sekolah.id_tingkat = mst_tb_tingkat.id_tingkat
INNER JOIN mst_tb_setting_kelas ON mst_tb_setting_kelas.id_kelas = tb_histori_kelas.id_kelas AND mst_tb_setting_kelas.id_tingkat = mst_tb_tingkat.id_tingkat AND mst_tb_setting_kelas.id_sekolah = mst_tb_tingkat.id_sekolah AND mst_tb_komponen_biaya.id_biaya = tb_biaya_sekolah.id_biaya AND mst_tb_komponen_biaya.id_sekolah = mst_tb_sekolah.id_sekolah LIMIT 10
";

$result = mysqli_query($con,$sql);
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['id_siswa'] . "</td>";
    echo "<td>" . $row['NISN'] . "</td>";
    echo "<td>" . $row['Nama_Lengkap'] . "</td>";
    echo "<td>" . $row['Jenis_Kelamin'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>