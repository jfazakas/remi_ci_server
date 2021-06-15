<?php
class Upload extends CI_Controller
{
    public function file()
    {
        print_r($_FILES);exit;

        echo json_encode($isFiltered === 'true' ? $filteredData : $rawData);
    }

    public function form()
    {
        // print_r($_GET);exit;
    }
}
