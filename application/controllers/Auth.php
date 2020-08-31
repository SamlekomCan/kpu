<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
       
        $this->load->library('form_validation');
        $this->load->model('Autentifikasi_model','auth');
    }
    public function index()
    {
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $this->auth->checkUser($username, $password);
        }
    }


    public function registration()
    {

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('username', 'Username', 'required', [
            'is_unique' => 'This username has already registered!'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'matches' => 'Password dont match!',
            'min_length' => 'Password to short!'
        ]);
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');


        if ($this->form_validation->run() == false) {
            $data['title'] = 'Registration';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/regis');
            $this->load->view('templates/auth_footer');
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'username' => htmlspecialchars($this->input->post('username', true)),
                'password' => password_hash($this->input->post('password1'), PASSWORD_BCRYPT),
                'role_id' => 1,
                'is_active' => 1,
            ];

            $this->db->insert('siswa', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your account has been created. Please login!
          </div>');

            redirect('auth');
        }
    }

    private function _sendEmail($token, $type)
    {
        $config = [
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_user' => 'peksiminas2018@gmail.com',
            'smtp_pass' => 'ayonyanyi2018',
            'smtp_port' => 465,
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'newline' => "\r\n"
        ];

        $this->load->library('email', $config);
        $this->email->initialize($config);
        $this->email->from('peksiminas2018@gmail.com', 'SIA');
        $this->email->to($this->input->post('email'));

        if ($type == 'verify') {
            $this->email->subject('Account Verification');
            $this->email->message(' Click this link to verify your account :
                <a href="' . base_url() . 'auth/verify?email=' . $this->input->post('email') .
                '&token=' . urlencode($token) . '">Activate</a>');
        } else   if ($type == 'forget') {
            $this->email->subject('Reset Password');
            $this->email->message(' Click this link to reset your password :
                <a href="' . base_url() . 'auth/resetPass?email=' . $this->input->post('email') .
                '&token=' . urlencode($token) . '">Reset Password</a>');
        }
        if ($this->email->send()) {
            return true;
        } else {
            $this->email->print_debugger();
        }
    }
    public function blocked()
    {
        $this->load->view('templatesUser/header');
        $this->load->view('auth/blocked');
        $this->load->view('templatesUser/footer');
    }

    public function verify()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('users', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('users_token', ['token' => $token])->row_array();

            if ($user_token) {
                if (time() - $user_token['date_created'] < (60 * 60 * 24)) {
                    $this->db->set('is_active', 1);
                    $this->db->where('email', $email);
                    $this->db->update('users');

                    $this->db->delete('users_token', ['email' => $email]);

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">' . $email . ' has been activated!  Please login
                    </div>');
                    redirect('auth');
                } else {
                    $this->db->delete('users', ['email' => $email]);
                    $this->db->delete('users_token', ['email' => $email]);
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Account activation failed! Token expired!
                  </div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Account activation failed! Token invalid!
          </div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Account activation failed! Wrong email
          </div>');
            redirect('auth');
        }
    }

    public function forgetPass()
    {

        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');


        if ($this->form_validation->run() == false) {
            $data['title'] = 'Forget Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/forgetpass');
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email');
            $user = $this->db->get_where('users', ['email' => $email, 'is_active' => 1])->row_array();
            if ($user) {
                $token = base64_encode(random_bytes(32));
                $user_token = [
                    'email' => $email,
                    'token' => $token,
                    'date_created' => time()
                ];

                $this->db->insert('users_token', $user_token);
                $this->_sendEmail($token, 'forget');
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
           Please check your email!
          </div>');
                redirect('auth');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Email not registered or activated!
          </div>');
                redirect('auth/forgetPass');
            }
        }
    }
    public function resetPass()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');
        $user = $this->db->get_where('users', ['email' => $email])->row_array();

        if ($user) {

            $user_token = $this->db->get_where('users_token', ['token' => $token])->row_array();

            if ($user_token) {
                if (time() - $user_token['date_created'] < (60 * 60 * 24)) {
                    $this->session->set_userdata('reset_email', $email);
                    $this->changePassword();
                } else {
                    $this->db->delete('users_token', ['email' => $email]);
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Token expired!
                  </div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Reset password wrong! Wrong token
          </div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Reset password wrong! Wrong email
          </div>');
            redirect('auth');
        }
    }

    public function changePassword()
    {
        if (!$this->session->userdata('reset_email')) {
            redirect('auth');
        }

        $email = $this->session->userdata('reset_email');
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
            $data['title'] = 'Change Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/changepass');
            $this->load->view('templates/auth_footer');
        } else {
            $Pass = $this->input->post('password1');
            $newPass = password_hash($Pass, PASSWORD_DEFAULT);
            $this->db->set('password', $newPass);
            $this->db->where('email', $email);
            $this->db->update('users');
            $this->session->unset_userdata('reset_email');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Password has been updated! </div>');
            redirect('auth');
        }
    }
}