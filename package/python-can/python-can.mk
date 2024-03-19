################################################################################
#
# python-can
#
################################################################################

#PYTHON_CAN_VERSION = 4.0.0
#PYTHON_CAN_SITE = https://files.pythonhosted.org/packages/1f/f7/a643cba269d59e108fe4c1854a8e71d5cdadadd4de1b9c8862b190171122
PYTHON_CAN_VERSION = 4.3.1
PYTHON_CAN_SITE = https://files.pythonhosted.org/packages/02/fc/d5fd33ee93f17a4eb0dcd75aebf522396e3f511bf474058e99e86ae4e33f
# PYTHON_CAN_SITE = https://files.pythonhosted.org/packages/90/55/898e69e37d5d4692bf21ba8750e095493d2ecbb29be7394d5cb735f0ab0f
PYTHON_CAN_SETUP_TYPE = setuptools
PYTHON_CAN_LICENSE = LGPL-3.0
PYTHON_CAN_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
