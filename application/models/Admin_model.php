<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{

    public function allUser()
    {
        return $this->db->get('user')->result_array();
    }
    public function allAdmin()
    {
        return $this->db->get('admin')->result_array();
    }

    public function getUser($id)
    {
        return $this->db->get_where('user', ['id' => $id])->row_array();
    }
    public function getCalon()
    {
        return $this->db->get('calon')->result_array();
    }

    public function getCalonFakultas($fakultas)
    {
        $this->db->like('fakultasketua',$fakultas);
        $this->db->like('fakultaswakil',$fakultas);
        return $this->db->get('calon')->result_array();
    }

    public function calonCari($id)
    {
        $this->db->where('id',$id);
        $this->db->from('calon');
        return $this->db->get()->result_array();
    }
    
    public function bar()
    {
        $this->db->select('ketua, wakil , hasil');
        $this->db->from('calon');
        return $this->db->get()->result();
    }
    
}