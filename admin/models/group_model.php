<?php
/*************************************************************************
 * com_madrona - CRM Plus
 *
 *  built using xCIDeveloper - Xavoc International
 *************************************************************************
 * author     Bruce Davidson
 * copyright  Copyright (C) 2012 DarkOverlordOfData. All Rights Reserved.
 * license    http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL
 * website    http://darkoverlordofdata.blogspot.com
 *************************************************************************/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?><?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Group_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

	function get_all_groups($id = NULL)
	{
		$options = array();
		if ($id == NULL)
			$this->db->from('groups')->where('id >', 0)->order_by('name', 'asc');
		else
			$this->db->from('groups')->where('id >', 0)->where('id !=', $id)->order_by('name', 'asc');
		$group_parent_q = $this->db->get();
		foreach ($group_parent_q->result() as $row)
		{
			$options[$row->id] = $row->name;
		}
		return $options;
	}

	function get_ledger_groups()
	{
		$options = array();
		$this->db->from('groups')->where('id >', 4)->order_by('name', 'asc');
		$group_parent_q = $this->db->get();
		foreach ($group_parent_q->result() as $row)
		{
			$options[$row->id] = $row->name;
		}
		return $options;
	}
}
