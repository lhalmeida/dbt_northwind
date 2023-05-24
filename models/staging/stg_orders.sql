WITH 
    orders as (
        select *
        from {{source('northwind','orders')}}
    )

SELECT * from orders 