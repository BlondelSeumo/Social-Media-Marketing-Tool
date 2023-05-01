<div class="container my-5">
    <div class="card card-flush mb-4">
        <div class="card-header mt-6">
            <div class="card-title flex-column">
                <h3 class="fw-bolder"><i class="<?php _ec( $config['icon'] )?>" style="color: <?php _ec( $config['color'] )?>;"></i> <?php _e( "Beamer notification" )?></h3>
            </div>
        </div>
        <div class="card-body">
            <div class="alert alert-primary">
                <span class="fw-6"><?php _e("Get Beamer product id at here:")?></span> 
                <a href="https://www.getbeamer.com/" target="_blank">https://www.getbeamer.com/</a> 
                <br/>
                <span class="fw-6"><?php _e("Important:")?></span>
                <span class="e"><?php _e('Set field HTML SELECTOR is beamer-notification at here:')?> <a href="https://app.getbeamer.com/settings">https://app.getbeamer.com/settings</a></span>
            </div>
            <div class="mb-4">
                <label for="beamer_status" class="form-label"><?php _e('Status')?></label>
                <div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="beamer_status" <?php _e( get_option("beamer_status", 0)==1?"checked='true'":"" )?> id="beamer_status_enable" value="1">
                        <label class="form-check-label" for="beamer_status_enable"><?php _e('Enable')?></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="beamer_status" <?php _e( get_option("beamer_status", 0)==0?"checked='true'":"" )?> id="beamer_status_disable" value="0">
                        <label class="form-check-label" for="beamer_status_disable"><?php _e('Disable')?></label>
                    </div>
                </div>
            </div>
            <div class="mb-4">
                <label for="beamer_product_id" class="form-label"><?php _e('Beamer product id')?></label>
                <input type="text" class="form-control form-control-solid" id="beamer_product_id" name="beamer_product_id" value="<?php _ec( get_option("beamer_product_id", "") )?>">
            </div>
        </div>
    </div>

    <div class="card card-flush mb-4">
        <div class="card-header mt-6">
            <div class="card-title flex-column">
                <h3 class="fw-bolder"><i class="<?php _ec( $config['icon'] )?>" style="color: <?php _ec( $config['color'] )?>;"></i> <?php _e( "Backend - Popup notification")?></h3>
            </div>
        </div>
        <div class="card-body">
            <div class="mb-4">
                <label class="form-label"><?php _e('Status')?></label>
                <div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="poupup_nofification_backend_status" <?php _e( get_option("poupup_nofification_backend_status", 0)==1?"checked='true'":"" )?> id="poupup_nofification_backend_status_enable" value="1">
                        <label class="form-check-label" for="poupup_nofification_backend_status_enable"><?php _e('Enable')?></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="poupup_nofification_backend_status" <?php _e( get_option("poupup_nofification_backend_status", 0)==0?"checked='true'":"" )?> id="poupup_nofification_backend_status_disable" value="0">
                        <label class="form-check-label" for="beamer_status_disable"><?php _e('Disable')?></label>
                    </div>
                </div>
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_id_backend" class="form-label"><?php _e('Poupup ID')?></label>
                <input type="text" class="form-control form-control-solid" id="poupup_nofification_id_backend" name="poupup_nofification_id_backend" value="<?php _ec( get_option("poupup_nofification_id_backend", ids()) )?>">
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_repeat_backend" class="form-label"><?php _e('Display again (minute)')?></label>
                <input type="text" class="form-control form-control-solid" id="poupup_nofification_repeat_backend" name="poupup_nofification_repeat_backend" value="<?php _ec( get_option("poupup_nofification_repeat_backend", "60") )?>">
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_backend" class="form-label"><?php _e('Content')?></label>
                <div class="mb-4">
                    <textarea class="mh-600 w-100 poupup_nofification_backend" name="poupup_nofification_backend" rows="4"><?php _ec( get_option("poupup_nofification_backend", "") )?></textarea>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-flush mb-4">
        <div class="card-header mt-6">
            <div class="card-title flex-column">
                <h3 class="fw-bolder"><i class="<?php _ec( $config['icon'] )?>" style="color: <?php _ec( $config['color'] )?>;"></i> <?php _e( "Frontend - Popup notification")?></h3>
            </div>
        </div>
        <div class="card-body">
            <div class="mb-4">
                <label class="form-label"><?php _e('Status')?></label>
                <div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="poupup_nofification_frontend_status" <?php _e( get_option("poupup_nofification_frontend_status", 0)==1?"checked='true'":"" )?> id="poupup_nofification_frontend_status_enable" value="1">
                        <label class="form-check-label" for="poupup_nofification_frontend_status_enable"><?php _e('Enable')?></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="poupup_nofification_frontend_status" <?php _e( get_option("poupup_nofification_frontend_status", 0)==0?"checked='true'":"" )?> id="poupup_nofification_frontend_status_disable" value="0">
                        <label class="form-check-label" for="beamer_status_disable"><?php _e('Disable')?></label>
                    </div>
                </div>
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_id_frontend" class="form-label"><?php _e('Poupup ID')?></label>
                <input type="text" class="form-control form-control-solid" id="poupup_nofification_id_frontend" name="poupup_nofification_id_frontend" value="<?php _ec( get_option("poupup_nofification_id_frontend", ids()) )?>">
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_repeat_frontend" class="form-label"><?php _e('Display again (minute)')?></label>
                <input type="text" class="form-control form-control-solid" id="poupup_nofification_repeat_frontend" name="poupup_nofification_repeat_frontend" value="<?php _ec( get_option("poupup_nofification_repeat_frontend", "60") )?>">
            </div>
            <div class="mb-4">
                <label for="poupup_nofification_frontend" class="form-label"><?php _e('Content')?></label>
                <div class="mb-4">
                    <textarea class="mh-600 w-100 poupup_nofification_frontend" name="poupup_nofification_frontend" rows="4"><?php _ec( get_option("poupup_nofification_frontend", "") )?></textarea>
                </div>
            </div>
        </div>
    </div>
        
    <div class="m-t-25">
        <button type="submit" class="btn btn-primary"><?php _e('Save')?></button>
    </div>
</div>

<script type="text/javascript">
$(function(){
    Core.ckeditor("poupup_nofification_backend");
    Core.ckeditor("poupup_nofification_frontend");
});
</script>