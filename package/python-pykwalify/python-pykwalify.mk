################################################################################
#
# python-pykwalify
#
################################################################################

PYTHON_PYKWALIFY_VERSION = 1.8.0
PYTHON_PYKWALIFY_SOURCE = pykwalify-$(PYTHON_PYKWALIFY_VERSION).tar.gz
PYTHON_PYKWALIFY_SITE = https://files.pythonhosted.org/packages/d5/77/2d6849510dbfce5f74f1f69768763630ad0385ad7bb0a4f39b55de3920c7
PYTHON_PYKWALIFY_SETUP_TYPE = setuptools
PYTHON_PYKWALIFY_LICENSE = MIT
PYTHON_PYKWALIFY_LICENSE_FILES = LICENSE docs/license.rst
PYTHON_PYKWALIFY_DEPENDENCIES = \
	python-dateutil \
	python-docopt \
	python-ruamel-yaml
HOST_PYTHON_PYKWALIFY_DEPENDENCIES = \
	host-python-dateutil \
	host-python-docopt \
	host-python-ruamel-yaml

$(eval $(python-package))
$(eval $(host-python-package))
