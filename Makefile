CC=clang

EXE_SUFFIX =
LDFLAGS =
RM = rm
ifeq ($(OS), Windows_NT)
	EXE_SUFFIX = .exe
	LDFLAGS = -fuse-ld=lld
	RM = del
endif

.PHONY: release debug format

all: release

debug:
	$(CC) main.c -O3 -DNDEBUG -march=native -o self-ref-debug$(EXE_SUFFIX)

release:
	$(CC) main.c -g -o self-ref$(EXE_SUFFIX)

clean:
	-$(RM) self-ref*

format:
	clang-format -i main.c