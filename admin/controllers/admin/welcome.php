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

class Welcome extends CI_Controller {

    function __construct()
    {
        parent::__construct();

		/* Check access */
		if ( ! check_access('administer'))
		{
			$this->messages->add('Permission denied.', 'error');
			redirect('');
			return;
		}

		return;
	}
	
	function index()
	{
		$this->template->set('page_title', 'Administer Webzash');

		/* Check status report */
		$this->load->library('statuscheck');
		$statuscheck = new Statuscheck(); 
		$statuscheck->check_permissions();
		if (count($statuscheck->error_messages) > 0)
		{
			$this->messages->add('One or more problems were detected with your installation. Check the ' . anchor('admin/status', 'Status report', array('title' => 'Check Status report', 'class' => 'anchor-link-a')) . ' for more information.', 'error');
		}

		$this->template->load('admin_template', 'admin/welcome');
		return;
	}
}

/* End of file welcome.php */
/* Location: ./system/application/controllers/admin/welcome.php */
