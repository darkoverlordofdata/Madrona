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
 * <null>                          = index.php?option=com_madrona
 * admin                           = index.php?option=com_madrona&view=admin
 * user/profile                    = index.php?option=com_madrona&view=user&layout=profile
 * .../index.php                   = .../index.php?option=com_madrona
 * .../index.php?admin             = .../index.php?option=com_madrona&view=admin
 * .../index.php?user/profile      = .../index.php?option=com_madrona&view=user&layout=profile
 */

if ( ! function_exists('map_url'))
{
    function map_url($url = '')
    {
        
        $component = '?option=com_madrona';
        
        if (preg_match('!^\w+://! i', $url)) {      //  Starts with protocol
            
            if (stripos($url, '/index.php') < 0) {  //  does not contain site root
                return $url;                        //  pass thru
            }
            
            $split =  explode('?', $url, 2);
            $first = $split[0];
            $rest = @$split[1]; 
            
        }
        else {
            $first = 'index.php';
            $rest = $url;
        }

        $par = explode('/', $rest, 2);
        if (sizeof($par) == 1) {
            if ($par[0] == '') {
                return $first . $component;   
            }
            else {
                return $first . $component . '&view=' . $par[0];
            }
        }
        else {
            return $first . $component . '&view=' . $par[0] . '&layout=' . $par[1];
        }
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
         
        /*

        if ($url == '') {
    
            $c->setRedirect("index.php?option=com_madrona", $msg, $msgType);
            $c->redirect();
            
        }
        else
        { 
            $u = explode("/", $url);
      
            $c->setRedirect("index.php?option=com_madrona&view=$u[0]&layout=$u[1]", $msg, $msgType);
            $c->redirect();
        }
         */
           
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


