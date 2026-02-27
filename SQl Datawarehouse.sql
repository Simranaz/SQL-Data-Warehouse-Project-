-- Show existing databases
SHOW DATABASES;
-- Create main warehouse database
CREATE DATABASE IF NOT EXISTS Datawh;
-- Use it
USE Datawh;
-- Bronze Layer Table
CREATE TABLE bronze_crm_cust_info (
    cst_id INT PRIMARY KEY,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(50),
    cst_lastname VARCHAR(50),
    cst_marital_status VARCHAR(20),
    cst_gndr VARCHAR(10),
    cst_create_date DATE
);
CREATE TABLE bronze_crm_sales_details(
sls_ord_num	VARCHAR(50),
sls_prd_key	VARCHAR(50),
sls_cust_id	INT,
sls_order_dt INT,	
sls_ship_dt	INT,
sls_due_dt	INT,
sls_sales	INT,
sls_quantity INT,	
sls_price  INT
);
CREATE TABLE bronze_crm_prd_info(
prd_id	INT,
prd_key	VARCHAR(50),
prd_nm	VARCHAR(50),
prd_cost	INT,
prd_line	VARCHAR(50),
prd_start_dt datetime,	
prd_end_dt DATETIME
);
CREATE TABLE bronze_erp_LOC_A101(
CID	VARCHAR(50),
CNTRY VARCHAR(50)
);
CREATE TABLE bronze_erp_CUST_AZ12(
CID VARCHAR(50),
BDATE DATE,
GEN VARCHAR(50)
);
CREATE TABLE bronze_erp_PX_CAT_G1V2(
ID VARCHAR(50),
CAT	VARCHAR(50),
SUBCAT	VARCHAR(50),
MAINTENANCE VARCHAR(50)
);
