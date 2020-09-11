function(test)
    set(res "")
    # Word is transformed to upper case (1/3)
    set(input "edgar")
    string_toupper("${input}")
    ans(res)
    assert("${res}" STREQUAL "EDGAR")

    set(res "")
    # Word is transformed to upper case (2/3)
    set(input "Edgar")
    string_toupper("${input}")
    ans(res)
    assert("${res}" STREQUAL "EDGAR")

    set(res "")
    # Word is transformed to upper case (3/3)
    set(input "multiple Words")
    string_toupper("${input}")
    ans(res)
    assert("${res}" STREQUAL "MULTIPLE WORDS")

    set(res "")
    # Upper case string stays unchanged
    set(input "MULTIPLE WORDS")
    string_toupper("${input}")
    ans(res)
    assert("${res}" STREQUAL "MULTIPLE WORDS")

    set(res "")
    # Empty string
    set(input "")
    string_trim("${input}")
    ans(res)
    assert("${res}_" STREQUAL "_")
endfunction()