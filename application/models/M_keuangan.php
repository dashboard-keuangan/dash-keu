<?php

class M_keuangan extends CI_Model {
  private $table_pemasukan = 'pemasukan';
  private $table_pengeluaran = 'pengeluaran';
  private $table_rekap = 'rekapitulasi';
  public function get_pemasukan() {
    return $this->db->get($this->table_pemasukan)->result();
	}
	public function add_pemasukan($data) {
		return $this->db->insert($this->table_pemasukan, $data);
    }
	public function get_pem_by_id($id) {
		return $this->db->get_where($this->table_pemasukan, array('id' => $id))->result_array();
    }
    public function get_pengeluaran() {
		return $this->db->get($this->table_pengeluaran)->result();
	}
	public function add_pengeluaran($data) {
		return $this->db->insert($this->table_pengeluaran, $data);
    }
	public function get_peng_by_id($id) {
		return $this->db->get_where($this->table_pengeluaran, array('id' => $id))->result_array();
  }
  public function pencarian($keyword, $tabel) {
    if ($tabel=='pemasukan'){
      $this->db->like('kode',$keyword);
      return $this->db->get('pemasukan')->result();
    }
    if ($tabel=='pengeluaran'){
      $this->db->like('no_kwitansi',$keyword);
      return $this->db->get('pengeluaran')->result();
    }
  }
	public function report(){
    $query = $this->db->query("SELECT * from report");
         
    if($query->num_rows() > 0){
      foreach($query->result() as $data){
        $hasil[] = $data;
      }
    return $hasil;
    }
  }
  public function get_total_masuk(){
    $this->db->select_sum('jumlah');
    foreach($this->db->get('pemasukan')->result() as $row) {
      return $row->jumlah;
    }
  }
  public function get_total_keluar(){
    $this->db->select_sum('jumlah');
    foreach($this->db->get('pengeluaran')->result() as $row) {
      return $row->jumlah;
    }
  }
}