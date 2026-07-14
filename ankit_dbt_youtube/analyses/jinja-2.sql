{%- set apples = ["Gala","Red Delicious","Granny Smith","Fuji","Honeycrisp","McIntosh"] -%}

{% for i in apples %}
    {% if i!="McIntosh"%}
        {{i}}
    {% else %}
        {{i}} is not a good apple    
    {% endif %}
{% endfor %}