LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_CFLAGS    := -D_7ZIP_ST
LOCAL_MODULE          := ktx
LOCAL_MODULE_FILENAME := libktx

LOCAL_CFLAGS += -DKTX_OPENGL_ES2=1 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../include/ \
                    $(LOCAL_PATH)/../../../other_include/

LOCAL_SRC_FILES	:=	../../../lib/checkheader.c \
                    ../../../lib/errstr.c \
                    ../../../lib/hashtable.c \
                    ../../../lib/ktxfilestream.c \
                    ../../../lib/ktxmemstream.c \
                    ../../../lib/loader.c \
                    ../../../lib/swap.c \
                    ../../../lib/writer.c \
                    ../../../lib/etcdec.cxx \
                    ../../../lib/etcunpack.cxx
					
LOCAL_LDLIBS := -lGLESv2

include $(BUILD_SHARED_LIBRARY)
