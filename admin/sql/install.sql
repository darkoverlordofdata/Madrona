

TRUNCATE TABLE webzash_entry_types;

INSERT INTO webzash_entry_types (`id`, `label`, `name`, `description`, `base_type`, `numbering`, `prefix`, `suffix`, `zero_padding`, `bank_cash_ledger_restriction`) VALUES (1, 'receipt', 'Receipt', 'Received in Bank account or Cash account', 1, 1, '', '', 0, 2);
INSERT INTO webzash_entry_types (`id`, `label`, `name`, `description`, `base_type`, `numbering`, `prefix`, `suffix`, `zero_padding`, `bank_cash_ledger_restriction`) VALUES (2, 'payment', 'Payment', 'Payment made from Bank account or Cash account', 1, 1, '', '', 0, 3);
INSERT INTO webzash_entry_types (`id`, `label`, `name`, `description`, `base_type`, `numbering`, `prefix`, `suffix`, `zero_padding`, `bank_cash_ledger_restriction`) VALUES (3, 'contra', 'Contra', 'Transfer between Bank account and Cash account', 1, 1, '', '', 0, 4);
INSERT INTO webzash_entry_types (`id`, `label`, `name`, `description`, `base_type`, `numbering`, `prefix`, `suffix`, `zero_padding`, `bank_cash_ledger_restriction`) VALUES (4, 'journal', 'Journal', 'Transfer between Non Bank account and Cash account', 1, 1, '', '', 0, 5);
INSERT INTO webzash_entry_types (`id`, `label`, `name`, `description`, `base_type`, `numbering`, `prefix`, `suffix`, `zero_padding`, `bank_cash_ledger_restriction`) VALUES (5, 'contrib', 'Contrib', 'Contribution to the organization', 1, 1, '', '', 0, 1);


