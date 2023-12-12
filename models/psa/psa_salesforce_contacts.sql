
with source as (

    select * from {{ source('salesforce', 'contacts') }}

),

renamed as (

    select
    
        "BATCHID" as batchid,
        "CONTACTID" as contactid,
        "COMPANYEXTID" as accountid,
        "FIRST_NAME" as first_name,
        "LAST_NAME" as last_name,
        "EMAIL" as email,
        "COUNTRY" as country,
        "DATECREATED" as datecreated,
        "MODIFIEDDATE" as modifieddate

    from source

)

select * from renamed