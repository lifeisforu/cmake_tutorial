set(my_string "hey hey hey")
set(match_string "ey")
string(REPLACE ${match_string} "i" first ${my_string})
string(REPLACE ${match_string} "o" second ${my_string} ${my_string})
message(${first})
message(${second})