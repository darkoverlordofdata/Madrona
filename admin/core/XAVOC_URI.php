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


class XAVOC_URI extends CI_URI {

    /**
     * Fetch the entire URI string
     *
     * @access  public
     * @return  string
     */
    function uri_string()
    {
        /*
         * Due to activation of query_strings,
         * code class Router returns before uri_string is set
         */
        if ($this->uri_string == '')
            $this->_fetch_uri_string();
        
        return $this->uri_string;
    }

    
}
