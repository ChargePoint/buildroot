################################################################################
#
# qt5declarative
#
################################################################################

#
# Licensed package from QT is not available publicly and so use
# the internal site to download the package. This is generated
# from the qt-everything tarball release as follows.
#
#    tar -xJf qt-everywhere-src-5.15.12.tar.xz
#    cd qt-everywhere-src-5.15.12
#    tar --transform=s/^qtdeclarative/qtbase-5.15.12/ \
#        -cvjf chargepoint-qtdeclarative-5.15.12.tar.bz2 qtdeclarative
#
# Then publish the resulting tarball into the qt5base directory
#
QT5DECLARATIVE_VERSION = 5.15.12
QT5DECLARATIVE_SITE = $(BR2_PRIMARY_SITE)/qt5declarative
QT5DECLARATIVE_SOURCE = chargepoint-qtdeclarative-$(QT5DECLARATIVE_VERSION).tar.bz2
QT5DECLARATIVE_INSTALL_STAGING = YES
QT5DECLARATIVE_SYNC_QT_HEADERS = YES

QT5DECLARATIVE_LICENSE = GPL-2.0+ or LGPL-3.0, GPL-3.0 with exception(tools), GFDL-1.3 (docs)
QT5DECLARATIVE_LICENSE_FILES = LICENSE.GPL2 LICENSE.GPL3 LICENSE.GPL3-EXCEPT LICENSE.LGPL3 LICENSE.FDL

$(eval $(qmake-package))
