<div class="card">
	<div class="card-header">
		Ajax
	</div>
	<div class="card-body">
		<h5 class="card-title"><?php echo $title ?></h5>
		<p class="card-text">

		</p>
		<button id="loadAjax" class="btn btn-primary">Hacer petición ajax</button>
	</div>
</div>

<!--Utilizando AAJAX--->
<script>
	jQuery(document).ready(function () {
	    $("#loadAjax").on('click', function () {
	        $.ajax({
		        url: '<?php echo route_to( 'load_posts_with_ajax') ?>',
		        type: 'POST', //puede ser un GET pero devolveria un 404
		        data: {
                    //Filters
		            '<?php echo csrf_token() ?>': '<?php echo csrf_hash() ?>'
		        },
		        success: function (data) {
		            if (data.length) {
		                let html = '<ul class="list-group">';
		                data.map(post => {
		                    html += `<li class="list-group-item">${post.id} | ${post.title} | ${post.content}</li>`;
		                })
		                html += '</ul>';
		                $(".card-text").html(html);
		            }
		        }
	        })
	    })
	});
</script>