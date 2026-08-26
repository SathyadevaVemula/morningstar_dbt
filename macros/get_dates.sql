{% macro get_dates(col)%}
{{col}} as original_date,
EXTRACT(YEAR FROM {{col}}) as date_year,
EXTRACT(MONTH FROM {{col}}) as date_month,
EXTRACT(DAYOFWEEK FROM {{col}}) as week_day
{% endmacro%}