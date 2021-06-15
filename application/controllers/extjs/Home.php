<?php

class Home extends CI_Controller {

    public function index()
    {
        $data['params'] = [];

        $this->load->view('templates/ext_header', $data);
        $this->load->view('templates/ext_footer', $data);
    }
}