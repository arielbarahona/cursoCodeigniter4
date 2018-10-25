<?php echo service( 'validation')->listErrors() ?>
<!--abrir formulario-->
<?php echo form_open($route, ['id' => 'post-form']) ?>

	<div class="form-group">
		<?php echo form_label('Título') ?> <br>
		<?php echo form_input([
			'name'  => 'title',
			'id'    => 'title',
			'value' => set_value('title', $post->title ?? ''),
			'class' => 'title form-control'
		]) ?>
	</div>

	<div class="form-group">
		<?php echo form_label('Post') ?> <br>
		<?php echo form_textarea([
			'name'  => 'content',
			'id'    => 'content',
			'value' => set_value('content', $post->content ?? ''),
			'class' => 'content form-control'
		]) ?>
	</div>

	<?php echo form_submit('submit', $actionBtn, [
		'class' => "btn btn-primary btn-lg btn-block"
	]) ?>
<!--cerrar formulario-->
<?php echo form_close() ?>
