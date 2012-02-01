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
/*
 * Auto-login by syncronizing to Joomla user 
 */

if ( ! function_exists('auto_login'))
{
    function auto_login()
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

        /* Preparing database settings */
        $db_config['hostname'] = $active_account['db_hostname'];
        $db_config['hostname'] .= ":" . $active_account['db_port'];
        $db_config['database'] = $active_account['db_name'];
        $db_config['username'] = $active_account['db_username'];
        $db_config['password'] = $active_account['db_password'];
        $db_config['dbdriver'] = "mysql";
        $db_config['dbprefix'] = "webzash_";
        $db_config['pconnect'] = FALSE;
        $db_config['db_debug'] = FALSE;
        $db_config['cache_on'] = FALSE;
        $db_config['cachedir'] = "";
        $db_config['char_set'] = "utf8";
        $db_config['dbcollat'] = "utf8_general_ci";
        $CI->load->database($db_config, FALSE, TRUE);

        /* Checking for valid database connection */
        if ( ! $CI->db->conn_id)
        {
            $CI->session->unset_userdata('active_account');
            $CI->messages->add('Error connecting to database server. Check whether database server is running.', 'error');
            //redirect('user/account');
            return;
        }
        /* Check for any database connection error messages */
        if ($CI->db->_error_message() != "")
        {
            $CI->session->unset_userdata('active_account');
            $CI->messages->add('Error connecting to database server. ' . $CI->db->_error_message(), 'error');
            //redirect('user/account');
            return;
        }

        /* Checking for valid database connection */
        if ( ! $CI->general->check_database())
        {
            $CI->session->unset_userdata('active_account');
            //redirect('user/account');
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
        
        
    }
}