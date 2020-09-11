function(test)
  set(res "")
  # Empty string
  string_normalize_index("" 0)
  ans(res)
  assert("${res}" EQUAL 0)

  set(res "")
  # No value change (1/4)
  string_normalize_index("abc" 0)
  ans(res)
  assert("${res}" EQUAL 0)

  set(res "")
  # No value change (2/4)
  string_normalize_index("abc" 1)
  ans(res)
  assert("${res}" EQUAL 1)

  set(res "")
  # No value change (3/4)
  string_normalize_index("abc" 2)
  ans(res)
  assert("${res}" EQUAL 2)

  set(res "")
  # No value change (4/4)
  string_normalize_index("abc" 3)
  ans(res)
  assert("${res}" EQUAL 3)

  set(res "")
  # Negative index -1 equals string length
  string_normalize_index("abc" -1)
  ans(res)
  assert("${res}" EQUAL 3)

  set(res "")
  # Negative index (1/3)
  string_normalize_index("abc" -2)
  ans(res)
  assert("${res}" EQUAL 2)

  set(res "")
  # Negative index (2/3)
  string_normalize_index("abc" -3)
  ans(res)
  assert("${res}" EQUAL 1)

  set(res "")
  # Negative index (3/3)
  string_normalize_index("abc" -4)
  ans(res)
  assert("${res}" EQUAL 0)
endfunction()