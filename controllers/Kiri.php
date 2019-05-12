<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kiri extends CI_Controller{
  // Fungsi yang pertama kali dijalankan
  function __construct(){
    parent::__construct();
    $this->load->model('M_query');
  }

  function index(){
    $data['query'] = $this->M_query->join_kiri();
    $data['jenis'] = 'kiri';
    $this->load->view('tabel');
    $this->load->view('hasil',$data);
  }
}
?>
