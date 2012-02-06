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

class Status extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        xDeveloperToolBars::getDefaultToolBar();

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
		$this->load->library('statuscheck');
		$this->template->set('page_title', 'Status report');
		$statuscheck = new Statuscheck(); 
		$statuscheck->check_permissions();
		$data['error_messages'] = $statuscheck->error_messages;
		$this->template->load('admin_template', 'admin/status', $data);
		return;
	}
}

/* End of file status.php */
/* Location: ./system/application/controllers/admin/status.php */
