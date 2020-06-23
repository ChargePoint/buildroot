################################################################################
#
# python-invoke
#
################################################################################

PYTHON_INVOKE_VERSION = 1.3.0
PYTHON_INVOKE_SOURCE = $(PYTHON_INVOKE_VERSION).tar.gz
PYTHON_INVOKE_SITE = https://github.com/pyinvoke/invoke/archive
PYTHON_INVOKE_SETUP_TYPE = setuptools

$(eval $(python-package))
