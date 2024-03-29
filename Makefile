TARGET := Overclocking_resistors

SRCS := $(TARGET).tex

VERBOSE := @

pdf: $(TARGET).tex
	$(VERBOSE)pdflatex $<
	$(VERBOSE)xdg-open $(TARGET).pdf

odt: $(TARGET).tex
	pandoc -f latex -t odt -o $(TARGET).odt $<

vim:
	@echo vim $(SRCS) Makefile

show:
	$(VERBOSE)echo "SRCS = " $(SRCS)

# $@ Имя цели обрабатываемого правила
# $< Имя первой зависимости обрабатываемого правила
# $^ Список всех зависимостей обрабатываемого правила
