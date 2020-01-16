.EXPORT_ALL_VARIABLES:
.PHONY: test repl

SHELL = bash
VERSION = $(shell cat VERSION)
DATE = $(shell date)

repl:
	clj -A:test:nrepl  -m nrepl.cmdline --middleware "[cider.nrepl/cider-middleware]"

test:
	clj -A:test:runner

