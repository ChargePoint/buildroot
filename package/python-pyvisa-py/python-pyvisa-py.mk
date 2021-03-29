################################################################################
#
# python-pyvisa-py
#
################################################################################

PYTHON_PYVISA_PY_VERSION = 0.5.2
PYTHON_PYVISA_PY_SOURCE = PyVISA-py-$(PYTHON_PYVISA_PY_VERSION).tar.gz
PYTHON_PYVISA_PY_SITE = https://files.pythonhosted.org/packages/30/d2/67dc4b218db814fedaa616766d5ac999eb8771058573adee5f5038754ece
PYTHON_PYVISA_PY_SETUP_TYPE = setuptools
PYTHON_PYVISA_PY_DEPENDENCIES = host-python-setuptools-scm

$(eval $(python-package))
