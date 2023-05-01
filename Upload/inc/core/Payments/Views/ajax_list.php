<?php if ( !empty($result) ): ?>
    
    <?php foreach ($result as $key => $value): ?>
        
        <tr class="item">
            <th scope="row" class="border-bottom ps-4">
                <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                    <input class="form-check-input checkbox-item" type="checkbox" name="ids[]" value="<?php _e( $value->ids )?>">
                </div>
            </th>
            <td class="border-bottom">
                <div class="d-flex align-items-center">
                    <div class="symbol symbol-50px overflow-hidden me-3">
                        <a href="<?php _e( get_module_url('index/update/'.$value->ids) )?>" class="actionItem" data-remove-other-active="true" data-active="bg-light-primary" data-result="html" data-content="main-wrapper" data-history="<?php _e( get_module_url('index/update/'.$value->ids) )?>" data-call-after="Core.calendar();">
                            <div class="symbol-label b-r-10">
                                <img src="<?php _ec( get_file_url($value->avatar) )?>" class="w-100 border b-r-10">
                            </div>
                        </a>
                    </div>
                    <div class="d-flex flex-column">
                        <a href="<?php _e( get_module_url('index/update/'.$value->ids) )?>" class="text-gray-800 text-hover-primary fw-6 actionItem" data-remove-other-active="true" data-active="bg-light-primary" data-result="html" data-content="main-wrapper" data-history="<?php _e( get_module_url('index/update/'.$value->ids) )?>" data-call-after="Core.calendar();"><?php _ec( $value->fullname )?></a>
                        <span class="text-gray-400"><?php _ec( $value->email )?></span>
                    </div>
                </div>
            </td>
            <td class="border-bottom"><?php _ec( $value->plan_name )?></td>
            <td class="border-bottom"><?php _ec( $value->type )?></td>
            <td class="border-bottom"><?php _ec( $value->transaction_id )?></td>
            <td class="border-bottom"><?php _ec( $value->amount )?></td>
            <td class="border-bottom"><?php _ec( $value->by==1?__("Monthly"):__("Annually") )?></td>
            <td class="border-bottom"><?php _e( datetime_show( $value->created ) )?></td>
        </tr>

    <?php endforeach ?>

<?php else: ?>
    <?php if (post("current_page") == 1): ?>
    <tr>
        <td colspan="8" class="border-0">
            <div class="d-flex align-items-center align-self-center h-100 mih-500">
                <div class="w-100 text-center">
                    <div class="text-center px-4">
                        <img class="mh-190 mb-4" alt="" src="<?php _e( get_theme_url() ) ?>Assets/img/empty2.png">
                    </div>
                </div>
            </div>
        </td>
    </tr>
    <?php endif ?>
<?php endif ?>
