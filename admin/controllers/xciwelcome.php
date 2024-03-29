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
?><?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class XciWelcome extends CI_Controller {

   function __construct()
   {
      parent::__construct();
      
   }

   function index() //This is default function for 'default' layout NEVER TRY TO MAKE A FUNCTION NAMED 'default'
   {
            xDeveloperToolBars::getDefaultToolBar();
            $this->load->model("sample");
            $data['result']=$this->sample->getAll();
            $this->load->view('xciwelcome.html',$data,false,true);
   }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */