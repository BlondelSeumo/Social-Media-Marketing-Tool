<?php
namespace Core\Subscriptions\Models;
use CodeIgniter\Model;

class SubscriptionsModel extends Model
{
    public function get_list( $return_data = true )
    {
        $current_page = (int)(post("current_page") - 1);
        $per_page = post("per_page");
        $total_items = post("total_items");
        $keyword = post("keyword");

        $db = \Config\Database::connect();
        $builder = $db->table(TB_PAYMENT_SUBSCRIPTIONS." as a");
        $builder->join(TB_PLANS." as b", "a.plan = b.id", "LEFT");
        $builder->join(TB_USERS." as c", "a.uid = c.id", "LEFT");
        $builder->select('a.*,b.name as plan_name,c.username,c.fullname,c.email,c.avatar');

        if( $keyword ){
            $array = [
                'c.username' => $keyword, 
                'c.fullname' => $keyword, 
                'c.email' => $keyword,
                'b.name' => $keyword,
                'a.subscription_id' => $keyword,
                'a.customer_id' => $keyword,
                'a.type' => $keyword,
            ];
            $builder->orLike($array);
        }
        
        if( !$return_data )
        {
            $result =  $builder->countAllResults();
        }
        else
        {
            $builder->limit($per_page, $per_page*$current_page);
            $query = $builder->get();
            $result = $query->getResult();
            $query->freeResult();
        }
        
        return $result;
    }
}
