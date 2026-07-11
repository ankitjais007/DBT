{# select * from
{{ source('source', 'fact_sales') }} #}


select * from
{{ ref('bronze_sales')}}
where gross_amount <0 and net_amount < 0