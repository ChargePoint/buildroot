################################################################################
#
# python-qrcode
#
################################################################################

PYTHON_QRCODE_VERSION = 6.1
PYTHON_QRCODE_SOURCE = qrcode-$(PYTHON_QRCODE_VERSION).tar.gz
PYTHON_QRCODE_SITE = https://files.pythonhosted.org/packages/19/d5/6c7d4e103d94364d067636417a77a6024219c58cd6e9f428ece9b5061ef9
PYTHON_QRCODE_SETUP_TYPE = setuptools

$(eval $(python-package))
