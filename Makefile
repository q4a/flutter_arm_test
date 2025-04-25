test:
	#@CORE_ARCH=$(shell if [ "$$(uname -m)" = "aarch64" ]; then echo "arm64"; else echo "x64"; fi);
	@CORE_ARCH="x64"
	echo "This is $$CORE_ARCH";

test2:
	if [ "$(shell uname -m)" = "aarch64" ]; then \
		echo "This is arm64"; \
		export CORE_ARCH=arm64; \
	else \
		echo "This is x64"; \
		export CORE_ARCH=x64; \
	fi
	echo "system arch=$$CORE_ARCH"
