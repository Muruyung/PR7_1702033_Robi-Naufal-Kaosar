<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tabel extends CI_Controller{
  // Fungsi yang pertama kali dijalankan
  function __construct(){
    parent::__construct();
    $this->load->model('M_query');
  }

  function index(){
    $this->load->view('tabel');
  }
}
?>
