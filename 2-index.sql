/*
Выполните оптимизацию вашего запроса. 
Для этого создайте не менее трех индексов 
включая частичный, функциональный, included 
Приложите скрипты создания индексов, вывод explain analyze 
также ссылку на https://explain.tensor.ru/
*/

create index concurrently t_a_idx on t(a) INCLUDE (b, c);
-- ...

/*
Limit  (cost=0.29..6.64 rows=100 width=42) (actual time=0.113..0.355 rows=100 loops=1)
  ->  Index Scan Backward using t_a_c_idx on t  (cost=0.29..6344.29 rows=100000 width=42) (actual time=0.111..0.343 rows=100 loops=1)
Planning Time: 0.262 ms
Execution Time: 0.387 ms
*/

-- https://explain.tensor.ru/archive/explain/675....