################################################################################
#
# python-scp
#
################################################################################

PYTHON_SCP_VERSION = 0.13.2
PYTHON_SCP_SOURCE = scp-$(PYTHON_SCP_VERSION).tar.gz
PYTHON_SCP_SITE = https://files.pythonhosted.org/packages/05/e0/ac4169e773e12a08d941ca3c006cb8c91bee9d6d80328a15af850b5e7480
PYTHON_SCP_SETUP_TYPE = setuptools
PYTHON_SCP_LICENSE = FIXME: license id couldn't be detected
PYTHON_SCP_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
