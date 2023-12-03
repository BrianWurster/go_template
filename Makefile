.PHONY: all
all release:
	@bash ./scripts/build.sh RELEASE
debug:
	@bash ./scripts/build.sh DEBUG
run:
	@bash ./scripts/run.sh
clean:
	@bash ./scripts/clean.sh
dlv:
	@bash ./scripts/dlv.sh
test:
	@bash ./scripts/test.sh
