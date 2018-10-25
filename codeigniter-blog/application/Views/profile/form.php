<div class="card">

	<?php echo service('validation')->listErrors() ?>

	<div class="card-header">
		<h2>Hola <?php echo $user->name ?>!</h2>
		<?php if ($user->picture): ?>
			<img src="<?php echo base_url('uploads/profiles/' . $user->picture) ?>" class="img-responsive" />
		<?php endif; ?>
	</div>

	<div class="card-body">
		<p>Email: <?php echo $user->email ?></p>
		<?php echo form_open_multipart('profile') ?>

			<div class="form-group">
				<?php echo form_label('Password') ?> <br>
				<?php echo form_password([
					'name'  => 'password',
					'id'    => 'password',
					'value' => '',
					'class' => 'password form-control'
				]) ?>
			</div>

			<div class="form-group">
				<?php echo form_label('Imagen de perfil') ?><br />
				<?php echo form_upload([
					'name' => 'picture',
					'id' => 'picture'
				]) ?>
			</div>

			<?php echo form_submit('submit', 'Actualizar perfil!', [
				'class' => "btn btn-primary btn-lg btn-block"
			]) ?>

		<?php echo form_close() ?>
	</div>
</div>