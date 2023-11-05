select age_group, sum(cast(SUBSTRING(revenue,1,position(revenue,'.')-1), 'int')) as revenue
from default.df_base
group by age_group order by age_group asc