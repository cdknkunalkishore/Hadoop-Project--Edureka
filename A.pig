b = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
c = FILTER b BY $2 >= 1950;
d = FILTER c BY $2 <= 1960;
date_count = Group d All;
count = foreach date_count Generate COUNT(d);
dump count;
STORE count INTO '/user/edureka/may_16th_evening/pro/output/';