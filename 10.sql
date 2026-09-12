slecte a.machine_id,
round(avg(e.timestamp - s.timestamp),3)processing_time
from activity a
left join activity s
on a.machine_id = s.machine_id
and a.process_id = s.process_id
and s.activity_type = "start"
left join activity e
on e.activity_type = "end"
and a.machine_id = e.machine_id
and a.process_id = e.process_id
group by a.machine_id;