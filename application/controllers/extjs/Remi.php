<?php

class Remi extends CI_Controller {
    
    public function index()
    {
        $data['params'] = [];
        
        $this->load->view('templates\remi\header', $data);
        $this->load->view('templates\remi\footer', $data);
    }
    
    public function add() {
        $postData = $this->input->post();
        $postData = $this->removeEmpty($postData);

        if ($this->isValidPostData($postData)) {
            $this->user_model->insert($postData);
            echo json_encode([
                'success' => true
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Invalid data!'
            ]);
        };
    }

    public function update() {
        $user = $this->input->post();
        
        $this->user_model->update($user);
    }
    
    public function delete() {
        $post = $this->input->post();

        if (!empty($post['delete'])) {
            $toBeRemoved = json_decode($post['delete']);

            $this->user_model->delete($toBeRemoved);
    
            echo json_encode([
                'success' => true
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to read data!'
            ]);
        }
    }
    
    public function users() {
        $users = $this->user_model->getAll();

        echo json_encode([
            'success' => true,
            'data' => $users
        ]);
    }

    private function isValidPostData($data) {
        return
            !empty($data['name']) &&
            !empty($data['position']) &&
            !empty($data['branch']);
    }

    private function removeEmpty($data) {
        foreach($data as $key => $value) {
            if ($value === 'null' || $value === '' || $value === '') {
                unset($data[$key]);
            }
        }

        return $data;
    }
}