##
## findmodule.cmake
## Copyright (C) 2009 Aldebaran Robotics
##
## Autogenerated by T001CHAIN.
## Do not edit


#get the current directory
get_filename_component(_ROOT_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)

clean(TELEPATHE)
fprogram(TELEPATHE_binary telepathe-bin)
set(TELEPATHE_EXECUTABLE ${TELEPATHE_binary} CACHE STRING "" FORCE)
export_bin(TELEPATHE)