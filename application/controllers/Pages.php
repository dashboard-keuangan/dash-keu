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

	public function act_passwd() {
		if (($this->input->post('password0') && $this->input->post('password')) == '') {
			$this->session->set_flashdata('ubahpass_kosong', TRUE);
			redirect('/', 'location');
		} elseif ($this->input->post('password0') == $this->input->post('password')) {
			$this->load->model('m_user', '', TRUE);
			$id = $this->session->userdata('dash_keu_id');
			$data['password'] = sha1($this->input->post('password0'));

			$this->m_user->update_user($data, $id);
			$this->session->set_flashdata('ubahpass_berhasil', TRUE);
			redirect('/', 'location');
		} else {
			$this->session->set_flashdata('ubahpass_gagal', TRUE);
			redirect('pages/settings', 'location');
		}
	}

	public function sha() {
		$this->load->view('sha');
	}

	public function settings() {
		$this->load->view('settings');
	}

	public function chart() {
		$this->load->view('chart');
	}

	public function lap_harian() {
		$this->load->view('laporan_harian');
	}

	public function blank() {
		$this->load->view('blank');
	}
}