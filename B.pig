b = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
c = FILTER b BY $3 >= 4.0;

rate_count = Group c All;
count = foreach rate_count Generate COUNT(c);
dump count;
STORE count INTO '/user/edureka/may_16th_evening/pro/output_B/';
