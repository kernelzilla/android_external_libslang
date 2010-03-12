LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=			\
		src/sltermin.c		\
		src/sldisply.c		\
		src/slutty.c		\
		src/slang.c			\
		src/slarray.c		\
		src/slclass.c		\
		src/slcmd.c			\
		src/slerr.c			\
		src/slgetkey.c		\
		src/slkeymap.c		\
		src/slmalloc.c		\
		src/slmath.c		\
		src/slmemchr.c		\
		src/slmemcmp.c		\
		src/slmemcpy.c		\
		src/slmemset.c		\
		src/slmisc.c		\
		src/slparse.c		\
		src/slprepr.c		\
		src/slregexp.c		\
		src/slrline.c		\
		src/slsearch.c		\
		src/slsmg.c			\
		src/slstd.c			\
		src/sltoken.c		\
		src/sltypes.c		\
		src/slxstrng.c		\
		src/slcurses.c		\
		src/slscroll.c		\
		src/slsignal.c		\
		src/slkeypad.c		\
		src/slerrno.c		\
		src/slstring.c		\
		src/slstruct.c		\
		src/slcmplex.c		\
		src/slarrfun.c		\
		src/slimport.c		\
		src/slpath.c		\
		src/slarith.c		\
		src/slassoc.c		\
		src/slcompat.c		\
		src/slposdir.c		\
		src/slstdio.c		\
		src/slproc.c		\
		src/sltime.c		\
		src/slstrops.c		\
		src/slbstr.c		\
		src/slpack.c		\
		src/slintall.c		\
		src/slistruc.c		\
		src/slposio.c		\
		src/slnspace.c		\
		src/slarrmis.c		\
		src/slospath.c		\
		src/slscanf.c		\
		src/sllower.c		\
		src/slupper.c		\
		src/slischar.c		\
		src/slutf8.c		\
		src/slwcwidth.c		\
		src/slwclut.c		\
		src/slcommon.c		\
		src/sllist.c		\
		src/slexcept.c		\
		src/slfpu.c			\
		src/slsig.c			\
		src/slboseos.o

LOCAL_MODULE:= libslang-static

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/android	\
		bionic/libm/arm

#     $(LOCAL_PATH)/..                \
#     $(LOCAL_PATH)/../android        \
#     $(LOCAL_PATH)/libcharset        \
#     $(LOCAL_PATH)/gnulib            \
#     $(LOCAL_PATH)/pcre

# ./glib private macros, copy from Makefile.am
LOCAL_CFLAGS := \
	-DMISC_TERMINFO_DIRS=\"/sdcard/etc/terminfo\"
#     -DLIBDIR=\"$(libdir)\"          \
#     -DHAVE_CONFIG_H                 \
#     \
#     -DG_LOG_DOMAIN=\"GLib-GRegex\" \
#     -DSUPPORT_UCP \
#     -DSUPPORT_UTF8 \
#     -DNEWLINE=-1 \
#     -DMATCH_LIMIT=10000000 \
#     -DMATCH_LIMIT_RECURSION=10000000 \
#     -DMAX_NAME_SIZE=32 \
#     -DMAX_NAME_COUNT=10000 \
#     -DMAX_DUPLENGTH=30000 \
#     -DLINK_SIZE=2 \
#     -DEBCDIC=0 \
#     -DPOSIX_MALLOC_THRESHOLD=10 \
#     -DG_DISABLE_DEPRECATED \
#     -DGLIB_COMPILATION 

LOCAL_SHARED_LIBRARIES := \
	libm

LOCAL_COPY_HEADERS_TO := libslang
LOCAL_COPY_HEADERS :=	\
		src/slang.h		\
		src/slcurses.h

include $(BUILD_STATIC_LIBRARY)
