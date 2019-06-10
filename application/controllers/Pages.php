<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if (!$this->session->userdata('dash_keu_id')) {
			redirect('auth','location');
		}
	  }
	  
	public function index()
	{
		$data['title'] = 'Dashboard Keuangan';
		$this->load->view('partial/header', $data);
		$this->load->view('index');
		$this->load->view('partial/footer');
	}

	public function dashboard()
	{
		$this->index();
	}

	public function profile()
	{
		$this->load->model('m_user', '', TRUE);
		$data['title'] = 'Profile :: Dashboard Keuangan';
		$id = $this->session->userdata('dash_keu_id');
		$data['profil'] = $this->m_user->get_user_by_id($id);
		$this->load->view('partial/header', $data);
		$this->load->view('profile', $data);
		$this->load->view('partial/footer');
	}

	public function act_update_prof() {
		redirect('pages','location');
	}
}
