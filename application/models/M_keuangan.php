<?php

class M_keuangan extends CI_Model {
  private $table_pemasukan = 'pemasukan';
  private $table_pengeluaran = 'pengeluaran';
  private $table_rekap = 'rekapitulasi';
  public function get_pemasukan($tgl) {
    return $this->db->get_where($this->table_pemasukan, array('tanggal' => $tgl))->result();
	}
	public function add_pemasukan($data) {
		return $this->db->insert($this->table_pemasukan, $data);
  }
	public function get_pem_by_id($id) {
		return $this->db->get_where($this->table_pemasukan, array('id' => $id))->result_array();
  }
  public function get_pengeluaran($tgl) {
		return $this->db->get_where($this->table_pengeluaran, array('tanggal' => $tgl))->result();
	}
	public function add_pengeluaran($data) {
		return $this->db->insert($this->table_pengeluaran, $data);
    }
	public function get_peng_by_id($id) {
		return $this->db->get_where($this->table_pengeluaran, array('id' => $id))->result_array();
  }
  public function pencarian($keyword, $tabel) {
    $this->db->like('no_kwitansi',$keyword);
    if ($tabel=='pemasukan'){
      return $this->db->get($this->table_pemasukan)->result();
    }
    if ($tabel=='pengeluaran'){
      return $this->db->get($this->table_pengeluaran)->result();
    }
  }
	public function report(){
    $tgl = date("Y-m-d");
    $query = $this->db->query("SELECT * from report where tanggal <= '$tgl' limit 7");
         
    if($query->num_rows() > 0){
      foreach($query->result() as $data){
        $hasil[] = $data;
      }
    return $hasil;
    }
  }
  public function get_total_masuk(){
    $tahun = date("Y");
    $this->db->select_sum('biaya')
                ->where("Year(tanggal)", $tahun);
    foreach($this->db->get($this->table_pemasukan)->result() as $row) {
      return $row->biaya;
    }
  }
  public function get_total_masuk_hari($tgl){
    $this->db->select_sum('biaya');
    $query = $this->db->get_where($this->table_pemasukan, array('tanggal' => $tgl))->result_array();
    return $query[0]['biaya'];
  }
  public function get_total_keluar(){
    $tahun = date("Y");
    $query = $this->db->query("SELECT SUM(`harga_satuan`*`jumlah`) AS total FROM $this->table_pengeluaran where year(tanggal) = '$tahun'")->result_array();
    return $query[0]['total'];
  }
  public function get_total_keluar_hari($tgl){
    $query = $this->db->query("SELECT SUM(`harga_satuan`*`jumlah`) AS total FROM $this->table_pengeluaran WHERE tanggal = '$tgl'")->result_array();
    return $query[0]['total'];
  }
  public function delete_pemasukan($id) {
    return $this->db->delete($this->table_pemasukan, array('id' => $id));
  }
  public function delete_pengeluaran($id) {
    return $this->db->delete($this->table_pengeluaran, array('id' => $id));
  }

  public function update_masuk($data, $id) {
		$this->db->where('id', $id);
		return $this->db->update($this->table_pemasukan, $data);
  }
  public function update_keluar($data, $id) {
		$this->db->where('id', $id);
		return $this->db->update($this->table_pengeluaran, $data);
	}
  public function rekapitulasi($awal,$akhir,$cat){
    if ($cat == 'pemasukan') {
      return $this->db->query("SELECT *FROM $this->table_pemasukan WHERE tanggal >= '$awal' AND tanggal <= '$akhir' ORDER BY tanggal ASC")->result_array();
    } else {
      return $this->db->query("SELECT *FROM $this->table_pengeluaran WHERE tanggal >= '$awal' AND tanggal <= '$akhir' ORDER BY tanggal ASC")->result_array();
    }
  }
  public function detailyuhu($tanggal){
    $tes = $this->db->query("Select *from pengeluaran where tanggal = '$tanggal'");
    return $tes->result();
  }
  public function detailuhuy($tanggal){
    $tes = $this->db->query("Select *from pemasukan where tanggal = '$tanggal'");
    return $tes->result();
  }
}