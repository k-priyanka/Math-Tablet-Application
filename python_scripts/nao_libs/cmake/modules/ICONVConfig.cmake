##
## Login : <ctaf@localhost.localdomain>
## Started on  Thu Jun 12 15:19:44 2008 Cedric GESTES
## $Id$
##
## Author(s):
##  - Cedric GESTES <gestes@aldebaran-robotics.com>
##
## Copyright (C) 2008 Aldebaran Robotics

include("${TOOLCHAIN_DIR}/cmake/libfind.cmake")

clean(ICONV)
fpath(ICONV iconv.h)
flib(ICONV iconv)
export_lib(ICONV)