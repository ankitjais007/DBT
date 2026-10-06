with date_dimesnion as (
    select
    to_timestamp(started_at) as started_at,
    date(to_timestamp(started_at)) as date_started_as,
    hour(to_timestamp(started_at)) as hour_started_as,
    {{day_type('STARTED_AT')}} as day_type,
    {{get_season('STARTED_AT')}} as station_of_year
    from 
    {{ source('demo', 'bike') }}
    where STARTED_AT != 'started_at'
)
select * from date_dimesnion