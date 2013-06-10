LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := PhysicsFS
LOCAL_CFLAGS    := -g -Dlinux -Dunix -DFT2_BUILD_LIBRARY=1 -DPHYSFS_NO_CDROM_SUPPORT=1 -DAL_ALEXT_PROTOTYPES=1 -DHAVE_GCC_DESTRUCTOR=1 -DOPT_GENERIC -DREAL_IS_FLOAT \
					-DPHYSFS_SUPPORTS_APK=1 -DPHYSFS_SUPPORTS_ZIP=1 -DPHYSFS_SUPPORTS_ZIP=1 -DPHYSFS_SUPPORTS_7Z=1 -DPHYSFS_SUPPORTS_GRP=1 -DPHYSFS_SUPPORTS_QPAK=1 -DPHYSFS_SUPPORTS_HOG=1 -DPHYSFS_SUPPORTS_MVL=1 -DPHYSFS_SUPPORTS_WAD=1

LOCAL_CPPFLAGS  := ${LOCAL_CFLAGS}

LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)
		
LOCAL_SRC_FILES := \
	physfs.c \
	physfs_byteorder.c \
	physfs_unicode.c \
	platform/os2.c \
	platform/pocketpc.c \
	platform/posix.c \
	platform/unix.c \
	platform/macosx.c \
	platform/windows.c \
	archivers/dir.c \
	archivers/grp.c \
	archivers/hog.c \
	archivers/lzma.c \
	archivers/mvl.c \
	archivers/qpak.c \
	archivers/wad.c \
	archivers/zip.c \
	lzma/C/7zCrc.c \
	lzma/C/Archive/7z/7zBuffer.c \
	lzma/C/Archive/7z/7zDecode.c \
	lzma/C/Archive/7z/7zExtract.c \
	lzma/C/Archive/7z/7zHeader.c \
	lzma/C/Archive/7z/7zIn.c \
	lzma/C/Archive/7z/7zItem.c \
	lzma/C/Archive/7z/7zMethodID.c \
	lzma/C/Compress/Branch/BranchX86.c \
	lzma/C/Compress/Branch/BranchX86_2.c \
	lzma/C/Compress/Lzma/LzmaDecode.c \
	zlib123/adler32.c \
	zlib123/compress.c \
	zlib123/crc32.c \
	zlib123/deflate.c \
	zlib123/gzio.c \
	zlib123/infback.c \
	zlib123/inffast.c \
	zlib123/inflate.c \
	zlib123/inftrees.c \
	zlib123/trees.c \
	zlib123/uncompr.c \
	zlib123/zutil.c \

LOCAL_LDLIBS    := -llog -L../lib -lGLESv1_CM

LOCAL_STATIC_LIBRARIES := 

include $(BUILD_SHARED_LIBRARY)
