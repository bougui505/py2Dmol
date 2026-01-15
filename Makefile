#############################################################################
# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr                 #
# https://research.pasteur.fr/en/member/guillaume-bouvier/                  #
# Copyright (c) 2025 Institut Pasteur                                       #
#############################################################################
#
# creation_date: Thu Jan 15 10:49:54 2026

SHELL := zsh
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

outputs=target1 target2
.PHONY: help clean all #  which targets are not represented by files

py2Dmol.sif: py2Dmol.def
	apptainer build -F $@ $^
