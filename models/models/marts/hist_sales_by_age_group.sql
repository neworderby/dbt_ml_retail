select age_group, count(invoice_no) as transactions, sum(quantity) as quantity, round(sum(revenue),2) as revenue 
from default.df_base
group by age_group order by age_group asc