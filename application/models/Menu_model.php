<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{
    public function getSubMenu()
    {
        $query = "SELECT `user_sub_menu`.*, `user_menu`.`menu`
                FROM `user_sub_menu` JOIN `user_menu`
                ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
        
        ";
        return $this->db->query($query)->result_array();
    }

    public function findSub($sub)
    {
        $query = " SELECT `user_menu`.* 
                  FROM `user_sub_menu`, `user_menu`
                  WHERE (
                      SELECT `user_sub_menu`.`menu_id` 
                      FROM `user_sub_menu` 
                      WHERE `user_sub_menu`.`title` LIKE \"$sub\"
                  ) = `user_menu`.`id`       
        ";
        return $this->db->query($query)->row_array();
    }
    public function hapusSubMenu($title)
    {
        $this->db->where('title', $title);
        $this->db->delete('user_sub_menu');
    }
}