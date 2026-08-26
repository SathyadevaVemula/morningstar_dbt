select *, 
{{get_dates('SIGNUP_DATE')}}
from {{source('funds_raw', 'DIM_CUSTOMER')}}