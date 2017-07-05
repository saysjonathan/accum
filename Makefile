PREFIX ?= /usr/local
BINDIR = ${PREFIX}/bin
BIN=accum

all: options
	@echo "To install, use 'make install'"

options:
	@echo ${BIN} install options
	@echo "PREFIX = ${PREFIX}"

install: dirs ${BIN}
	@echo installed ${BIN}

dirs:
	@mkdir -p ${BINDIR}
	@install -d ${BINDIR}

${BIN}:
	@cp ${@} ${BINDIR}/${@}

uninstall:
	@rm -f ${BINDIR}/${BIN}
	@echo uninstalled ${BIN}

.PHONY: ${BIN}
