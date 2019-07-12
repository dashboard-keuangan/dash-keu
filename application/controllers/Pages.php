<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if (!$this->session->userdata('dash_keu_id')) {
			redirect('auth','location');
		}
	  }
	  
	public function index()	{
		//redirect('pages/dashboard', 'location');
		$this->dashboard();
	}

	public function dashboard() {
		$this->load->view('index');
	}

	public function team() {
		$this->load->view('team');
	}

	public function profile() {
		$this->load->model('m_user', '', TRUE);
		$id = $this->session->userdata('dash_keu_id');
		$data['profil'] = $this->m_user->get_user_by_id($id);
		$this->load->view('profile', $data);
	}

	public function act_update_prof() {
		$this->load->model('m_user', '', TRUE);

		$id = $this->session->userdata('dash_keu_id');
		$data['username'] = $this->input->post('username');
		$data['nama'] = $this->input->post('nama');
		$data['email'] = $this->input->post('email');
		$data['jenis_kelamin'] = $this->input->post('jenis_kelamin');
		$data['no_telp'] = $this->input->post('no_telp');
		$data['alamat'] = $this->input->post('alamat');
		$data['bio'] = $this->input->post('bio');

		$this->m_user->update_user($data, $id);
		$this->session->set_flashdata('update_berhasil', TRUE);
		$this->session->set_userdata('dash_keu_nama', $data['nama']);
		redirect('/', 'location');
	}

	public function sha() {
		$this->load->view('sha');
	}
}
