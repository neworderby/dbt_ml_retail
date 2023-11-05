
select date(invoice_date) as invoice_date, 
gender, age_group, category, payment_method, shopping_mall,
sum(cast(SUBSTRING(revenue,1,position(revenue,'.')-1), 'int')) as revenue
from default.df_full_data
group by invoice_date, gender, age_group, category, payment_method, shopping_mall

