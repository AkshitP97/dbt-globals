{% macro keyrange_check(key_value,low_value,high_value) -%}
    
    {% set msg_minimum = 'KEY VALUE < MINIMUM SET TO MINIMUM KEY NUM CALCULATED VALUE MINIMUM =' %}
    {% set msg_maximum = 'KEY VALUE > MAXIMUM SET TO MAXIMUM KEU NUM CALCULATED VALUE MAXIMUM =' %}
    
    {% if key_value < low_value %}
        {% set key_value = low_value %}
    {% elif key_value > high_value %}
        {% set key_value = high_value %}
    {% endif %}

    {{key_value}}
{%- endmacro %}