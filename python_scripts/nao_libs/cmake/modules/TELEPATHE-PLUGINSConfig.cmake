##
## findmodule.cmake
#
## Copyright (C) 2009 Aldebaran Robotics
##
## Autogenerated by T001CHAIN.
## Do not edit


#get the current directory
get_filename_component(_ROOT_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)

clean(TELEPATHE-PLUGINS)
set(TELEPATHE-PLUGINS_INCLUDE_DIR  "${_ROOT_DIR}/../../../include/" CACHE STRING "" FORCE)
set(TELEPATHE-PLUGINS_DEFINITIONS  "TIXML_USE_STL;TIXML_USE_STL;TIXML_USE_STL;TIXML_USE_STL" CACHE STRING "" FORCE)
set(TELEPATHE-PLUGINS_DEPENDS      "TINYXML;ALCOMMON;LIBIPPC;BOOST_SERIALIZATION;BOOST_DATE_TIME;BOOST_THREAD;ALVALUE;LIBCORE;BOOST;PTHREAD;BOOST_SIGNALS;TOOLS;BOOST_FILESYSTEM;LIBFINDIPPC;DL;PROXIES;LIBSOAP;RTTOOLS;LIBTHREAD;BOOST_PROGRAM_OPTIONS;LIBFACTORY;PYTHON-STATIC;QT_QTCORE;QT_QTGUI"     CACHE STRING "" FORCE)

#cleanup this temp var
set(TELEPATHE-PLUGINS_tempdebug "TELEPATHE-PLUGINS_tempdebug-NOTFOUND" CACHE INTERNAL "Cleared." FORCE)

#try to get the debug lib
find_library(TELEPATHE-PLUGINS_tempdebug telepathe-plugins_d PATHS "${_ROOT_DIR}/../../" NO_DEFAULT_PATH)


if (TELEPATHE-PLUGINS_tempdebug)
  #use debug and optimized version
  flib(TELEPATHE-PLUGINS OPTIMIZED telepathe-plugins   PATHS "${_ROOT_DIR}/../../")
  flib(TELEPATHE-PLUGINS DEBUG     telepathe-plugins_d PATHS "${_ROOT_DIR}/../../")
else()
  #use the default lib
  flib(TELEPATHE-PLUGINS telepathe-plugins PATHS "${_ROOT_DIR}/../../")
endif()

export_lib(TELEPATHE-PLUGINS)