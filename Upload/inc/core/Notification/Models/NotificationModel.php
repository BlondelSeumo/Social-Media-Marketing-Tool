<?php
namespace Core\Notification\Models;
use CodeIgniter\Model;

class NotificationModel extends Model
{
	public function __construct(){
        $this->config = parse_config( include realpath( __DIR__."/../Config.php" ) );
    }

    public function block_topbar($path = ""){
        return array(
            "position" => 9000,
            "topbar" => view( 'Core\Notification\Views\topbar', [ 'config' => $this->config ] )
        );
    }

    public function block_settings($path = ""){
        return array(
            "position" => 9300,
            "menu" => view( 'Core\Notification\Views\settings\menu', [ 'config' => $this->config ] ),
            "content" => view( 'Core\Notification\Views\settings\content', [ 'config' => $this->config ] )
        );
    }

    public function add_script_to_footer(){
        return view( 'Core\Notification\Views\add_script_to_footer', [ 'config' => $this->config ] );
    }
}
