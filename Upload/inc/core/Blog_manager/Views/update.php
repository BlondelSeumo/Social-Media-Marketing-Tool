<div class="container my-5">
	<form class="actionForm" action="<?php _ec( get_module_url("save/".uri("segment", 4)) )?>" method="POST" data-redirect="<?php _ec( get_module_url() )?>">
		<div class="card m-b-25 mw-800 m-auto">
		    <div class="card-header">
		        <div class="card-title flex-column">
		            <h3 class="fw-bolder"><i class="fad fa-edit"></i> <?php _e("Update")?></h3>
		        </div>
		    </div>
		    <div class="card-body">
		        <div class="row">
		        	<div class="col-md-8">
		        		<div class="mb-4">
		                    <label class="form-label"><?php _e("Status")?></label>
		                    <div>
		                        <div class="form-check form-check-inline">
		                            <input class="form-check-input" type="radio" name="status" <?php _ec( (get_data($result, "status") == 1 || get_data($result, "status") == "")?"checked='true'":"" ) ?> id="status_enable" value="1">
		                            <label class="form-check-label" for="status_enable"><?php _e('Enable')?></label>
		                        </div>
		                        <div class="form-check form-check-inline">
		                            <input class="form-check-input" type="radio" name="status" <?php _ec( (get_data($result, "status") == 0 )?"checked='true'":"" ) ?> id="status_disable" value="0">
		                            <label class="form-check-label" for="status_disable"><?php _e('Disable')?></label>
		                        </div>
		                    </div>
		                </div>
		        		<div class="mb-3">
				            <label for="title" class="form-label"><?php _e("Title")?></label>
				            <input type="text" class="form-control form-control-solid" id="title" name="title" value="<?php _ec( get_data($result, "title") )?>">
				        </div>
				        <div class="mb-3">
				            <label for="desc" class="form-label"><?php _e("Description")?></label>
				            <textarea class="h-125 form-control form-control-solid input-editor" id="desc" name="desc"><?php _ec( get_data($result, "desc") )?></textarea>
				        </div>
				        <div class="mb-3">
					        <div class="tags">
					            <label for="tags" class="form-label"><?php _e("Tags")?></label>
					            <input type="text" class="form-control form-control-solid" data-role="tagsinput" id="tags" name="tags" value="<?php _ec( get_data($result, "tags") )?>">
					        </div>
					    </div>
		        	</div>
		        	<div class="col-md-4">
		        		<div class="mb-0">
				        	<label for="desc" class="form-label"><?php _e("Thumbnail")?></label>
				        </div>
				        <div class="mb-3 border p-20 d-inline-block rounded">
				        	<?php if ( get_data($result, "img") == "" ): ?>
				        		<img src="<?php _ec( get_module_path( __DIR__, "Assets/img/default.jpg" ) )?>" class="img-thumbnail blog_thumbnail mw-100 mb-3">
				        		<input type="text" name="img" id="blog_thumbnail" class="form-control form-control-solid d-none" placeholder="<?php _e("Select file")?>">
				        	<?php else: ?>
				        		<img src="<?php _ec( get_data($result, "img") )?>" class="img-thumbnail blog_thumbnail mw-100 mb-3">
				        		<input type="text" name="img" id="blog_thumbnail" class="form-control form-control-solid d-none" placeholder="<?php _e("Select file")?>" value="<?php _ec( get_data($result, "img") )?>">
				        	<?php endif ?>
			                <div class="input-group w-100 ">
			                    <button type="button" class="btn btn-light-primary btn-sm btnOpenFileManager w-100" data-select-multi="0" data-type="image" data-id="blog_thumbnail">
			                        <i class="fad fa-folder-open p-r-0"></i> <?php _e( "Select" )?>
			                    </button>
			                </div>
			            </div>
		        	</div>

		        	<div class="mb-3">
			            <label for="content" class="form-label"><?php _e("Content")?></label>
			            <textarea class="form-control ckeditor" name="content"><?php _ec( get_data($result, "content") )?></textarea>
			        </div>
		        </div>
		        
		    </div>
		    <div class="card-footer d-flex justify-content-between">
		    	<a href="<?php _ec( get_module_url() )?>" class="btn btn-secondary"><?php _e("Back")?></a>
		    	<button type="submit" class="btn btn-primary"><?php _e("Save")?></button>
		    </div>
		</div>
	</form>
</div>
