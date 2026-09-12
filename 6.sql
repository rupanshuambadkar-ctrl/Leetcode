elect
    eu.unique_id,
    e.name
from
      employees e
left join
         employeeUNI eu ON e.id = eu.id;