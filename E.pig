c = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
d = FOREACH c GENERATE a3;
f = GROUP d BY a3;

year_movie = FOREACH f GENERATE group, COUNT(d);
dump year_movie;
STORE year_movie INTO '/user/edureka/may_16th_evening/pro/output_E/';