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

$doc = JFactory::getDocument();

$doc->addStyleSheet(com_url() . 'assets/css/style.css');
$doc->addStyleSheet(com_url() . 'assets/css/tables.css');
$doc->addStyleSheet(com_url() . 'assets/css/custom.css');
$doc->addStyleSheet(com_url() . 'assets/css/menu.css');
$doc->addStyleSheet(com_url() . 'assets/css/jquery.datepick.css');
$doc->addStyleSheet(com_url() . 'assets/css/thickbox.css');

$doc->addScript(com_url() . 'assets/js/jquery.min.js">');
$doc->addScript(com_url() . 'assets/js/jquery.datepick.js');
$doc->addScript(com_url() . 'assets/js/custom.js');
$doc->addScript(com_url() . 'assets/js/hoverIntent.js');
$doc->addScript(com_url() . 'assets/js/superfish.js');
$doc->addScript(com_url() . 'assets/js/supersubs.js');
$doc->addScript(com_url() . 'assets/js/thickbox-compressed.js');
$doc->addScript(com_url() . 'assets/js/ezpz_tooltip.min.js');
$doc->addScript(com_url() . 'assets/js/shortcutslibrary.js');
$doc->addScript(com_url() . 'assets/js/shortcuts.js');

$data_account_date_format = $this->config->item('account_date_format');
$data_account_fy_start = date_mysql_to_php($this->config->item('account_fy_start'));
$data_account_fy_end = date_mysql_to_php($this->config->item('account_fy_end'));

$doc->addScriptDeclaration('var jsSiteUrl = "' . com_url() . '"; ');

$doc->addScriptDeclaration(<<<JAVASCRIPT
/* Loading JQuery Superfish menu */
$(document).ready(function() {
    $("ul.sf-menu").supersubs({ 
        minWidth:12,
        maxWidth:27,
        extraWidth: 1
    }).superfish(); // call supersubs first, then superfish, so that subs are 
    $('.datepicker').datepick({
        dateFormat: {$data_account_date_format},
    });
    $('.datepicker-restrict').datepick({
        dateFormat: {$data_account_date_format},
        minDate: {$data_account_fy_start},
        maxDate: {$data_account_fy_end},
    });
});
JAVASCRIPT
);

?><div id="container">
    <div id="header">
        <!--<div id="logo">
            <?php echo anchor('', 'Webzash', array('class' => 'anchor-link-b')); ?>
        </div>
        <?php
            if ($this->session->userdata('user_name')) {
                echo "<div id=\"admin\">";
                echo anchor('', 'Accounts', array('title' => "Accounts", 'class' => 'anchor-link-b'));
                echo " | ";
                echo anchor('user/profile', 'Profile', array('title' => "Profile", 'class' => 'anchor-link-b'));
                echo " | ";
                /* Check if allowed administer rights */
                if (check_access('administer')) {
                    echo anchor('admin', 'Administer', array('title' => "Administer", 'class' => 'anchor-link-b'));
                    echo " | ";
                }
                echo anchor('user/logout', 'Exit', array('title' => "Exit", 'class' => 'anchor-link-b'));
                echo "</div>";
            }
        ?>
        <div id="info">
            <?php
                echo $this->config->item('account_name');
                echo " (";
                echo anchor('user/account', 'change', array('title' => 'Change active account', 'class' => 'anchor-link-a'));
                echo ")<br />";
                echo "FY : ";
                echo date_mysql_to_php_display($this->config->item('account_fy_start'));
                echo " - ";
                echo date_mysql_to_php_display($this->config->item('account_fy_end'));
            ?>
        </div>-->
    </div>
    <div id="sf-menu">
        <ul class="sf-menu">
            <li class="current">
                <?php echo anchor('', 'Dashboard', array('title' => 'Dashboard')) ?>
