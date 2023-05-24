WITH
    dim_customers as (
        select 
            {{ dbt_utils.generate_surrogate_key(['customer_id', 'company_name']) }} as sk_customer,
            * 
        from {{ref("stg_customers")}}
    )

SELECT * 
FROM dim_customers