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

class Account extends CI_Controller {
	function index()
	{
		$this->load->model('Ledger_model');
		$this->template->set('page_title', 'Chart Of Accounts');
		$this->template->set('nav_links', array('group/add' => 'Add Group', 'ledger/add' => 'Add Ledger'));

		/* Calculating difference in Opening Balance */
		$total_op = $this->Ledger_model->get_diff_op_balance();
		if ($total_op > 0)
		{
			$this->messages->add('Difference in Opening Balance is Dr ' . convert_cur($total_op) . '.', 'error');
		} else if ($total_op < 0) {
			$this->messages->add('Difference in Opening Balance is Cr ' . convert_cur(-$total_op) . '.', 'error');
		}

		$this->template->load('template', 'account/index');
		return;
	}
}

/* End of file account.php */
/* Location: ./system/application/controllers/account.php */
