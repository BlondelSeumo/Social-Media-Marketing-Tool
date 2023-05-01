<?php
namespace Core\Subscriptions\Controllers;

class Subscriptions extends \CodeIgniter\Controller
{
    public function __construct(){
        $this->config = parse_config( include realpath( __DIR__."/../Config.php" ) );
        $this->model = new \Core\Subscriptions\Models\SubscriptionsModel();
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
                "user" =>  __("User"),
                "plan" =>  __("Plan"),
                "subscription_id" => __("Subscription ID"),
                "customer_id" => __("Customer ID"),
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

        $data['content'] = view('Core\Subscriptions\Views\list', $data_content);

        return view('Core\Subscriptions\Views\index', $data);
    }

    public function ajax_list(){
        $total_items = $this->model->get_list(false);
        $result = $this->model->get_list(true);
        $data = [
            "result" => $result
        ];
        ms( [
            "total_items" => $total_items,
            "data" => view('Core\Subscriptions\Views\ajax_list', $data)
        ] );
    }
}