c = LOAD '/user/edureka/may_16th_evening/pro/input/A.txt' using PigStorage(',') AS (a1:Biginteger, a2:chararray, a3:int, a4:float, a5:long);
movie_count = Group c All;
movie = foreach movie_count Generate COUNT(c);
dump movie;
STORE movie INTO '/user/edureka/may_16th_evening/pro/output_F/';


