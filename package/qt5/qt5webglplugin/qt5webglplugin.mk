################################################################################
#
# qt5webglplugin
#
################################################################################

QT5WEBGLPLUGIN_VERSION = $(QT5_VERSION)
QT5WEBGLPLUGIN_SITE = $(QT5_SITE)
QT5WEBGLPLUGIN_SOURCE = qtwebglplugin-$(QT5_SOURCE_TARBALL_PREFIX)-$(QT5WEBGLPLUGIN_VERSION).tar.xz
QT5WEBGLPLUGIN_DEPENDENCIES = qt5declarative qt5websockets

QT5WEBGLPLUGIN_LICENSE = GPL-3.0
QT5WEBGLPLUGIN_LICENSE_FILES = LICENSE.GPL3

$(eval $(qmake-package))
