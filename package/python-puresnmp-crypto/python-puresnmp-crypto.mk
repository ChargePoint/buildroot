################################################################################
#
# python-puresnmp-crypto
#
################################################################################

PYTHON_PURESNMP_CRYPTO_VERSION = 1.0.1
PYTHON_PURESNMP_CRYPTO_SOURCE = puresnmp-crypto-$(PYTHON_PURESNMP_CRYPTO_VERSION).tar.gz
PYTHON_PURESNMP_CRYPTO_SITE = https://files.pythonhosted.org/packages/dc/ea/7550a803a020c08cb031c2fd4ace2e7dd9ab6befd121713343dfb6ccc591
PYTHON_PURESNMP_CRYPTO_SETUP_TYPE = setuptools
PYTHON_PURESNMP_CRYPTO_LICENSE = LGPL-2.1+
PYTHON_PURESNMP_CRYPTO_LICENSE_FILES = LICENSE
PYTHON_PURESNMP_CRYPTO_CPE_ID_VENDOR = puresnmp-crypto
PYTHON_PURESNMP_CRYPTO_CPE_ID_PRODUCT = puresnmp-crypto

$(eval $(python-package))
