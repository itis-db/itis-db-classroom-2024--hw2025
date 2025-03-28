/*
 Написать select по индивидуальным проектам 
 используя не менее 3 join-ов и 3 условий where включая and и or
 также приложить ссылку на https://explain.tensor.ru/ по вашему запросу 
*/

explain analyze 
select * from a1 join b2 using(key) join c3 ... 
where cond1 and cond2 or cond3;

-- https://explain.tensor.ru/archive/explain/675....