gcc  -O3 -Wall -c -o adler32.o adler32.c
gcc  -O3 -Wall -c -o compress.o compress.c
gcc  -O3 -Wall -c -o crc32.o crc32.c
gcc  -O3 -Wall -c -o deflate.o deflate.c
gcc  -O3 -Wall -c -o gzclose.o gzclose.c
gcc  -O3 -Wall -c -o gzlib.o gzlib.c
gcc  -O3 -Wall -c -o gzread.o gzread.c
gcc  -O3 -Wall -c -o gzwrite.o gzwrite.c
gcc  -O3 -Wall -c -o infback.o infback.c
gcc  -O3 -Wall -c -o inffast.o inffast.c
gcc  -O3 -Wall -c -o inflate.o inflate.c
gcc  -O3 -Wall -c -o inftrees.o inftrees.c
gcc  -O3 -Wall -c -o trees.o trees.c
gcc  -O3 -Wall -c -o uncompr.o uncompr.c
gcc  -O3 -Wall -c -o zutil.o zutil.c
ar rcs libz.a adler32.o compress.o crc32.o deflate.o gzclose.o gzlib.o gzread.o gzwrite.o infback.o inffast.o inflate.o inftrees.o trees.o uncompr.o zutil.o
windres --define GCC_WINDRES -o zlibrc.o win32/zlib1.rc
gcc -shared -Wl,--out-implib,libz.dll.a  -o zlib1.dll win32/zlib.def adler32.o compress.o crc32.o deflate.o gzclose.o gzlib.o gzread.o gzwrite.o infback.o inffast.o inflate.o inftrees.o trees.o uncompr.o zutil.o  zlibrc.o 
strip zlib1.dll