TRUNCATE TABLE webzash_groups;

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (1, 0, 'Assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (2, 0, 'Liabilities', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (3, 0, 'Funding', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (4, 0, 'Expenses', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (5, 0, 'Suspense', 1);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (6, 1, '1: Assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (7, 2, '2: Liabilities', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (8, 2, '3: Equity', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (9, 3, '4: Contributions, Support', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (10, 3, '5: Earned Revenue', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (11, 3, '6: Other Revenue', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (12, 4, '7: Expenses - personnel related', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (13, 4, '8: Non-personnel related expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (14, 4, '9: Non-GAAP expenses', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (15, 6, '1000: Cash', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (16, 6, '1100: Accounts receivable', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (17, 6, '1200: Contributions receivable', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (18, 6, '1300: Other receivables', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (19, 6, '1400: Other assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (20, 6, '1500: Investments', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (21, 6, '1600: Fixed operating assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (22, 6, '1700: Accum deprec - fixed operating assets', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (23, 7, '2000: Payables', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (24, 7, '2100: Accrued liabilities', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (25, 7, '2300: Unearned/deferred revenue', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (26, 7, '2500: Short-term notes & loans payable', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (27, 7, '2700: Long-term notes & loans payable', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (28, 8, '3000: Unrestricted net assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (29, 8, '3100: Temporarily restricted net assets', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (30, 8, '3200: Permanently restricted net assets', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (31, 9, '4000: Revenue from direct contributions', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (32, 9, '4100: Donated goods & services revenue', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (33, 9, '4200: Revenue from non-government grants', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (34, 9, '4300: Revenue from split-interest agreements', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (35, 9, '4400: Revenue from indirect contributions', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (36, 9, '4500: Revenue from government grants', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (37, 10, '5000: Revenue from government agencies', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (38, 10, '5100: Revenue from program-related sales & fees', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (39, 10, '5200: Revenue from dues :', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (40, 10, '5300: Revenue from investments', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (41, 10, '5400: Revenue from other sources', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (42, 10, '5800: Special events', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (43, 11, '6800: Unrealized gain (loss)', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (44, 11, '6900: Net assets released from restriction', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (45, 12, '7000: Grants, contracts, & direct assistance:', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (46, 12, '7200: Salaries & related expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (47, 12, '7500: Contract service expenses:', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (48, 13, '8100: Nonpersonnel expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (49, 13, '8200: Facility & equipment expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (50, 13, '8300: Travel & meetings expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (51, 13, '8500: Other expenses', 0);
INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (52, 13, '8600: Business expenses', 0);

INSERT INTO webzash_groups (`id`, `parent_id`, `name`, `affects_gross`) VALUES (53, 14, '9800: Fixed asset purchases', 0);

TRUNCATE TABLE webzash_ledgers;

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (5, 15, '1010: Cash in bank-operating', '0.00', 'D', 1, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (6, 15, '1020: Cash in bank-payroll', '0.00', 'D', 1, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (7, 15, '1040: Petty cash', '0.00', 'D', 1, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (8, 15, '1070: Savings & short-term investments', '0.00', 'D', 1, 0);


INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (9, 16, '1110: Accounts receivable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (10, 16, '1115: Doubtful accounts allowance', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (11, 17, '1210: Pledges receivable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (12, 17, '1215: Doubtful pledges allowance', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (13, 17, '1225: Discounts - long-term pledges', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (14, 17, '1240: Grants receivable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (15, 17, '1245: Discounts - long-term grants', '0.00', 'D', 0, 0);


INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (16, 18, '1310: Employee & trustee receivables', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (17, 18, '1320: Notes/loans receivable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (18, 18, '1324: Doubtful notes/loans allowance', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (19, 19, '1410: Inventories for sale', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (20, 19, '1420: Inventories for use', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (21, 19, '1450: Prepaid expenses', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (22, 19, '1460: Accrued revenues', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (23, 20, '1510: Marketable securities ', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (24, 20, '1530: Land held for investment', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (25, 20, '1540: Buildings held for investment', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (26, 20, '1545: Accum deprec - bldg investment', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (27, 20, '1580: Investments - other', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (28, 21, '1610: Land - operating', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (29, 21, '1620: Buildings - operating', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (30, 21, '1630: Leasehold improvements', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (31, 21, '1640: Furniture, fixtures, & equip', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (32, 21, '1650: Vehicles', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (33, 21, '1660: Construction in progress', '0.00', 'D', 0, 0);
	
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (34, 22, '1725: Accum deprec - building', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (35, 22, '1735: Accum amort - leasehold improvements', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (36, 22, '1745: Accum deprec - furn,fix,equip', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (37, 22, '1755: Accum deprec - vehicles', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (38, 6, '1810: Other long-term assets', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (39, 6, '1850: Split-interest agreements', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (40, 6, '1910: Collections - art, etc', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (41, 6, '1950: Funds held in trust by others', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (42, 23, '2010: Accounts payable', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (43, 23, '2020: Grants & allocations payable', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (44, 24, '2110: Accrued  payroll', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (45, 24, '2120: Accrued paid leave', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (46, 24, '2130: Accrued payroll taxes', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (47, 24, '2140: Accrued sales taxes', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (48, 24, '2150: Accrued expenses - other', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (49, 25, '2310: Deferred contract revenue', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (50, 25, '2350; Unearned/deferred revenue - other', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (51, 7, '2410: Refundable advances', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (52, 26, '2510: Trustee & employee loans payable', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (53, 26, '2550: Line of credit', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (54, 26, '2560: Current portion - long-term loan', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (55, 26, '2570: Short-term liabilities - other', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (56, 7, '2610: Split-interest liabilities', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (57, 27, '2710: Bonds payable', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (58, 27, '2730: Mortgages payable', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (59, 27, '2750: Capital leases', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (60, 27, '2770: Long-term liabilities - other', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (61, 7, '2810: Govt-owned fixed assets liability', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (62, 7, '2910: Custodial funds', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (63, 28, '3010: Unrestricted net assets', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (64, 28, '3020: Board-designated net assets', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (65, 28, '3030: Board designated quasi-endowment', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (66, 28, '3040: Fixed operating net assets', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (67, 29, '3110: Use restricted net assets', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (68, 29, '3120: Time restricted net assets', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (69, 30, '3210; Endowment net assets', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (70, 31, '4010: Individual/small business contributions', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (71, 31, '4020: Corporate contributions', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (72, 31, '4070: Legacies & bequests', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (73, 31, '4075: Uncollectible pledges - estimated', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (74, 31, '4085: Long-term pledges discount', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (75, 32, '4110: Donated professional services-GAAP', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (76, 32, '4120: Donated other services - non-GAAP', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (77, 32, '4130: Donated use of facilities', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (78, 32, '4140: Gifts in kind - goods', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (79, 32, '4150: Donated art, etc', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (80, 33, '4210: Corporate/business grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (81, 33, '4230: Foundation/trust grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (82, 33, '4250: Nonprofit organization grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (83, 33, '4255: Discounts - long-term grants', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (84, 34, '4310: Split-interest agreement contributions', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (85, 34, '4350; Gain (loss) split-interest agreements', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (86, 35, '4410: United Way or CFC contributions', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (87, 35, '4420: Affiliated organizations revenue', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (88, 35, '4430: Fundraising agencies revenue', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (89, 36, '4510: Agency (government) grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (90, 36, '4520: Federal grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (91, 36, '4530; State grants', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (92, 36, '4540: Local government grants', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (93, 37, '5010: Agency (government) contracts/fees', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (94, 37, '5020: Federal contracts/fees', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (95, 37, '5030: State contracts/fees', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (96, 37, '5040: Local government contracts/fees', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (97, 37, '5080: Medicare/Medicaid payments', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (98, 38, '5180: Program service fees', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (99, 38, '5185: Bad debts, est - program fees ', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (100, 39, '5210: Membership dues-individuals', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (101, 39, '5220: Assessments and dues-organizations', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (102, 40, '5310: Interest-savings/short-term investments', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (103, 40, '5320: Dividends & interest - securities', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (104, 40, '5330; Real estate rent - debt-financed', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (105, 40, '5335: Real estate rental cost - debt-financed', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (106, 40, '5340: Real estate rent - not debt-financed', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (107, 40, '5345: Real estate rental cost - not debt-financed', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (108, 40, '5350: Personal property rent', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (109, 40, '5355: Personal property rental cost', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (110, 40, '5360: Other investment income', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (111, 40, '5370: Securities sales - gross', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (112, 40, '5375: Securities sales cost ', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (113, 41, '5410: Non-inventory sales - gross', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (114, 41, '5415: Non-inventory sales cost ', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (115, 41, '5440: Gross sales - inventory', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (116, 41, '5445: Cost of inventory sold ', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (117, 41, '5450: Advertising revenue', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (118, 41, '5460; Affiliate revenues from other entities', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (119, 41, '5490: Misc revenue', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (120, 42, '5810: Special events - non-gift revenue', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (121, 42, '5820: Special events - gift revenue', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (122, 43, '6810: Unrealized gain (loss) - investments', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (123, 43, '6820: Unrealized gain (loss) - other assets', '0.00', 'C', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (124, 44, '6910: Satisfaction of use restriction', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (125, 44, '6920: LB&E acquisition satisfaction', '0.00', 'C', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (126, 44, '6930: Time restriction satisfaction', '0.00', 'C', 0, 0);



INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (127, 45, '7010: Contracts - program-related', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (128, 45, '7020: Grants to other organizations', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (129, 45, '7040: Awards & grants - individuals', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (130, 45, '7050: Specific assistance - individuals', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (132, 45, '7060: Benefits paid to or for members', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (133, 46, '7210: Officers & directors salaries', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (134, 46, '7220: Salaries & wages - other', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (135, 46, '7230: Pension plan contributions', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (136, 46, '7240: Employee benefits - not pension', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (137, 46, '7250: Payroll taxes, etc.', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (138, 47, '7510: Fundraising fees', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (139, 47, '7520: Accounting fees', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (140, 47, '7530: Legal fees', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (141, 47, '7540: Professional fees - other', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (142, 47, '7550: Temporary help - contract', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (144, 47, '7580: Donated professional services - GAAP', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (145, 47, '7590: Donated other services - non-GAAP', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (146, 48, '8110: Supplies', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (147, 48, '8120: Donated materials & supplies', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (148, 48, '8130: Telephone & telecommunications', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (149, 48, '8140: Postage & shipping', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (150, 48, '8150: Mailing services', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (151, 48, '8170: Printing & copying', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (152, 48, '8180: Books, subscriptions, references', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (153, 48, '8190: In-house publications', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (154, 49, '8210: Rent, parking, other occupancy', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (155, 49, '8220: Utilities', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (156, 49, '8230: Real estate taxes', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (157, 49, '8240: Personal property taxes', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (158, 49, '8250: Mortgage interest', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (159, 49, '8260: Equipment rental & maintenance', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (160, 49, '8270: Deprec & amort - allowable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (161, 49, '8280: Deprec & amort - not allowable', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (162, 49, '8290: Donated facilities ', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (163, 50, '8310: Travel', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (164, 50, '8320: Conferences, conventions, meetings', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (165, 51, '8510: Interest-general', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (166, 51, '8520: Insurance - non-employee related', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (167, 51, '8530: Membership dues - organization', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (168, 51, '8540: Staff development', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (169, 51, '8550: List rental', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (170, 51, '8560: Outside computer services', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (171, 51, '8570: Advertising expenses', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (172, 51, '8580: Contingency provisions', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (173, 51, '8590: Other expenses', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (174, 52, '8610: Bad debt expense ', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (175, 52, '8620: Sales taxes', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (176, 52, '8630: UBITaxes ', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (177, 52, '8650: Taxes - other', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (178, 52, '8660: Fines, penalties, judgments', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (179, 52, '8670: Organizational (corp) expenses', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (180, 53, '9810: Capital purchases - land', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (181, 53, '9820: Capital purchases - building', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (182, 53, '9830: Capital purchases - equipment', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (183, 53, '9840: Capital purchases - vehicles', '0.00', 'D', 0, 0);

INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (184, 14, '9910: Payments to affiliates', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (185, 14, '9920: Additions to reserves', '0.00', 'D', 0, 0);
INSERT INTO webzash_ledgers (`id`, `group_id`, `name`, `op_balance`, `op_balance_dc`, `type`, `reconciliation`) VALUES (186, 14, '9930: Program administration allocations', '0.00', 'D', 0, 0);


TRUNCATE TABLE webzash_settings;

INSERT INTO webzash_settings (`id`, `name`, `address`, `email`, `fy_start`, `fy_end`, `currency_symbol`, `date_format`, `timezone`, `manage_inventory`, `account_locked`, `email_protocol`, `email_host`, `email_port`, `email_username`, `email_password`, `print_paper_height`, `print_paper_width`, `print_margin_top`, `print_margin_bottom`, `print_margin_left`, `print_margin_right`, `print_orientation`, `print_page_format`, `database_version`) VALUES (1, 'bruce', 'demo account', '', '2011-01-01 00:00:00', '2011-12-31 23:59:59', 'USD', 'mm/dd/yyyy', 'UM8', 0, 0, '', '', 0, '', '', '0', '0', '0', '0', '0', '0', '', '', 4);


TRUNCATE TABLE webzash_tags;

INSERT INTO webzash_tags (`id`, `title`, `color`, `background`) VALUES (3, 'Match$', 'FFFFFF', '00DE00');
INSERT INTO webzash_tags (`id`, `title`, `color`, `background`) VALUES (4, 'MatchHRs', 'FFFFFF', '0000DE');

