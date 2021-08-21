#
# Copyright (C) 2021 Octavi-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),sweet)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
