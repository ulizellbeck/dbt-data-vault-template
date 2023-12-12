
with source as (

    select * from {{ source('salesforce', 'leads') }}

),

renamed as (

    select
    
        "BATCHID" as batchid,
        "LEADID" as leadid,
        "CONTACTID" as contactid,
        "FIRST_NAME" as first_name,
        "LAST_NAME" as last_name,
        "EMAIL" as email,
        "COMPANY" as company,
        "LEAD_STATUS" as lead_status,
        "DATECREATED" as datecreated,
        "MODIFIEDDATE" as modifieddate

    from source

)

select * from renamed