{% macro log_start_time(model_ref)%}
 insert into FUNDS_MORNINGSTAR.FUNDS_RAW.AUDIT_TABLE(model_name,run_type,run_timestamp) 
            values ('{{ model_ref }}', 'start', current_timestamp() )
{% endmacro %}

{% macro log_end_time(model_ref)%}
 insert into FUNDS_MORNINGSTAR.FUNDS_RAW.AUDIT_TABLE(model_name,run_type,run_timestamp) 
            values ('{{ model_ref }}', 'start', current_timestamp() )
{% endmacro %}