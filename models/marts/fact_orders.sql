WITH
    customers as (
        SELECT * 
        FROM {{ref("dim_customers")}}
    ),

    orders as (
        SELECT *
        FROM {{ref("stg_orders")}}
    )

    SELECT
        customers.sk_customer,
        orders.*
    FROM orders LEFT JOIN customers 
    ON orders.customer_id = customers.customer_id