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

/**
 * Startup:: a class that is loaded everytime the application is accessed
 *
 * Setup all the initialization routines that the application uses in this
 * class. It is autoloaded evertime the application is accessed.
 * 
 * 
 * Auto-login by syncronizing to Joomla user 
 *  *
 */

class Startup
{
	function Startup()
	{

        $CI =& get_instance();
        $CI->load->library('general');
        $CI->session->unset_userdata('user_name');
        $CI->session->unset_userdata('user_role');
        $CI->session->unset_userdata('active_account');        
        
        $user = & JFactory::getUser();

        $data_user_name = $user->username;
        $data_active_account = "demo";
        
        if (!($active_user = $CI->general->check_user($data_user_name)))
        {
            $CI->messages->add('User: $data_user_name not in config.', 'error');
            return;
        }
        
        /* Check user status */
        if ($active_user['status'] != 1)
        {
            $CI->messages->add('User: $data_user_name is disabled.', 'error');
            return;
        }
        
        if (!($active_account = $CI->general->check_account($data_active_account)))
        {
            $CI->messages->add('Account: $data_active_account is disabled.', 'error');
            return;
        }

        /* Loading account data */
        $CI->db->from('settings')->where('id', 1)->limit(1);
        $account_q = $CI->db->get();
        if ( ! ($account_d = $account_q->row()))
        {
            $CI->messages->add('Invalid account settings.', 'error');
            //redirect('user/account');
            return;
        }
        $CI->config->set_item('account_name', $account_d->name);
        $CI->config->set_item('account_address', $account_d->address);
        $CI->config->set_item('account_email', $account_d->email);
        $CI->config->set_item('account_fy_start', $account_d->fy_start);
        $CI->config->set_item('account_fy_end', $account_d->fy_end);
        $CI->config->set_item('account_currency_symbol', $account_d->currency_symbol);
        $CI->config->set_item('account_date_format', $account_d->date_format);
        $CI->config->set_item('account_timezone', $account_d->timezone);
        $CI->config->set_item('account_locked', $account_d->account_locked);
        $CI->config->set_item('account_database_version', $account_d->database_version);

        /* Load general application settings */
        $CI->general->check_setting();

        /* Load entry types */
        $CI->general->setup_entry_types();


        
        $CI->session->set_userdata('user_name', $data_user_name);
        $CI->session->set_userdata('user_role', $active_user['role']);
        $CI->session->set_userdata('active_account', $data_active_account);
 	    
		return;
	}
}

/* End of file startup.php */
/* Location: ./system/application/libraries/startup.php */
