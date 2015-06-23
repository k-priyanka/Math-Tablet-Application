##
## findmodule.cmake
#
## Copyright (C) 2009 Aldebaran Robotics
##
## Autogenerated by T001CHAIN.
## Do not edit


#get the current directory
get_filename_component(_ROOT_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)

clean(LIBSOAP)
set(LIBSOAP_INCLUDE_DIR  "${_ROOT_DIR}/../../../include/" CACHE STRING "" FORCE)
set(LIBSOAP_DEFINITIONS  "TIXML_USE_STL" CACHE STRING "" FORCE)
set(LIBSOAP_DEPENDS      "ALVALUE;LIBCORE;BOOST;PTHREAD;BOOST_SIGNALS;TOOLS;BOOST_FILESYSTEM;TINYXML"     CACHE STRING "" FORCE)

#cleanup this temp var
set(LIBSOAP_tempdebug "LIBSOAP_tempdebug-NOTFOUND" CACHE INTERNAL "Cleared." FORCE)

#try to get the debug lib
find_library(LIBSOAP_tempdebug libsoap_d PATHS "${_ROOT_DIR}/../../" NO_DEFAULT_PATH)


if (LIBSOAP_tempdebug)
  #use debug and optimized version
  flib(LIBSOAP OPTIMIZED libsoap   PATHS "${_ROOT_DIR}/../../")
  flib(LIBSOAP DEBUG     libsoap_d PATHS "${_ROOT_DIR}/../../")
else()
  #use the default lib
  flib(LIBSOAP libsoap PATHS "${_ROOT_DIR}/../../")
endif()

export_lib(LIBSOAP)