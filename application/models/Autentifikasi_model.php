<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Autentifikasi_model extends CI_Model
{

    public function checkUser($username,$password)
    {
        if ($this->db->get_where('admin', ['user' => $username])->num_rows() == 1) {
            $user = $this->db->get_where('admin', ['user' => $username])->row_array();
            if (password_verify($password, $user['pass'])) {
            $data = [
                'username' => $user['user'],
                'role_id' => $user['role'],
                'status' => 'admin'
            ];
            $this->session->set_userdata($data);
            
            redirect('admin');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Wrong password!
            </div>');
                redirect('auth');
            }
        }elseif($this->db->get_where('user', ['nim' => $username])->num_rows() == 1 ){
            $user = $this->db->get_where('user', ['nim' => $username])->row_array();
            // var_dump(password_verify($username, $user['password']));die;
            
            if (password_verify($password, $user['password'])) {
            $data = [
                'nim' => $user['nim'],
                'role_id' => $user['role'],
                'status' => 'user'
            ];
            $this->session->set_userdata($data);
            redirect('user');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Wrong password!
            </div>');
                redirect('auth');
            }
        }
    }

    public function sessionCheck($status)
    {
        if ($status == 'admin') {
            
            return $this->db->get_where('admin', ['user' => $this->session->userdata('username')])->row_array();
        } elseif ($status == 'user') {
            return $this->db->get_where('user', ['nim' => $this->session->userdata('username')])->row_array();
        } 
    }

    function is_logged_in()
    {
        if (!$this->session->userdata('nim')) {
            redirect('auth');
        } else {
            $role_id = $this->session->userdata('role_id');
            
            if ($role_id != 1) {
                redirect('auth/blocked');
            };
        };
    }

}