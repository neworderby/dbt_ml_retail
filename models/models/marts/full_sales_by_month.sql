select invoice_date as invoice_date, gender, age_group, category, payment_method, shopping_mall, 
round(sum(revenue),2) as revenue 
from default.df_predict
group by invoice_date, gender, age_group, category, payment_method, shopping_mall
