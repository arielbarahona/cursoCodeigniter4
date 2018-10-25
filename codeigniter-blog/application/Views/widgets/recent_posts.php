<div class="card">

	<div class="card-header">
		<h2>Widget de Posts</h2>
	</div>

	<div class="card-body">
		<ul class="list-group">
			<?php foreach ($posts as $post): ?>
				<li class="list-group-item"><?php echo $post->title ?></li>
			<?php endforeach; ?>
		</ul>
	</div>

</div>