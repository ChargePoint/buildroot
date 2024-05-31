################################################################################
#
# python-x690
#
################################################################################

PYTHON_X690_VERSION = 1.0.0.post1
PYTHON_X690_SOURCE = x690-$(PYTHON_X690_VERSION).tar.gz
PYTHON_X690_SITE = https://files.pythonhosted.org/packages/78/5c/7fee7f6251575259453839f100301a0eaae6260b73762aa55de84573eee2
PYTHON_X690_SETUP_TYPE = setuptools
PYTHON_X690_LICENSE = BSD-3-Clause
PYTHON_X690_LICENSE_FILES = LICENSE.rst

$(eval $(python-package))
