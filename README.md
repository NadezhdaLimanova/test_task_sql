# Тестовое задание

Дано две таблицы: Employee(таблица с информацией о сотрудниках) и Vacation(таблица с информацией об отпусках для сотрудников)

[Код для построения таблиц](https://github.com/NadezhdaLimanova/test_task_sql/blob/main/test_task_sql.sql) 

Задание:

Вывести коды и периоды отпусков сотрудников, которые были в отпуске одновременно в 2020 году.  
Одновременный отпуск - когда хотя бы 1 день отпусков у двух сотрудников совпадает.
Дополнение:
в случае декретного отпуска сотрудник мог уйти в отпуск в 2019-ом году, а вернуться в 2021-ом.
    
На выходе:
1. Таблица со столбцами (КодСотрудника1, НачалоОтпуска, КонецОтпуска, КодСотрудника2, НачалоОтпуска, КонецОтпуска)
2. Должна вернуться одна строка с парой "E01 - E03". При этом "E03 - E01" - это дубль, которого не должно быть в итоговом результате
Ограничения:
1. Правильными считаются решения без использования конструкций "group by", "distinct"
2. Нет дублирования кода
3. Решение должно быть без использования вспомогательных функций greatest(), least()
4. Засчитываются решения БЕЗ использования OR, CASE, CTE

## Решение задания:
[test_task_sql_solution](https://github.com/NadezhdaLimanova/test_task_sql/blob/main/test_task_sql_solution.sql)
