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

class Backup extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('Setting_model');

		/* Check access */
		if ( ! check_access('change account settings'))
		{
			$this->messages->add('Permission denied.', 'error');
			redirect('');
			return;
		}

		return;
	}

	function index()
	{
		$this->load->dbutil();
		$this->load->helper('download');

		/* Check access */
		if ( ! check_access('backup account'))
		{
			$this->messages->add('Permission denied.', 'error');
			redirect('setting');
			return;
		}

		$backup_filename = "backup" . date("dmYHis") . ".gz";

		/* Backup your entire database and assign it to a variable */
		//$backup_tables =& $this->dbutil->list_databases();
		//$backup_data =& $this->dbutil->backup(array_filter($backup_tables, array($this, 'table_filter')));

        $backup_tables = array(
        
            'webzash_entries',
            'webzash_entry_items',
            'webzash_entry_types',
            'webzash_groups',
            'webzash_ledgers',
            'webzash_logs',
            'webzash_settings',
            'webzash_tags',
            
        );
        $backup_data =& $this->dbutil->backup($backup_tables);

		/* Write the backup file to server */
		if ( ! write_file($this->config->item('backup_path') . $backup_filename, $backup_data))
		{
			$this->messages->add('Error saving backup file to server.' . ' Check if "' . $this->config->item('backup_path') . '" folder is writable.', 'error');
			redirect('setting');
			return;
		}

		/* Send the file to your desktop */
		force_download($backup_filename, $backup_data);
		$this->logger->write_message("success", "Downloaded account backup");
		redirect('setting');
		return;
	}

    function table_filter($table_name) {
        
        return (strpos($table_name, DB_PREFIX) === 0);
    }
}

/* End of file backup.php */
/* Location: ./system/application/controllers/setting/backup.php */
