<div>
	<div id="left-col">
		<div class="settings-container">
			<div class="settings-title">
				<?php echo anchor('report/balancesheet', 'Balance Sheet', array('title' => 'Balance Sheet')); ?>
			</div>
			<div class="settings-desc">
				Summary of financial balances 
			</div>
		</div>
		<div class="settings-container">
			<div class="settings-title">
				<?php echo anchor('report/profitandloss', 'Statement of Activities', array('title' => 'Profit and Loss Statement')); ?>
			</div>
			<div class="settings-desc">
				Funding sources compared against program expenses
			</div>
		</div>
    </div>
    <div id="right-col">
		<div class="settings-container">
			<div class="settings-title">
				<?php echo anchor('report/trialbalance', 'Trial Balance', array('title' => 'Trial Balance')); ?>
			</div>
			<div class="settings-desc">
				Current credit and debit balances for all ledger accounts
			</div>
		</div>
		<div class="settings-container">
			<div class="settings-title">
				<?php echo anchor('report/ledgerst', 'Ledger Statement', array('title' => 'Ledger Statement')); ?>
			</div>
			<div class="settings-desc">
				Detail debit and credit entries to each ledger account
			</div>
		</div>
        <div class="settings-container">
            <div class="settings-title">
                <?php echo anchor('report/reconciliation/pending', 'Reconciliation', array('title' => 'Reconciliation')); ?>
            </div>
            <div class="settings-desc">
                Verify account activities
            </div>
        </div>
	</div>
	<div id="right-col">

	</div>
</div>
<div class="clear">
</div>
