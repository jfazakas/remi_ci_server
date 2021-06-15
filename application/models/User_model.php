<?php

class User_model extends CI_Model {

    public function getAll()
    {
        $query = $this->db->get('users');
        return $query->result_array();
    }

    public function insert($params)
    {
        $this->db->insert('users', $params);
    }

    public function update($params)
    {
    }

    public function delete($params)
    {
        foreach($params as $id) {
                $this->db->where("id",$id);
                $this->db->delete("users");
            // $this->db->delete('users', $id);
        }
    }
}