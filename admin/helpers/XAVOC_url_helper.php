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
 * Map CodeIgniter's segmented style URL to a query-string for Joomla component
 * 
 * 
 */

if ( ! function_exists('map_url'))
{
    function map_url($url = '')
    {

        
        log_message('debug',"XAVOC_url_helper::map_url input = $url");
        
        //return $url;

        
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

        $id = '';
        
        if (preg_match('!/delete/|/edit/|/view/|/show/!', $route)) {
            
            $i = strrpos($route, '/');
            $id = substr($route,$i+1);
            $route = substr($route,0,$i+1);        
        }
         
        log_message('debug',"XAVOC_url_helper::map_url base  = $base_url");
        log_message('debug',"XAVOC_url_helper::map_url route = $route");
        log_message('debug',"XAVOC_url_helper::map_url id    = $id");
        
        
        $ci['']                             = '';
        $ci['account']                      = '&c=account';
        $ci['admin']                        = '&d=admin';
        $ci['admin/create']                 = '&d=admin&c=create';
        $ci['admin/manage']                 = '&d=admin&c=manage';
        $ci['admin/manage/add']             = '&d=admin&c=manage&m=add';
        $ci['admin/manage/delete/']         = '&d=admin&c=manage&m=delete&id=';
        $ci['admin/manage/edit/']           = '&d=admin&c=manage&m=edit&id=';
        $ci['admin/setting']                = '&d=admin&c=setting';
        $ci['admin/status']                 = '&d=admin&c=status';
        $ci['admin/user']                   = '&d=admin&c=user';
        $ci['admin/user/create']            = '&d=admin&c=user&m=create';
        $ci['admin/user/delete/']           = '&d=admin&c=user&m=delete&id=';
        $ci['admin/user/edit/']             = '&d=admin&c=user&m=edit&id=';
        $ci['entry']                        = '&c=entry';
        $ci['entry/download']               = '&c=entry&m=download';
        $ci['entry/edit/']                  = '&c=entry&m=edit&id=';
        $ci['entry/show/']                  = '&c=entry&m=show&id=';
        $ci['entry/show/all']               = '&c=entry&m=show&id=all';
        $ci['entry/show/contra']            = '&c=entry&m=show&id=contra';
        $ci['entry/show/journal']           = '&c=entry&m=show&id=journal';
        $ci['entry/show/payment']           = '&c=entry&m=show&id=payment';
        $ci['entry/show/receipt']           = '&c=entry&m=show&id=receipt';
        $ci['entry/view/']                  = '&c=entry&m=view&id=';
        $ci['group/add']                    = '&c=group&m=add';
        $ci['group/delete/']                = '&c=group&m=delete&id=';
        $ci['group/edit/']                  = '&c=group&m=edit&id=';
        $ci['help']                         = '&c=help';
        $ci['ledger/add']                   = '&c=ledger&m=add';
        $ci['ledger/delete/']               = '&c=ledger&m=delete&id=';
        $ci['ledger/edit/']                 = '&c=ledger&m=edit&id=';
        $ci['log']                          = '&c=log';
        $ci['report']                       = '&c=report';
        $ci['report/balancesheet']          = '&c=report&m=balancesheet';
        $ci['report/ledgerst']              = '&c=report&m=ledgerst';
        $ci['report/profitandloss']         = '&c=report&m=profitandloss';
        $ci['report/reconciliation']        = '&c=report&m=reconciliation';
        $ci['report/reconciliation/all']    = '&c=report&m=reconciliation&id=all';
        $ci['report/reconciliation/pending']= '&c=report&m=reconciliation&id=pending';
        $ci['report/trialbalance']          = '&c=report&m=trialbalance';
        $ci['setting']                      = '&d=setting';
        $ci['setting/account']              = '&d=setting&c=account';
        $ci['setting/backup']               = '&d=setting&c=backup';
        $ci['setting/cf']                   = '&d=setting&c=cf';
        $ci['setting/email']                = '&d=setting&c=email';
        $ci['setting/entrytypes']           = '&d=setting&c=entrytypes';
        $ci['setting/entrytypes/add']       = '&d=setting&c=entrytypes&m=add';
        $ci['setting/entrytypes/delete/']   = '&d=setting&c=entrytypes&m=delete&id=';
        $ci['setting/entrytypes/edit/']     = '&d=setting&c=entrytypes&m=edit&id=';
        $ci['setting/printer']              = '&d=setting&c=printer';
        $ci['tag']                          = '&c=tag';
        $ci['tag/add']                      = '&c=tag&m=add';
        $ci['tag/delete/']                  = '&c=tag&m=delete&id=';
        $ci['tag/edit/']                    = '&c=tag&m=&edit&id=';
        $ci['update/index']                 = '&c=update&m=index';
        $ci['user/account']                 = '&c=user&m=account';
        $ci['user/login']                   = '&c=user&m=profile';
        $ci['user/logout']                  = '&c=user&m=profile';
        $ci['user/profile']                 = '&c=user&m=profile';
        
        if ($route == 'user/logout') {
            $url = $base_url;
        }

        elseif (array_key_exists($route, $ci)) {
            $route = $ci[$route] . $id;
            $url = $base_url.'?option='.COMPONENT_NAME.$route;
        }

        log_message('debug',"XAVOC_url_helper::map_url output = $url");
        
        return $url;
    }
}


function parse_codeigniter_route($route) {
    
    if (strpos($route, '/delete/') < 0 and strps($route, '/edit/') < 0) {
        
        return array($route);
    }
    $i = strrpos($route, '/');
    return array(substr($route,0,$i), substr($route,$i+1));        
}

/*
 *  Return the base url of this component 
 */

if ( ! function_exists('com_url'))
{
    function com_url($url = '')
    {
        return base_url() . 'components/' . COMPONENT_NAME . '/';
    }
}

/*
 * Patch codeigniter urls for Joo,la Components
 * 
 * 
 * 
 */

/**
 * Header Redirect
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
     function redirect($url,$msg=null,$msgType='message'){
         
        jimport('joomla.application.component.controller');
        $c=new JController();
        $c->setRedirect(map_url($url), $msg, $msgType);
        $c->redirect();
         
           
     }
}

// ------------------------------------------------------------------------

/**
 * Anchor Link
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

        return '<a href="'. map_url($site_url) .'"'.$attributes.'>'.$title.'</a>';
    }
}

// ------------------------------------------------------------------------


