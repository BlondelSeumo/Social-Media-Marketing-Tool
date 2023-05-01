<?php
namespace Core\Blog_manager\Controllers;

class Blog_manager extends \CodeIgniter\Controller
{
    public function __construct(){
        $this->config = parse_config( include realpath( __DIR__."/../Config.php" ) );
        $this->class_name = get_class_name($this);
        $this->model = new \Core\Blog_manager\Models\Blog_managerModel();
    }
    
    public function index( $page = false ) {
        $data = [
            "title" => $this->config['name'],
            "desc" => $this->config['desc'],
        ];

        switch ( $page ) {
            case 'update':
                $item = false;
                $ids = uri('segment', 4);
                if( $ids ){
                    $item = db_get("*", TB_BLOGS, [ "ids" => $ids ]);
                }

                $data['content'] = view('Core\Blog_manager\Views\update', ["result" => $item]);
                break;

            default:
                $total = $this->model->get_list(false);

                $datatable = [
                    "total_items" => $total,
                    "per_page" => 30,
                    "current_page" => 1,

                ];

                $data_content = [
                    'total' => $total,
                    'datatable'  => $datatable,
                    'config'  => $this->config,
                ];

                $data['content'] = view('Core\Blog_manager\Views\list', $data_content);
                break;
        }

        return view('Core\Blog_manager\Views\index', $data);
    }

    public function ajax_list(){
        $total_items = $this->model->get_list(false);
        $result = $this->model->get_list(true);
        $data = [
            "result" => $result,
            "config" => $this->config
        ];
        ms( [
            "total_items" => $total_items,
            "data" => view('Core\Blog_manager\Views\ajax_list', $data)
        ] );
    }

    public function save( $ids = "" ){
        $status = (int)post("status");
        $title = post("title");
        $desc = post("desc");
        $tags = post("tags");
        $content = post("content");
        $img = post("img");
        $item = false;

        if ($ids != "") {
            $item = db_get("*", TB_BLOGS, ["ids" => $ids]);
        }

        if (!$this->validate([
            'title' => 'required'
        ])) {
            ms([
                "status" => "error",
                "message" => __("Title is required")
            ]);
        }

        if (!$this->validate([
            'desc' => 'required'
        ])) {
            ms([
                "status" => "error",
                "message" => __("Description is required")
            ]);
        }

        if (!$this->validate([
            'content' => 'required'
        ])) {
            ms([
                "status" => "error",
                "message" => __("Content is required")
            ]);
        }

        if (!$this->validate([
            'img' => 'required'
        ])) {
            ms([
                "status" => "error",
                "message" => __("Image is required")
            ]);
        }

        $data = [
            "title" => $title,
            "desc" => $desc,
            "tags" => $tags,
            "content" => $content,
            "img" => $img,
            "status" => $status,
            "changed" => time(),
        ];

        if( empty($item) ){
            $data['status'] = $status;
            $data['ids'] = ids();
            $data['created'] = time();

            db_insert(TB_BLOGS, $data);
        }else{
            db_update(TB_BLOGS, $data, [ "id" => $item->id ]);
        }

        ms([
            "status" => "success",
            "message" => __('Success')
        ]);
    }

    public function delete( $ids = '' ){
        if($ids == ''){
            $ids = post('id');
        }

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
                db_delete(TB_BLOGS, ['ids' => $id]);
            }
        }
        elseif( is_string($ids) )
        {
            db_delete(TB_BLOGS, ['ids' => $ids]);
        }

        ms([
            "status" => "success",
            "message" => __('Success')
        ]);
    }
}