find_package(PCRE2 CONFIG REQUIRED)

if(NOT TARGET libpcre2-8)
  if(TARGET PCRE2::8BIT)
    add_library(libpcre2-8 INTERFACE IMPORTED)
    target_link_libraries(libpcre2-8 INTERFACE PCRE2::8BIT)
  else()
    message(FATAL_ERROR "PCRE2::8BIT target is required to satisfy libpcre2-8")
  endif()
endif()

set(libpcre2-8_FOUND TRUE)