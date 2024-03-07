{{ config(materialized='table') }}

SELECT a, b, c, d
FROM rugged-lacing-410712.dbt_global_table.global