-- **DATA INSERT(according to Dbeaver)**

-- 1)Run once, outside this script, as root:
-- 2)SET GLOBAL local_infile = 1;

-- ========== CRM ==========
TRUNCATE TABLE bronze.crm_cust_info;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

TRUNCATE TABLE bronze.crm_prod_info;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prod_info
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

TRUNCATE TABLE bronze.crm_sales_details;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

-- ========== ERP ==========
TRUNCATE TABLE bronze.erp_cust_az12;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

TRUNCATE TABLE bronze.erp_loc_a101;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
LOAD DATA LOCAL INFILE 'C:/Users/Dev Thakkar/Downloads/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

-- ========== Verify ==========
SELECT 'crm_cust_info' AS table_name, COUNT(*) AS row_count FROM bronze.crm_cust_info
UNION ALL SELECT 'crm_prod_info',     COUNT(*) FROM bronze.crm_prod_info
UNION ALL SELECT 'crm_sales_details', COUNT(*) FROM bronze.crm_sales_details
UNION ALL SELECT 'erp_cust_az12',     COUNT(*) FROM bronze.erp_cust_az12
UNION ALL SELECT 'erp_loc_a101',      COUNT(*) FROM bronze.erp_loc_a101
UNION ALL SELECT 'erp_px_cat_g1v2',   COUNT(*) FROM bronze.erp_px_cat_g1v2;
