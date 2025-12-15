-- G1_23BCS11290_Sambhav Mahajan
select customer_id, count(visit_id) count_no_trans
from visits v
where visit_id not in (
    select distinct visit_id from transactions
)
group by customer_id;
