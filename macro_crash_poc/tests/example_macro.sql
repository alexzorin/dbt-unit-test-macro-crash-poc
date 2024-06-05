{{ config(tags=['unit-test']) }}

{% call dbt_unit_testing.test ('my_first_dbt_model', 'Full refresh') %}
  {% call dbt_unit_testing.expect() %}
    select
        '123' as id
  {% endcall %}
{% endcall %}

-- Comment out everything from this line down to make it pass,
-- OR rename the file to be e.g. example_macro.test.sql.

UNION ALL

{% call dbt_unit_testing.test ('my_first_dbt_model', 'Incremental', options={"run_as_incremental": "True"}) %}
  {% call dbt_unit_testing.expect() %}
    select
        '123' as id
  {% endcall %}
{% endcall %}
