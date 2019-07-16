<?php $sha = 1 ?>
<form action="" method="POST">
    <input type="text" name="sha"/>
    <input type="submit"/>
</form>

<form action="" method="POST">
    <input type="text" name="tanggal"/>
    <input type="submit"/>
</form>

<?php echo $_POST['tanggal'] ?><br/><br/>
<?php echo date('d F Y', strtotime($_POST['tanggal'])); ?>

<?php echo sha1($_POST['sha']); ?>
<?php $sh = $_POST['sha']; ?><br/><br/>
<?php echo $sh ?>