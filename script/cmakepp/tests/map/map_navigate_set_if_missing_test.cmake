function(test)
    map_new()
    ans(m1)
    map_navigate_set_if_missing("m1.test" "hello")
    assert(DEREF "{m1.test}" STREQUAL "hello")
endfunction()