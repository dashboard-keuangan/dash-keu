<form action="" method="POST">
    <input type="text" name="sha"/>
    <input type="submit"/>
</form>

<input type="text" value="<?php echo sha1($_POST['sha']); ?>"/>