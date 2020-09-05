<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Admin_model', 'admin');
	}

	public function index()
	{
		$data['title'] = 'E-Vote Sanata Dharma';
		$data['user'] = $this->db->get_where('user', ['nim' => $this->session->userdata('nim')])->row_array();
		$data['data'] = $this->admin->getCalon();
		$data['bemf'] = $this->admin->getCalonFakultas($data['user']['fakultas']);
		$this->load->view('templatesUser/header', $data);
		$this->load->view('templatesUser/sidebar', $data);
		$this->load->view('templatesUser/topbar', $data);
		$this->load->view('user/index', $data);
		$this->load->view('templatesUser/footer', $data);
	}

	public function profile()
	{
		$data['title'] = 'Profile';
		$data['user'] = $this->db->get_where('user', ['nim' => $this->session->userdata('nim')])->row_array();
		$this->load->view('templatesUser/header', $data);
		$this->load->view('templatesUser/sidebar', $data);
		$this->load->view('templatesUser/topbar', $data);
		$this->load->view('user/profile', $data);
		$this->load->view('templatesUser/footer', $data);
	}

	public function logout()
	{
		$this->session->unset_userdata('nim');
		$this->session->unset_userdata('role_id');
		$this->session->unset_userdata('status');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        You have been logged out!
      </div>');
		redirect('auth');
	}

	public function edit()
	{
		$data['title'] = 'Edit Profile';
		$data['user'] = $this->db->get_where('user', ['nim' => $this->session->userdata('nim')])->row_array();

		$this->form_validation->set_rules('nama', 'Name', 'required');

		if ($this->form_validation->run() == false) {
			$this->load->view('templatesUser/header', $data);
			$this->load->view('templatesUser/sidebar', $data);
			$this->load->view('templatesUser/topbar', $data);
			$this->load->view('user/edit', $data);
			$this->load->view('templatesUser/footer', $data);
		} else {
			$email = $this->input->post('nim');
			$name = $this->input->post('name');

			$this->db->set('name', $name);
			$this->db->where('email', $email);
			$this->db->update('users');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Profile has been updated! </div>');
			redirect('user');
		}
	}

	public function changepassword()
	{
		$data['title'] = 'Change Passowrd';
		$data['user'] = $this->db->get_where('user', ['nim' => $this->session->userdata('nim')])->row_array();

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
			$this->load->view('templatesUser/header', $data);
			$this->load->view('templatesUser/sidebar', $data);
			$this->load->view('templatesUser/topbar', $data);
			$this->load->view('user/changepassword', $data);
			$this->load->view('templatesUser/footer', $data);
		} else {
			$currentPass = $this->input->post('current_password');
			$Pass = $this->input->post('password1');
			if (!password_verify($currentPass, $data['user']['password'])) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Wrong Current Password! </div>');
				redirect('user/changepassword');
			} else {
				if ($currentPass == $Pass) {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                New password cannot be the same as current password! </div>');
					redirect('user/changepassword');
				} else {
					$newPass = password_hash($Pass, PASSWORD_DEFAULT);
					$this->db->set('password', $newPass);
					$this->db->where('nim', $data['user']['nim']);
					$this->db->update('user');
					$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                    Your Password has been updated! </div>');
					redirect('user');
				}
			}
		}
	}

	public function pilihBemu($id)
	{
		$this->db->where('id', $id);
		$this->db->from('calon');
		$calon = $this->db->get()->result_array();
		$org = $calon[0]['organisasi'];

		$hasil = $calon[0]['hasil'] + 1;
		$this->db->set('hasil', $hasil);
		$this->db->where('id', $id);
		$this->db->update('calon');
		if (strcasecmp($org, 'BEMU') == 0) {
			# code...
			$this->db->set('status', 0);
			$this->db->where('nim', $this->session->userdata('nim'));
			$this->db->update('user');

		} elseif (strcasecmp($org, 'BEMF') == 0) {
			# code...
			$this->db->set('statusBEMF', 0);
			$this->db->where('nim', $this->session->userdata('nim'));
			$this->db->update('user');
		} else {
			$this->db->set('statusHM', 0);
			$this->db->where('nim', $this->session->userdata('nim'));
			$this->db->update('user');

		}
		redirect('user');
	}

	public function screening()
	{
		$data['title'] = 'Screening';
		$data['user'] = $this->db->get_where('user', ['nim' => $this->session->userdata('nim')])->row_array();

		// $this->form_validation->set_rules('nama', 'Name', 'required');

		if ($this->form_validation->run() == false) {
			$this->load->view('templatesUser/header', $data);
			$this->load->view('templatesUser/sidebar', $data);
			$this->load->view('templatesUser/topbar', $data);
			$this->load->view('user/screening', $data);
			$this->load->view('templatesUser/footer', $data);
		} else {
			$email = $this->input->post('nim');
			$name = $this->input->post('name');

			$this->db->set('name', $name);
			$this->db->where('email', $email);
			$this->db->update('users');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Profile has been updated! </div>');
			redirect('user');
		}
	}
}
