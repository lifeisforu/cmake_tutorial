set(VAR "value")

function(foo)
    set(VAR "modified_value")
    set(VAR2 "value2")
endfunction()

foo()
message(${VAR})
message(${VAR2})