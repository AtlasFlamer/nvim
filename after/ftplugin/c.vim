echomsg "c detected"

if filereadable("Makefile")
	au BufWritePost  *.c make
endif

