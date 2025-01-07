CREATE MASTER KEY ENCRYPTION BY PASSWORD = Password

CREATE DATABASE SCOPED CREDENTIAL cred_mkcrd
WITH 
IDENTITY = 'Managed Identity'
    

  CREATE EXTERNAL DATA SOURCE source_silver
    WITH
    (
        LOCATION = 'https://awdatalakestoragemk.blob.core.windows.net/silver',
        CREDENTIAL = cred_mkcrd
    )

    CREATE EXTERNAL DATA SOURCE source_gold
    WITH
    (
        LOCATION = 'https://awdatalakestoragemk.blob.core.windows.net/gold',
        CREDENTIAL = cred_mkcrd
    )

        
    CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

----------
-- CREATE EXTERNAL Table ExtSales
-------------------------------


CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.sales

    ----------
-- CREATE EXTERNAL Table Extcalendar
-------------------------------


CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.calendar
----------
-- CREATE EXTERNAL Table Extcustomer
-------------------------------
CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.customer
----------
-- CREATE EXTERNAL Table ExtProductCategory
-------------------------------
CREATE EXTERNAL TABLE gold.extprodCat
WITH
(
    LOCATION = 'extprodCat',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.prodCat

----------
-- CREATE EXTERNAL Table ExtProductSubcategories
-------------------------------

CREATE EXTERNAL TABLE gold.extprodsubcat
WITH
(
    LOCATION = 'extprodsubcat',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.prodsubcat

----------
-- CREATE EXTERNAL Table ExtReturnss
-------------------------------


CREATE EXTERNAL TABLE gold.extreturnss
WITH
(
    LOCATION = 'extreturnss',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.returnss
----------
-- CREATE EXTERNAL Table ExtTerritories
 
CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE =source_gold,
    FILE_FORMAT = format_parquet

) AS    
    SELECT * FROM gold.territories



