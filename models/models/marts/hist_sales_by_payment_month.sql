select date(month_year) as month_year, payment_method,
sum(cast(SUBSTRING(revenue,1,position(revenue,'.')-1), 'int')) as revenue
from default.df_base
group by month_year, payment_method