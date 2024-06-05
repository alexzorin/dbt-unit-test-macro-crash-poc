{{ config(materialized='incremental') }}

with source_data as (
    select {{ example_macro() }} as id
)

select *
from source_data
