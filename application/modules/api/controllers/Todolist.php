<?php
defined('BASEPATH') or exit('No direct script access allowed');

require_once APPPATH . '/libraries/REST_Controller.php';

class Todolist extends REST_Controller
{

	public function __construct()
	{
		parent::__construct();

		// load database
		$this->load->database();

		// load model from /modules/api/model/todolist.php
		$this->load->model('todolists');
	}

	public function index_get()
	{

		$id = trim($this->get('id'));

		if ($id > 0) {
			$data = $this->todolists->get($id);
			$this->data['results'] = $data;
			$this->response($this->data);
		}

		$search = trim($this->get('search'));

		if ($search) {
			$wh["t_name LIKE '%$search%' OR t_dedline LIKE '%$search%' OR t_priority LIKE '%$search%' OR t_created_at LIKE '%$search%'"] = null;
			$data = $this->todolists->get_many_by($wh);
			$this->data['results'] = $data;
			$this->response($this->data);
		}

		$data = $this->todolists->get_all();

		$this->data['results'] = $data;
		$this->response($this->data);
	}

	public function index_post()
	{
		# create data 
		$val['t_name'] = trim($this->post('t_name'));
		$val['t_desc'] = trim($this->post('t_desc'));
		$val['t_dedline'] = trim($this->post('t_dedline'));
		$val['t_priority'] = trim($this->post('t_priority'));

		if (!$val['t_name']) {
			$this->data['status'] = false;
			$this->data['message'] = 'name not value !';
			$this->response($this->data, 400);
		}

		if (!$val['t_desc']) {
			$this->data['status'] = false;
			$this->data['message'] = 'description not value !';
			$this->response($this->data, 400);
		}

		if (!$val['t_dedline']) {
			$this->data['status'] = false;
			$this->data['message'] = 'dedline not value !';
			$this->response($this->data, 400);
		}

		if (!$val['t_priority']) {
			$this->data['status'] = false;
			$this->data['message'] = 'priority not value !';
			$this->response($this->data, 400);
		}

		$row = $this->todolists->count_by('t_name', $val['t_name']);
		if ($row > 0) {
			$this->data['status'] = false;
			$this->data['message'] = 'data ready !';
			$this->response($this->data, 400);
		}

		$this->todolists->insert($val);
		$this->data['message'] = 'insert new row success';
		$this->response($this->data, 201);
	}

	public function index_put()
	{
		# update
		$val['t_name'] = trim($this->put('t_name'));
		$val['t_desc'] = trim($this->put('t_desc'));
		$val['t_dedline'] = trim($this->put('t_dedline'));
		$val['t_priority'] = trim($this->put('t_priority'));

		$id = trim($this->put('id'));
		
		if ($id) {
			$this->todolists->update($id, $val);
			$this->data['message'] = 'update data success';
			$this->response($this->data, 201);
		}

		$this->data['status'] = false;
		$this->response($this->data, 502);
	}

	public function index_delete()
	{
		# delete data by id
		$id = $this->delete('id');
		$cek = $this->todolists->delete($id);

		if ($cek > 0) {
			$this->data['message'] = 'delete success';
			$this->response($this->data, 201);
		}

		$this->data['status'] = false;
		$this->response($this->data, 502);
	}
}
