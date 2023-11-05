select date(month_year) as month_year, gender, age_group, category, payment_method, shopping_mall, 
sum(cast(SUBSTRING(revenue,1,position(revenue,'.')-1), 'int')) as revenue
from default.df_full_data
group by month_year, gender, age_group, category, payment_method, shopping_mall
