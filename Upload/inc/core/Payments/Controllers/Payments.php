<?php
namespace Core\Payments\Controllers;

class Payments extends \CodeIgniter\Controller
{
    public function __construct(){
        $this->config = parse_config( include realpath( __DIR__."/../Config.php" ) );
        $this->model = new \Core\Payments\Models\PaymentsModel();
    }
    
    public function index( $page = false ) {
        $start = 0;
        $limit = 1;

        $data = [
            "title" => $this->config['menu']['sub_menu']['name'],
            "desc" => $this->config['desc'],
        ];

        $pager = \Config\Services::pager();
        $total = $this->model->get_list(false);

        $datatable = [
            "responsive" => true,
            "columns" => [
                "id" => __("ID"),
                "user" => __("User"),
                "plan" => __("Plan"),
                "type" => __("Type"),
                "transaction_id" => __("Transaction ID"),
                "amount" => __("Amount"),
                "by" => __("By"),
                "created" => __("Created"),
            ],
            "total_items" => $total,
            "per_page" => 50,
            "current_page" => 1,

        ];
        
        $data_content = [
            'start' => $start,
            'limit' => $limit,
            'total' => $total,
            'pager' => $pager,
            'datatable'  => $datatable,
            'config' => $this->config
        ];

        $data['content'] = view('Core\Payments\Views\list', $data_content);

        return view('Core\Payments\Views\index', $data);
    }

    public function ajax_list(){
        $total_items = $this->model->get_list(false);
        $result = $this->model->get_list(true);
        $data = [
            "result" => $result
        ];
        ms( [
            "total_items" => $total_items,
            "data" => view('Core\Payments\Views\ajax_list', $data)
        ] );
    }

    public function delete(){
        $ids = post('ids');

        if( empty($ids) ){
            ms([
                "status" => "error",
                "message" => __('Please select an item to delete')
            ]);
        }

        if( is_array($ids) )
        {
            foreach ($ids as $id) 
            {
                db_delete(TB_PAYMENT_HISTORY, ['ids' => $id]);
            }
        }
        elseif( is_string($ids) )
        {
            db_delete(TB_PAYMENT_HISTORY, ['ids' => $ids]);
        }

        ms([
            "status" => "success",
            "message" => __('Success')
        ]);
    }
}