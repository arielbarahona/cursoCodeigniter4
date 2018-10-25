<div class="row">
    <div class="col-6 offset-3">
        <h1 class="text-center">Registro con Codeigniter 4</h1>
        <!--aqui empieza el formulario-->
        <?php echo service('validation')->listErrors() ?>
        <!--Formulario-->
        <?php echo form_open('register', ['id' => 'register-form', 'autocomplete' => 'off']) ?>
            <!--label del nombre-->
            <div class="form-group">
                <?php echo form_label('Nombre', 'name') ?>
                <?php echo form_input([
                    'type' => 'text',
                    'name' => 'name',
                    'id' => 'name',
                    'value' => set_value('name', ''),
                    'class' => 'form-control'
                ]) ?>
            </div>

            <!--label del email-->
            <div class="form-group">
                <?php echo form_label('Email', 'email') ?>
                <?php echo form_input([
                    'type' => 'email',
                    'name' => 'email',
                    'id' => 'email',
                    'value' => set_value('email', ''),
                    'class' => 'form-control'
                ]) ?>
            </div>
            
            <!--label de la contrase;a-->
            <div class="form-group">
                <?php echo form_label('Password', 'password') ?>
                <?php echo form_password([
                    'name' => 'password',
                    'id' => 'password',
                    'class' => 'form-control'
                ]) ?>
            </div>

            <!--label de conformar la contrase;a-->
            <div class="form-group">
                <?php echo form_label('Confirma el password', 'password_confirmation') ?>
                <?php echo form_password([
                    'name' => 'password_confirmation',
                    'id' => 'password_confirmation',
                    'class' => 'form-control'
                ]) ?>
            </div>
            
            <!--Boton del formulario-->
            <?php echo form_submit('submit', 'Regístrate', ['class' => 'btn btn-primary btn-block']) ?>
        <!--Cerrar el formulario-->
        <?php echo form_close() ?>
    </div>
</div>