<!--                <a href="<?php print base_url(); ?>" title="Dashboard">Dashboard</a>-->
            </li>
            <li>
                <?php echo anchor('account', 'Accounts', array('title' => 'Chart of accounts')); ?>
            </li>
            <li>
                <?php
                    /* Showing Entry Type sub-menu */
                    $entry_type_all = $this->config->item('account_entry_types');
                    $entry_type_count = count($entry_type_all);
                    if ($entry_type_count < 1)
                    {
                        echo "";
                    } else if ($entry_type_count == 1) {
                        foreach ($entry_type_all as $id => $row)
                        {
                            echo anchor('entry/show/' . $row['label'], $row['name'], array('title' => $row['name'] . ' Entries'));
                        }
                    } else {
                        echo anchor('entry/show/all', 'Entries', array('title' => 'Entries'));
                        echo "<ul>";
                        echo "<li>" . anchor('entry/show/all', 'All', array('title' => 'All Entries')) . "</li>";
                        foreach ($entry_type_all as $id => $row)
                        {
                            echo "<li>" . anchor('entry/show/' . $row['label'], $row['name'], array('title' => $row['name'] . ' Entries')) . "</li>";
                        }
                        echo "</ul>";
                    }
                ?>
            </li>
            <li>
                <?php echo anchor('report', 'Reports', array('title' => 'Reports')); ?>
                <ul>
                    <li><?php echo anchor('report/balancesheet', 'Balance Sheet', array('title' => 'Balance Sheet')); ?></li>
                    <li><?php echo anchor('report/profitandloss', 'Profit & Loss', array('title' => 'Profit & Loss')); ?></li>
                    <li><?php echo anchor('report/trialbalance', 'Trial Balance', array('title' => 'Trial Balance')); ?></li>
                    <li><?php echo anchor('report/ledgerst', 'Ledger Statement', array('title' => 'Ledger Statement')); ?></li>
                    <li><?php echo anchor('report/reconciliation/pending', 'Reconciliation', array('title' => 'Reconciliation')); ?></li>
                </ul>
            </li>
            <li>
                <?php echo anchor('setting', 'Settings', array('title' => 'Settings')); ?>
            </li>
            <?php
                /* Check if allowed administer rights */
                if (check_access('administer')) {
                    echo '<li>';
                    echo anchor('admin', 'Administer', array('title' => "Administer"));
                    echo '</li>';
                }
            ?>
            <li>
                <?php echo anchor('user/profile', 'Profile', array('title' => "Profile")); ?>
            </li>
            <li>
                <?php echo anchor('user/logout', 'Close', array('title' => "Close")); ?>
            </li>
            <li>
                <?php echo anchor('help', 'Help', array('title' => 'Help', 'class' => 'last')); ?>
            </li>
        </ul>
    </div>
    <div id="content">
        <div id="sidebar">
            <?php if (isset($page_sidebar)) echo $page_sidebar; ?>
        </div>
        <div id="main">
            <div id="main-title">
                <?php if (isset($page_title)) echo $page_title; ?>
            </div>
            <?php if (isset($nav_links)) {
                echo "<div id=\"main-links\">";
                echo "<ul id=\"main-links-nav\">";
                foreach ($nav_links as $link => $title) {
                    if ($title == "Print Preview")
                        echo "<li>" . anchor_popup($link, $title, array('title' => $title, 'class' => 'nav-links-item', 'style' => 'background-image:url(\'' . asset_url() . 'images/buttons/navlink.png\');', 'width' => '1024')) . "</li>";
                    else
                        echo "<li>" . anchor($link, $title, array('title' => $title, 'class' => 'nav-links-item', 'style' => 'background-image:url(\'' . asset_url() . 'images/buttons/navlink.png\');')) . "</li>";
                }
                echo "</ul>";
                echo "</div>";
            } ?>
            <div class="clear">
            </div>
            <div id="main-content">
                <?php echo $contents; ?>
                <?php
                $messages = $this->messages->get();
                if (is_array($messages))
                {
                    if (count($messages['success']) > 0)
                    {
                        echo "<div id=\"success-box\">";
                        echo "<ul>";
                        foreach ($messages['success'] as $message) {
                            echo ('<li>' . $message . '</li>');
                        }
                        echo "</ul>";
                        echo "</div>";
                    }
                    if (count($messages['error']) > 0)
                    {
                        echo "<div id=\"error-box\">";
                        echo "<ul>";
                        foreach ($messages['error'] as $message) {
                            if (substr($message, 0, 4) == "<li>")
                                echo ($message);
                            else
                                echo ('<li>' . $message . '</li>');
                        }
                        echo "</ul>";
                        echo "</div>";
                    }
                    if (count($messages['message']) > 0)
                    {
                        echo "<div id=\"message-box\">";
                        echo "<ul>";
                        foreach ($messages['message'] as $message) {
                            echo ('<li>' . $message . '</li>');
                        }
                        echo "</ul>";
                        echo "</div>";
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>
<div id="footer">
    <?php if (isset($page_footer)) echo $page_footer ?>
    <a href="http://webzash.org" target="_blank">Webzash<a/> is licensed under <a href="http://www.gnu.org/licenses/agpl-3.0.txt" target="_blank">GNU Affero General Public License, version 3</a> as published by the Free Software Foundation.
</div>
