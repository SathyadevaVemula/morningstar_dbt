{% set payment = ["bank_transfer", "credit_card", "gifts"] %}

SELECT A,

{% for payment in payment %}
    case when payment = '{{payment}}' then amount end as {{payment}}_amount
    {% if not loop.last%} , {%endif%}
{% endfor %}
from dshbfvweuf
