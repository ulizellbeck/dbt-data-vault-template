with source as (

    select * from {{ source('salesforce', 'accounts') }}

),

renamed as (

    select
    
        "BATCHID" as batchid,
        "COMPANYEXTID" as accountid,
        "COMPANY_NAME" as company_name,
        "CITY" as city,
        "STATE" as state,
        "DATECREATED" as datecreated,
        "MODIFIEDDATE" as modifieddate

    from source

)

select * from renamed