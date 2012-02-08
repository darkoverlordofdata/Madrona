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


class XAVOC_Config extends  CI_Config {
    /**
     * Site URL
     *
     * @access  public
     * @param   string  the URI string
     * @return  string
     */
    function site_url($uri = '')
    {
        if ($uri == '')
        {
            return $this->slash_item('base_url').$this->item('index_page');
        }

        if ($this->item('enable_query_strings') == FALSE)
        {
            if (is_array($uri))
            {
                $uri = implode('/', $uri);
            }

            $index = $this->item('index_page') == '' ? '' : $this->slash_item('index_page');
            $suffix = ($this->item('url_suffix') == FALSE) ? '' : $this->item('url_suffix');
            return $this->slash_item('base_url').$index.trim($uri, '/').$suffix;
        }
        else
        {
            if (is_array($uri))
            {
                $i = 0;
                $str = '';
                foreach ($uri as $key => $val)
                {
                    $prefix = ($i == 0) ? '' : '&';
                    $str .= $prefix.$key.'='.$val;
                    $i++;
                }

                $uri = $str;
            }
            
            // if uri begins with '?', then in invalid URL is returned:
            $uri = strpos($uri, '?') === 0 ? substr($uri,1) : $uri;

            return $this->slash_item('base_url').$this->item('index_page').'?'.$uri;
        }
    }

    
}
