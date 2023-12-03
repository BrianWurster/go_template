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
	@bash ./scripts/debug.sh
test:
	@bash ./scripts/test.sh