string(RANDOM result)
message(${result})
string(RANDOM LENGTH 10 result)
message(${result})
string(RANDOM LENGTH 10 ALPHABET "abc5" result)
message(${result})
string(RANDOM LENGTH 10 ALPHABET "abc5" SEED 0 result)
message(${result})
string(RANDOM LENGTH 5 ALPHABET "0123456789" SEED 0 result)
message(${result})