ifneq (,$(findstring fc,$(DIST)))
    DISTRIBUTION := fedora
    YUM_PLUGIN_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
    BUILDER_MAKEFILE = $(YUM_PLUGIN_DIR)Makefile.yum
    TEMPLATE_SCRIPTS = $(YUM_PLUGIN_DIR)template_scripts
endif

ifneq (,$(findstring centos,$(DIST)))
    DISTRIBUTION := centos
    YUM_PLUGIN_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
    BUILDER_MAKEFILE = $(YUM_PLUGIN_DIR)Makefile.yum
    TEMPLATE_SCRIPTS = $(YUM_PLUGIN_DIR)template_scripts
endif
