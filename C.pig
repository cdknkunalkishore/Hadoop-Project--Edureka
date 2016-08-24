b = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
c = FILTER b BY $3 >= 3.0;
d = FILTER c BY $3 <= 4.0;
movie_list = FOREACH d GENERATE a2;

dump movie_list;
STORE movie_list INTO '/user/edureka/may_16th_evening/pro/output_C/';

