<div class="float-right mb-5">
<!--se anade la route de posts_create-->
	<a href="<?php echo route_to( 'posts_create') ?>" class="btn btn-info">
		Crear un nuevo post
	</a>
</div>

<div class="clearfix"></div>

<?php if ($posts): ?>
	<ul class="list-group">
	<?php foreach ($posts as $post): ?>
		<li class="list-group-item">
			<?php echo $post->title ?> | <?php echo $post->createdOn('d-m-Y') ?>
			<span class="float-right">
				<a href="<?php echo route_to('posts_edit', $post->id) ?>" class="btn btn-xs btn-info">
					Editar post
				</a>
				<a href="<?php echo route_to('posts_destroy', $post->id) ?>" class="btn btn-xs btn-danger">
					Eliminar post
				</a>
			</span>
		</li>
	<?php endforeach; ?>
	</ul>
	<br />

	<?= $pager->links() ?>

<?php else: ?>
	<div class="alert alert-danger">
		No hay posts
	</div>
<?php endif; ?>