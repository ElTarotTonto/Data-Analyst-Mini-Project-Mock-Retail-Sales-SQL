select count (*)
from public."Sales";

select count (*)
from public."Stores";


select *
from public."Sales" S
Join public."Stores" ST
on S."Store" = ST."Store";



select distinct "Type"
from public."Sales" S
Join public."Stores" ST
on S."Store" = ST."Store";

select "Dept", "Weekly_Sales"
from public."Sales"
join public."Stores"
on "Sales"."Store" = "Stores"."Store"
group by "Dept", "Weekly_Sales";



select ST."Type",
sum(Case when S."Dept" = '99' then S."Weekly_Sales" else 0 end) as Department_99_Sales,
sum(Case when S."Dept"='99' and S."IsHoliday" = 'true' then S."Weekly_Sales" else 0 end) as Department_99_Holiday_Sales,
sum(Case when S."Dept"='99' and S."IsHoliday" = 'false' then S."Weekly_Sales" else 0 end) as Department_99_Non_Holiday_Sales
from public."Sales" S
Join public."Stores" ST
on S."Store" = ST."Store"
Group by ST."Type";


