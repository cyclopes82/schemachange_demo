-- R__repeatable_view.sql
-- This view will be recreated on every run

CREATE OR REPLACE VIEW customer_summary AS
SELECT 
    COUNT(*) as total_customers,
    COUNT(DISTINCT SUBSTRING(email, POSITION('@' IN email) + 1)) as unique_domains,
    MIN(created_at) as first_customer_date,
    MAX(created_at) as latest_customer_date
FROM customers;