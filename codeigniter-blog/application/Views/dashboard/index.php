<h1 class="text-center"><?php echo $title ?></h1>

<div class="col-4">
	<?php echo view_cell('\App\Libraries\Widgets::recentPosts', ['limit' => 2]) ?>
</div>