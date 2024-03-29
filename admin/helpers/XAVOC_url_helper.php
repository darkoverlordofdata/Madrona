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
 * Madrona
 *
 * An open source accounting add on for CivicCRM
 *
 * @package     Madrona
 * @author      Bruce Davidson
 * @copyright   Copyright (c) 2012 DarkOverlordOfData
 * @license     http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL
 * @link        http://madrona.phpfogapp.com
 * @since       Version 1.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * CodeIgniter URL Helpers
 *
 * @package     Madrona
 * @subpackage  CodeIgniter
 * @category    Helpers
 * @author      Bruce Davidson
 * @link        
 */

 /*
  *     CodeIgniter paths:
  * 
  *     account
  *     admin
  *     admin/create
  *     admin/manage
  *     admin/manage/add
  *     admin/manage/delete/<id>
  *     admin/manage/edit/<id>
  *     admin/setting
  *     admin/status
  *     admin/user
  *     admin/user/create
  *     admin/user/delete/<id>
  *     admin/user/edit/<id>
  *     entry
  *     entry/add/<type>
  *     entry/delete/<type>/<id>
  *     entry/download/<type>/<id>
  *     entry/edit/<type>/<id>
  *     entry/show/<type>/<id>
  *     entry/show/tag/<id>
  *     entry/view/<type><id>
  *     entry/show/all
  *     entry/show/<type>
  *     group/add
  *     group/delete/<id>
  *     group/edit/<id>
  *     help
  *     ledger/add
  *     ledger/delete/<id<>
  *     ledger/edit/<id>
  *     log
  *     log/clear
  *     report
  *     report/balancesheet
  *     report/ledgerst
  *     report/ledgerst<id>
  *     report/profitandloss
  *     report/reconciliation
  *     report/reconciliation/all
  *     report/reconciliation/pending
  *     report/trialbalance
  *     setting
  *     setting/account
  *     setting/backup
  *     setting/cf
  *     setting/email
  *     setting/entrytypes
  *     setting/entrytypes/add
  *     setting/entrytypes/delete/<id>
  *     setting/entrytypes/edit/<id>
  *     setting/printer
  *     tag
  *     tag/add
  *     tag/delete/<id>
  *     tag/edit/<id>
  *     update/index
  *     user/account
  *     user/login
  *     user/logout
  *     user/profile
  * 
  * 
  */
 
// ------------------------------------------------------------------------

if ( ! function_exists('ci2Joomla'))
{
    function ci2Joomla($url = '')
    {
        
        log_message('debug',"XAVOC_url_helper::map_url input = $url");
        
        $ci_routes = array(
            
            '!^(admin|setting)/(\w+)$!',
            '!^(admin|setting)/(\w+)/(\w+)$!',
            '!^(admin|setting)/(\w+)/(\w+)/(\w+)$!',
            
            '!^(entry)/(\w+)/(\w+)$!',
            '!^(entry)/(\w+)/(\w+)/(\w+)$!',
            
            '!^(\w+)$!',
            '!^(\w+)/(\w+)$!',
            '!^(\w+)/(\w+)/(\w+)$!'
                        
            
        );
        
        $joomla_routes = array(

            '&d=$1&c=$2',
            '&d=$1&c=$2&m=$3',
            '&d=$1&c=$2&m=$3&id=$4',

            '&c=$1&m=$2&type=$3',
            '&c=$1&m=$2&type=$3&id=$4',
            
            '&c=$1',
            '&c=$1&m=$2',
            '&c=$1&m=$2&id=$3'

        );
    
        $parts = explode('?', $url, 2);
        if (count($parts) == 1) {
            if (preg_match('!^\w+://! i', $parts[0])) {
                $base_url = $parts[0];
                $route = '';
            }
            else {
                $base_url = '';
                $route = $parts[0];
            }
        }
        else {
            $base_url = $parts[0];
            $route = $parts[1];
        }            
    
        if ($route == 'user/logout') {
            $url = $base_url;
        }

        else {
            $route = preg_replace($ci_routes, $joomla_routes, $route);
            $url = $base_url.'?option='.COMPONENT_NAME.$route;
        }
        
        $url = str_replace('??','?',$url);

        log_message('debug',"XAVOC_url_helper::map_url output = $url");
        
        return $url;

    }
}

// ------------------------------------------------------------------------

 /**
 * Com URL  - Return the base url of this component
 *
 * @access  public
 * @return  string
 */
if ( ! function_exists('com_url'))
{
    function com_url($url = '')
    {
        return base_url() . 'components/' . COMPONENT_NAME . '/';
    }
}

/**
 * Header Redirect - Override
 *
 * Header redirect in two flavors
 * For very fine grained control over headers, you could use the Output
 * Library's set_header() function.
 *
 * @access  public
 * @param   string  the URL
 * @param   string  the method: location or redirect
 * @return  string
 */
if ( ! function_exists('redirect'))
{
        function redirect($uri = '', $method = 'location', $http_response_code = 302) {
    
        //  $method and $http_response_code are ignored in this version...
        //  They should not be required, this is an internal software redirection.
    
        jimport('joomla.application.component.controller');
        $c=new JController();
        $c->setRedirect(ci2Joomla($uri));
        $c->redirect();
         
           
     }
}

// ------------------------------------------------------------------------

/**
 * Anchor Link - Override
 *
 * Creates an anchor based on the local URL.
 *
 * @access  public
 * @param   string  the URL
 * @param   string  the link title
 * @param   mixed   any attributes
 * @return  string
 */
if ( ! function_exists('anchor'))
{
    function anchor($uri = '', $title = '', $attributes = '')
    {
        $title = (string) $title;
        
        if ( ! is_array($uri))
        {
            $site_url = ( ! preg_match('!^\w+://! i', $uri)) ? site_url($uri) : $uri;
        }
        else
        {
            $site_url = site_url($uri);
        }

        if ($title == '')
        {
            $title = $site_url;
        }

        if ($attributes != '')
        {
            $attributes = _parse_attributes($attributes);
        }

        //  Reformat href url for Joomla:
        return '<a href="'. ci2Joomla($site_url) .'"'.$attributes.'>'.$title.'</a>';
    }
}

// ------------------------------------------------------------------------


