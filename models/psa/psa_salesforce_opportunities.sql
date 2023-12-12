
with source as (

    select * from {{ source('salesforce', 'opportunities') }}

),

renamed as (

    select
    
        "BATCHID" as batchid,
        "OPPURTUNITYID" as opportunityid,
        "COMPANEXTID" as accountid,
        "AMOUNT" as amount,
        "PROJECT_NAME" as project_name,
        "OPPURTUNITY_NAME" as opportunity_name,
        "STAGE" as stage,
        "CLOSE_DATE" as close_date,
        "DATECREATED" as datecreated,
        "MODIFIEDDATE" as modifieddate

    from source

)

select * from renamed