function(test)

  function(tmp_fu)
    return(text1)
  endfunction()
  set(__ans abc)
  tmp_fu()
  assert(__ans)
  assert(${__ans} STREQUAL "text1")
  ans(the_returned_value)
  assert(the_returned_value)
  assert(${the_returned_value} STREQUAL "text1")
  set(__ans abc)
  function(temp_fu2)

  endfunction()
  temp_fu2()
  assert(__ans)
  # if function were overridable this would need to change to assert(NOT __ans)
  assert("${__ans}" STREQUAL "abc")

  set(__ans abc)
  function(temp_fu3)
    return()
  endfunction()
  temp_fu3()
  
  assert(NOT __ans)

endfunction()