##
## findmodule.cmake
#
## Copyright (C) 2009 Aldebaran Robotics
##
## Autogenerated by T001CHAIN.
## Do not edit


#get the current directory
get_filename_component(_ROOT_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)

clean(LIBTHREAD)
set(LIBTHREAD_INCLUDE_DIR  "${_ROOT_DIR}/../../../include/libthread/;${_ROOT_DIR}/../../../include/" CACHE STRING "" FORCE)
set(LIBTHREAD_DEFINITIONS  "" CACHE STRING "" FORCE)
set(LIBTHREAD_DEPENDS      "LIBCORE;BOOST;PTHREAD;BOOST_SIGNALS;TOOLS;BOOST_FILESYSTEM;ALVALUE"     CACHE STRING "" FORCE)

#cleanup this temp var
set(LIBTHREAD_tempdebug "LIBTHREAD_tempdebug-NOTFOUND" CACHE INTERNAL "Cleared." FORCE)

#try to get the debug lib
find_library(LIBTHREAD_tempdebug libthread_d PATHS "${_ROOT_DIR}/../../" NO_DEFAULT_PATH)


if (LIBTHREAD_tempdebug)
  #use debug and optimized version
  flib(LIBTHREAD OPTIMIZED libthread   PATHS "${_ROOT_DIR}/../../")
  flib(LIBTHREAD DEBUG     libthread_d PATHS "${_ROOT_DIR}/../../")
else()
  #use the default lib
  flib(LIBTHREAD libthread PATHS "${_ROOT_DIR}/../../")
endif()

export_lib(LIBTHREAD)