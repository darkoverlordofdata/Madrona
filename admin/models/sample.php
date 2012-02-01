<?php
/*------------------------------------------------------------------------
# com_xcideveloper - Seamless merging of CI Development Style with Joomla CMS
# ------------------------------------------------------------------------
# author    Xavoc International / Gowrav Vishwakarma
# copyright Copyright (C) 2011 xavoc.com. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://www.xavoc.com
# Technical Support:  Forum - http://xavoc.com/index.php?option=com_discussions&view=index&Itemid=157
-------------------------------------------------------------------------*/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?><?
    
class sample extends CI_Model{
    function getAll(){
        
        $user = & JFactory::getUser();
        $data_user_name = $user->username;
        $this->load->library('general');
        $active_user = $this->general->check_user($data_user_name);
        return array($data_user_name, $active_user);
        //return array("Sample","Model","Data");
    }
}
?>