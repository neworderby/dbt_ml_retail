select shopping_mall, count(invoice_no) as transactions, sum(quantity) as quantity, round(sum(revenue),2) as revenue 
from default.df_base
group by shopping_mall