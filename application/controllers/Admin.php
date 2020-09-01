<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') != 'admin') {
            if ($data) {
                # code...
                redirect('auth/blocked',$data);
            }else{
                $data = '';
                redirect('auth/blocked',$data);

            }
        }
        $this->load->model('Autentifikasi_model','auth');
        $this->load->model('Admin_model','admin');
        $this->load->library('excel');
    }

    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['bar'] = $this->admin->bar();
        $this->load->view('templatesAdmin/header', $data);
        $this->load->view('templatesAdmin/sidebar', $data);
        $this->load->view('templatesAdmin/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('templatesAdmin/footer', $data);
    }
    public function profile()
    {
        $data['title'] = 'Profile';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $this->load->view('templatesAdmin/header', $data);
        $this->load->view('templatesAdmin/sidebar', $data);
        $this->load->view('templatesAdmin/topbar', $data);
        $this->load->view('admin/profile', $data);
        $this->load->view('templatesAdmin/footer', $data);
    }

    public function changePassword()
    {
        $data['title'] = 'Change Password';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
       
        $this->form_validation->set_rules('current_password', 'Current Password', 'required|trim');
        $this->form_validation->set_rules(
            'password1',
            'New Password',
            'required|trim|min_length[3]|matches[password2]',
            [
                'matches' => 'Password dont match!',
                'min_length' => 'Password to short!'
            ]
        );
        $this->form_validation->set_rules(
            'password2',
            'Confirm New Password',
            'required|trim|min_length[3]|matches[password1]',
            [
                'matches' => 'Password dont match!',
                'min_length' => 'Password to short!'
            ]
        );

        if ($this->form_validation->run() == false) {
            # code...
            $this->load->view('templatesAdmin/header', $data);
            $this->load->view('templatesAdmin/sidebar', $data);
            $this->load->view('templatesAdmin/topbar', $data);
            $this->load->view('admin/changepassword', $data);
            $this->load->view('templatesAdmin/footer', $data);
        } else {
            $currentPass = $this->input->post('current_password');
            $Pass = $this->input->post('password1');
            if (!password_verify($currentPass, $data['user']['password'])) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Wrong Current Password! </div>');
                redirect('admin/changepassword');
            } else {
                if ($currentPass == $Pass) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                New password cannot be the same as current password! </div>');
                    redirect('admin/changepassword');
                } else {
                    $newPass = password_hash($Pass, PASSWORD_DEFAULT);
                    $this->db->set('pass', $newPass);
                    $this->db->where('user', $data['user']['user']);
                    $this->db->update('admin');
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                    Your Password has been updated! </div>');
                    redirect('admin/profile');
                }
            }
        }
    }

    public function user()
    {
        $data['title'] = 'Mahasiswa';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->allUser();
        $this->load->view('templatesAdmin/header', $data);
        $this->load->view('templatesAdmin/sidebar', $data);
        $this->load->view('templatesAdmin/topbar', $data);
        $this->load->view('admin/user', $data);
        $this->load->view('templatesAdmin/footer', $data);
    }

    public function admin()
    {
        $data['title'] = 'Admin';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->allAdmin();
        $this->load->view('templatesAdmin/header', $data);
            $this->load->view('templatesAdmin/sidebar', $data);
            $this->load->view('templatesAdmin/topbar', $data);
            $this->load->view('admin/admin', $data);
            $this->load->view('templatesAdmin/footer', $data);
    }

    public function resetPasswordUser($id)
    {
        $options = ['cost' => 10];
        $user = $this->admin->getUser($id);
        $newPass = password_hash($user['nim'], PASSWORD_DEFAULT,$options);
        $this->db->set('password', $newPass);
        $this->db->where('id', $id);
        $this->db->update('user');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Password '.$user['nim'] .' has been reset! </div>');
        redirect('admin/user');
    }

    public function tambahAdmin()
    {
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $mail = $this->input->post('mail');
        if ($this->auth->cekAdmin($username)==0) {
            # code...
             $data=['nama' => $nama, 'user' => $username, 'pass' => password_hash($password, PASSWORD_DEFAULT), 'mail' => $mail, 'role'=>1];
            $this->db->insert('admin', $data);
             redirect('admin/admin');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Username sudah ada! </div>');
             redirect('admin/admin');
        }
       
       
    }

    public function deleteAdmin($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('admin');
        redirect('admin/admin');
    }
    
    public function importMahasiswa()
    {
       set_time_limit(0);
       $options = ['cost' => 10];
        if (isset($_FILES["file"]["name"])) {
            $countfiles = count($_FILES["file"]["name"]);

            for ($iii = 0; $iii < $countfiles; $iii++) {

                $path = $_FILES["file"]["tmp_name"][$iii];
                $object = PHPExcel_IOFactory::load($path);

                foreach ($object->getWorksheetIterator() as $worksheet) {
                    $highestRow = $worksheet->getHighestRow();
                    $highestColumn = $worksheet->getHighestColumn();
                    $num = 1;
                    for ($row = 2; $row <= $highestRow; $row++) {
                        $nim = $worksheet->getCellByColumnAndRow(0, $row)->getValue();
                        $nama = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
                        $fakultas = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
                        $prodi = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
                        if (strlen($nim) == 9) {
                            if ($this->db->get_where('user', ['nim' => $nim])->num_rows() == 0) {
                                $data[] = array('nim' => $nim, 'nama' => $nama, 'fakultas' => $fakultas, 
                                'prodi' => $prodi, 'status' => 1, 'statusBEMF' => 1, 'statusHM' => 1, 'password' => password_hash($nim, PASSWORD_DEFAULT,$options));
                                $num++;
                                
                            }
                        }
                    }
                }
            }
            if ($data) {
                $this->db->insert_batch('user', $data);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="success">
                            ' . $num . ' Data mahasiswa berhasil di import!</div>');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="danger">
                            Data mahasiswa sudah di import!</div>');
            }
        }
        redirect('admin/user');
    }

    public function calon()
    {
        $data['title'] = 'Calon';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->getCalon();
        $this->load->view('templatesAdmin/header', $data);
        $this->load->view('templatesAdmin/sidebar', $data);
        $this->load->view('templatesAdmin/topbar', $data);
        $this->load->view('admin/calon', $data);
        $this->load->view('templatesAdmin/footer', $data);
    }
    public function detailCalon($id)
    {
        $data['title'] = 'Detail Calon';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->calonCari($id);
            $this->load->view('templatesAdmin/header', $data);
            $this->load->view('templatesAdmin/sidebar', $data);
            $this->load->view('templatesAdmin/topbar', $data);
            $this->load->view('admin/detailCalon', $data);
            $this->load->view('templatesAdmin/footer', $data);
    }

    public function hapusCalon($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('calon');
        redirect('admin/calon');
    }

    public function editCalon($id)
    {        
        $data['title'] = 'Edit Calon';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->calonCari($id);
        // var_dump( $data['data']);die;
        $this->form_validation->set_rules('nama1', 'Nama Ketua', 'required|trim');
        $this->form_validation->set_rules('nama2', 'Nama Wakil', 'required|trim');
        $this->form_validation->set_rules('fakultas1', 'Fakultas Ketua', 'required|trim');
        $this->form_validation->set_rules('fakultas2', 'Fakultas Wakil', 'required|trim');
        $this->form_validation->set_rules('organisasi', 'Organisasi', 'required|trim');
        $this->form_validation->set_rules('visi', 'Visi', 'required|trim');
        $this->form_validation->set_rules('misi', 'Misi', 'required|trim');
        if ($this->form_validation->run() == false) {
            $this->load->view('templatesAdmin/header', $data);
            $this->load->view('templatesAdmin/sidebar', $data);
            $this->load->view('templatesAdmin/topbar', $data);
            $this->load->view('admin/editCalon', $data);
            $this->load->view('templatesAdmin/footer', $data);
         }else{

            $ketua = $this->input->post('nama1');
            $wakil = $this->input->post('nama2');
            $fakultasketua = $this->input->post('fakultas1');
            $fakultaswakil = $this->input->post('fakultas2');
            $organisasi = $this->input->post('organisasi');
            $visi = $this->input->post('visi');
            $misi = $this->input->post('misi');            
            $upload = $_FILES['image']['name'];
            if ($upload) {
                $config['upload_path'] = './assets/img/calon';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']     = '2048';   
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('image')) {
                    $newImage = $this->upload->data('file_name');
                    $this->db->set('foto', $newImage);
                } 
            }
            $this->db->set('ketua', $ketua);
            $this->db->set('wakil', $wakil);
            $this->db->set('fakultasketua', $fakultasketua);
            $this->db->set('fakultaswakil', $fakultaswakil);
            $this->db->set('organisasi', $organisasi);
            $this->db->set('visi', $visi);
            $this->db->set('misi', $misi);
            $this->db->update('calon');
            redirect('admin/calon');
        }
    }


    public function Addcalon()
    {
        $data['title'] = 'Tambah Calon';
        $data['sidebar'] = 'Administrator';
        $data['user'] = $this->auth->sessionCheck($this->session->userdata('status'));
        $data['data'] = $this->admin->allUser();

        
        $this->form_validation->set_rules('nama1', 'Nama Ketua', 'required|trim');
        $this->form_validation->set_rules('nama2', 'Nama Wakil', 'required|trim');
        $this->form_validation->set_rules('fakultas1', 'Fakultas Ketua', 'required|trim');
        $this->form_validation->set_rules('fakultas2', 'Fakultas Wakil', 'required|trim');
        $this->form_validation->set_rules('organisasi', 'Organisasi', 'required|trim');
        $this->form_validation->set_rules('visi', 'Visi', 'required|trim');
        $this->form_validation->set_rules('misi', 'Misi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('templatesAdmin/header', $data);
            $this->load->view('templatesAdmin/sidebar', $data);
            $this->load->view('templatesAdmin/topbar', $data);
            $this->load->view('admin/addCalon', $data);
            $this->load->view('templatesAdmin/footer', $data);
            
        }else{

            $ketua = $this->input->post('nama1');
            $wakil = $this->input->post('nama2');
            $fakultasketua = $this->input->post('fakultas1');
            $fakultaswakil = $this->input->post('fakultas2');
            $organisasi = $this->input->post('organisasi');
            $visi = $this->input->post('visi');
            $misi = $this->input->post('misi');            
            $upload = $_FILES['image']['name'];
            if ($upload) {
                $config['upload_path'] = './assets/img/calon';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']     = '2048';   
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('image')) {
                    $newImage = $this->upload->data('file_name');
                    $this->db->set('foto', $newImage);
                } 
            }
            $this->db->set('ketua', $ketua);
            $this->db->set('wakil', $wakil);
            $this->db->set('fakultasketua', $fakultasketua);
            $this->db->set('fakultaswakil', $fakultaswakil);
            $this->db->set('organisasi', $organisasi);
            $this->db->set('visi', $visi);
            $this->db->set('misi', $misi);
            $this->db->set('hasil', 0);
            $this->db->insert('calon');
            redirect('admin/calon');
        }

    }

    public function logout()
    {
        // 'username' => $user['user'],
        //         'role_id' => $user['role'],
        //         'status' => 'admin'
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('role');
        $this->session->unset_userdata('status');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        You have been logged out!
      </div>');
        redirect('auth');
    }

}