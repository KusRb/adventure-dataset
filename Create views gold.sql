-- Create view calendar

CREATE VIEW gold.calendar
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view customers

CREATE VIEW gold.customers
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view Product Subcategories

CREATE VIEW gold.product_subcategories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view Products

CREATE VIEW gold.products
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view Sales

CREATE VIEW gold.sales
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view Territories

CREATE VIEW gold.territories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories',
    FORMAT = 'PARQUET'
) AS Query1

-- Create view Returns

CREATE VIEW gold.returns
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://krstoragedatalake.dfs.core.windows.net/silver/Returns',
    FORMAT = 'PARQUET'
) AS Query1

