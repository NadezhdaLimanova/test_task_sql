select 
  e1.Code as КодСотрудника1
  ,v1.DateBegin as НачалоОтпуска1
  ,v1.DateEnd as КонецОтпуска1
  ,e2.Code as КодСотрудника2
  ,v2.DateBegin as НачалоОтпуска2
  ,v2.DateEnd as КонецОтпуска2
from  Employee as e1
  join Vacation as v1 on e1.ID = v1.ID_Employee
  join Employee as e2 on e1.ID < e2.ID
  join Vacation as v2 on e2.ID = v2.ID_Employee
where (v1.DateBegin <= '2020-12-31' and v1.DateEnd >= '2020-01-01')
  and (v2.DateBegin <= '2020-12-31' and v2.DateEnd >= '2020-01-01')
  and 
    (v1.Datebegin <= v2.DateEnd and v1.DateEnd >= v2.DateBegin)
order by КодСотрудника1, КодСотрудника2;