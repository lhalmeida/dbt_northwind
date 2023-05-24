WITH 
    order_details as (
        select *
        from {{source('northwind','order_details')}}
    )

SELECT * from order_details 