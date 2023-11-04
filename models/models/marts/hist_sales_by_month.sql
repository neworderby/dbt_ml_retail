select month(invoice_date)   as invoice_date_month,
count(invoice_no) as transactions, sum(quantity) as quantity, round(sum(revenue),2) as revenue 
from default.df_base
group by month(invoice_date) 
