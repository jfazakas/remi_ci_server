<?php

class Upload extends CI_Controller {

    public function index()
    {
        $data['params'] = [];

        $this->load->view('upload_header', $data);
        $this->load->view('upload_footer', $data);
    }
}