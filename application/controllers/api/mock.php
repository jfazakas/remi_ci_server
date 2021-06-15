<?php
class Mock extends CI_Controller
{
    public function data()
    {
        $isFiltered = $this->input->get('isFiltered');
        
        $rawData = array([
            'id' => 1,
            'value' => 'Bob'
        ], [
            'id' => 2,
            'value' => 'Sam'
        ], [
            'id' => 3,
            'value' => 'NA'
        ]);

        $filteredData = array([
            'id' => 1,
            'value' => 'Bob'
        ], [
            'id' => 2,
            'value' => 'Sam'
        ]);

        echo json_encode($isFiltered === 'true' ? $filteredData : $rawData);
    }

    public function users()
    {
        $users = array([
            'id' => 1,
            'name' => 'Bob',
            'email' => 'bob@gmail.com',
            'phone' => '123456789'
        ], [
            'id' => 2,
            'name' => 'Sam',
            'email' => 'sam@gmail.com',
            'phone' => '234567890'
        ], [
            'id' => 3,
            'name' => 'Jim',
            'email' => 'jim@gmail.com',
            'phone' => '345678901'
        ]);

        echo json_encode($users);
    }
}
