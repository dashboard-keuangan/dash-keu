<?php $sha = 1 ?>
<form action="" method="POST">
    <input type="text" name="sha"/>
    <input type="submit"/>
</form>

<?php echo sha1($_POST['sha']); ?>
<?php $sh = $_POST['sha']; ?><br/><br/>
<?php echo $sh ?>