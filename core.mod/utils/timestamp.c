#include <sys/stat.h>
#include <stdio.h>

#if defined(_WIN32)
#include <sys/utime.h>
#else
#include <sys/time.h>
#endif

#include "brl.mod/blitz.mod/blitz.h"

void timestamp(BBString * fromFile, BBString * toFile) {

	char * f = (char*)bbStringToUTF8String(fromFile);

#if defined(_WIN32)
	struct _stat64 st;
	struct __utimbuf64 times;

	if (_stat64(f, &st)) {
		printf("++++ stat failed for %s\n", f);fflush(stdout);
		bbMemFree(f);
		return;
	}

	times.actime = st.st_atime;
	times.modtime = st.st_mtime;

	char * t = (char*)bbStringToUTF8String(toFile);

	if (_utime64(t, &times)) {
		printf("++++ utime failed for %s\n", t);fflush(stdout);
	}
#else
	struct stat st;

	if (stat(f,&st)) {
		printf("++++ stat failed for %s\n", f);fflush(stdout);
		bbMemFree(f);
		return;
	}

	struct timeval times[2];

	times[0].tv_sec   = st.st_atime;
	times[0].tv_usec  = 0;
	times[1].tv_sec   = st.st_mtime;
	times[1].tv_usec  = 0;

	char * t = (char*)bbStringToUTF8String(toFile);

	if (utimes(t, times)) {
		printf("++++ utimes failed for %s\n", t);fflush(stdout);
	}
#endif
	bbMemFree(f);
	bbMemFree(t);
}
