b = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
c = FILTER b BY $4 >= 7200;

time_sec = Group c All;
timecount = foreach time_sec Generate COUNT(c);
dump timecount;
STORE timecount INTO '/user/edureka/may_16th_evening/pro/output_D/';
