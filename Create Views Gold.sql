
    -- CREATE VIEW CALENDAR
    --------------------
CREATE VIEW gold.calendar
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_Calendar',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------
    -- CREATE VIEW CUSTOMER
    -------

CREATE VIEW gold.customer
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_Customer',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------

    -- CREATE VIEW ProductCategory
CREATE VIEW gold.prodCat
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_ProductCategory',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------

    -- CREATE VIEW ProductSubcategories
CREATE VIEW gold.prodsubcat
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_ProductSubcategories',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------

    -- CREATE VIEW Returns
CREATE VIEW gold.returnss
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_Returns',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------

    -- CREATE VIEW SALES
CREATE VIEW gold.sales
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_Sales',
        FORMAT = 'PARQUET'
    )as Query1 

    -----------------

        -- CREATE VIEW Territories
CREATE VIEW gold.territories
AS
SELECT
    *
    FROM
    OPENROWSET(
        BULK 'https://awdatalakestoragemk.blob.core.windows.net/silver/AdventureWorks_Territories',
        FORMAT = 'PARQUET'
    )as Query1 