<?php
class M_query extends CI_Model{

  // Left join
  function join_kiri(){
    $this->db->select('lokomotif.*,kursi.*');
    $this->db->from('lokomotif');
    $this->db->join('kursi', 'lokomotif.kd_kereta = kursi.kd_kereta','left');
    $query = $this->db->get();
    return $query->result();
  }

  // Right join
  function join_kanan(){
    $this->db->select('kursi.*, gerbong.*');
    $this->db->from('kursi');
    $this->db->join('gerbong', 'gerbong.kd_gerbong = kursi.kd_gerbong', 'right');
    $query = $this->db->get();
    return $query->result();
  }

  // Inner inner join
  function join_inner(){
    $this->db->select('lokomotif.*, kursi.*, gerbong.*');
    $this->db->from('lokomotif');
    $this->db->join('kursi', 'lokomotif.kd_kereta = kursi.kd_kereta', 'inner');
    $this->db->join('gerbong', 'lokomotif.kd_kereta = gerbong.kd_kereta', 'inner');
    $query = $this->db->get();
    return $query->result();
  }
}
 ?>
