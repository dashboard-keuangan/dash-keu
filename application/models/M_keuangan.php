<?php

class M_keuangan extends CI_Model 
{
    private $table_pemasukan = 'pemasukan';
    private $table_pengeluaran = 'pengeluaran';
    private $table_rekap = 'rekapitulasi';
    public function get_pemasukan($num = 100) {
		return $this->db->get($this->table_pemasukan, $num)->result_array();
	}
	public function add_pemasukan($data) {
		return $this->db->insert($this->table_pemasukan, $data);
    }
	public function get_pem_by_id($id) {
		return $this->db->get_where($this->table_pemasukan, array('id' => $id))->result_array();
    }
    public function get_pengeluaran($num = 100) {
		return $this->db->get($this->table_pengeluaran, $num)->result_array();
	}
	public function add_pengeluaran($data) {
		return $this->db->insert($this->table_pengeluaran, $data);
    }
	public function get_peng_by_id($id) {
		return $this->db->get_where($this->table_pengeluaran, array('id' => $id))->result_array();
	}
	function report(){
        $query = $this->db->query("SELECT * from report");
         
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }
}