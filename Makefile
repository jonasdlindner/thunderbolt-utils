# SPDX-License-Identifier: GPL-2.0

# Makefile for thunderbolt-utils (lstbt)

# Copyright (C) 2023 Rajat Khandelwal <rajat.khandelwal@intel.com>
# Copyright (C) 2023 Intel Corporation

LIBTBT_EXEC = /usr/bin/lstbt
SRC_DIR = src

CC = gcc
RM = rm -f

DEBUG_FLAGS = -g
WARN_FLAGS = -Wall -W
OPTIMIZE_FLAGS = -O2
CFLAGS = $(DEBUG_FLAGS) $(WARN_FLAGS) $(OPTIMIZE_FLAGS)

SRC_FILES := $(shell find $(SRC_DIR) -name '*.c')

O_FILES = $(SRC_FILES:%.c=%.o)

all: $(LIBTBT_EXEC)

$(LIBTBT_EXEC): $(O_FILES)
	$(CC) $(CFLAGS) -o $@ $^ -lm

clean:
	-$(RM) $(LIBTBT_EXEC) $(O_FILES)
example:
	-

