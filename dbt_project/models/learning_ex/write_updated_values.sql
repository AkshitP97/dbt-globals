{{ config(materialized='table') }}

SELECT * FROM {{ ref('custom_query') }}