-- models/test_range_check.sql
{{ config(materialized='table') }}

with data as (
    select
        3 as value_a,
        1 as lower_bound,
        5 as upper_bound
)

select
    value_a,
    {{ keyrange_check('value_a','lower_bound','upper_bound') }} as value_within_range
from data
