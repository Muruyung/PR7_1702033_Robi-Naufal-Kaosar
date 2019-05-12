<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inner extends CI_Controller{
  // Fungsi yang pertama kali dijalankan
  function __construct(){
    parent::__construct();
    $this->load->model('M_query');
  }

  function index(){
    $data['query'] = $this->M_query->join_inner();
    $this->load->view('tabel');
    $this->load->view('hasil',$data);
  }
}
?>
