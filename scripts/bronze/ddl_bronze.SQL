USE DataWarehouse;

/*
DDL Script: Create Bronze Tables
Script Purpose:
This script creates tables in the 'bronze' schema, dropping existing tables if they already exist.
Run this script to re-define the DDL structure of 'bronze' Tables
*/

/*
Make sure to check whether the table exists in a database, before creating it.
If the table already exists, then we can drop it and create a new one.

Script - 
-----------------------------------------------------
IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR,
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_maritial_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);
-----------------------------------------------------
*/

CREATE TABLE bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_maritial_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info(
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_name NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATE,
	prd_end_dt DATE
);

CREATE TABLE bronze.crm_sales_details(
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

CREATE TABLE bronze.erp_cust_az12(
	cid NVARCHAR,
	bdate DATE,
	gen NVARCHAR(50)
);

CREATE TABLE bronze.erp_loc_a101(
	cid NVARCHAR,
	cntry NVARCHAR(50)
);

CREATE TABLE bronze.erp_px_cat_g1v2(
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintainance NVARCHAR(50)
);
