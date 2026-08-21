# Write your MySQL query statement below
select m.machine_id ,ROUND(avg(p.timestamp-m.timestamp),3)  as processing_time
from activity m 
join activity p on m.machine_id = p.machine_id AND m.process_id = p.process_id
where m.activity_type = 'start' and p.activity_type = 'end'
group by m.machine_id;