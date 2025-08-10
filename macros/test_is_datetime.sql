{% macro test_is_datetime(model, column_name) %}

  SELECT COUNT(*)
  FROM {{ model }}
  WHERE {{ column_name }} IS NOT NULL
    AND EXTRACT(YEAR FROM {{ column_name }}) IS NULL

{% endmacro %}
