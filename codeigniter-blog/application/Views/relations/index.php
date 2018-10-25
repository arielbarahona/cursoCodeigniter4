<div class="card">

	<div class="card-header">
		<h2><?php echo $title ?></h2>
	</div>

	<div class="card-body">
		<ul class="list-group">
			<?php foreach ($userWithPosts as $post): ?>
				<li class="list-group-item">
					<?php echo $post->title ?><br />
					<?php echo $post->content ?>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>

</div>