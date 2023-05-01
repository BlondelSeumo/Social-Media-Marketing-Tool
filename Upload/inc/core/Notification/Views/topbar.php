<?php if (get_option("beamer_status", 0)==1 && get_option("beamer_product_id", "") != ""): ?>
<div class="d-flex align-items-stretch ms-1">
    <div class="d-flex align-items-center">
        <div class="btn btn-icon text-danger b-r-30 position-relative" id="beamer-notification">
            <div class="b-r-30 bg-light-danger  position-absolute animate__animated animate__zoomIn animate__infinite w-40 h-40"></div>
            <i class="fad fa-bell"></i>
        </div>
    </div>
</div>
<script>
    var beamer_config = {
        product_id : '<?php _e( get_option("beamer_product_id", "") )?>'
    };
</script>
<script type="text/javascript" src="https://app.getbeamer.com/js/beamer-embed.js" defer="defer"></script>
<?php endif ?>