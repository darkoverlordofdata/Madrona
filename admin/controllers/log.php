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

class Log extends CI_Controller {

	function index()
	{
		$this->load->helper('text');
		$this->template->set('page_title', 'Logs');
		$this->template->set('nav_links', array('log/clear' => 'Clear Log'));
		$this->template->load('template', 'log/index');

		/* Check access */
		if ( ! check_access('view log'))
		{
			$this->messages->add('Permission denied.', 'error');
			redirect('');
			return;
		}
		return;
	}

	function clear()
	{
		/* Check access */
		if ( ! check_access('clear log'))
		{
			$this->messages->add('Permission denied.', 'error');
			redirect('log');
			return;
		}

		/* Check for account lock */
		if ($this->config->item('account_locked') == 1)
		{
			$this->messages->add('Account is locked.', 'error');
			redirect('log');
			return;
		}

		if ($this->db->truncate('logs'))
		{
			$this->messages->add('Log cleared.', 'success');
			redirect('log');
		} else {
			$this->messages->add('Error clearing Log.', 'error');
			redirect('log');
		}
		return;
	}
}

/* End of file log.php */
/* Location: ./system/application/controllers/log.php */
