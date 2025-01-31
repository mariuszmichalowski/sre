NPM ?= `which npm`
MERMAID ?= `which mmdc`
RESOURCES_PATH ?= `pwd`/resources

.PHONY: build
build:
	@$(MERMAID) -w 10000 -i $(RESOURCES_PATH)/topic-graph.mmd -o $(RESOURCES_PATH)/topic-graph.png

.PHONY: setup
setup:
	@$(NPM) install -g mermaid.cli
