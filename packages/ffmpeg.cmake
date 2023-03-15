ExternalProject_Add(ffmpeg
    DEPENDS
        nvcodec-headers
        bzip2
        gmp
        lame
        mbedtls
        libssh
        libsrt
        libass
        libmodplug
        libpng
        libsoxr
        libbs2b
        libvpx
        libwebp
        libzimg
        opus
        speex
        vorbis
        x264
        x265-10bit
        xvidcore
        libxml2
        libvpl
        libopenmpt
        libjxl
        libplacebo
        aom
        dav1d
        vapoursynth
        uavs3d
        davs2
    GIT_REPOSITORY https://github.com/FFmpeg/FFmpeg.git
    SOURCE_DIR ${SOURCE_LOCATION}
    GIT_CLONE_FLAGS "--filter=tree:0"
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ${EXEC} <SOURCE_DIR>/configure
        --cross-prefix=${TARGET_ARCH}-
        --prefix=${MINGW_INSTALL_PREFIX}
        --arch=${TARGET_CPU}
        --target-os=mingw32
        --target-exec=wine
        --pkg-config-flags=--static
        --enable-cross-compile
        --enable-runtime-cpudetect
        --enable-gpl
        --enable-version3
        --enable-nonfree
        --enable-postproc
        --disable-avisynth
        --disable-vapoursynth
        --enable-gmp
        --enable-libass
        --disable-libbluray
        --enable-libfreetype
        --enable-libfribidi
        --enable-libmodplug
        --enable-libopenmpt
        --enable-libmp3lame
        --enable-libopus
        --enable-libsoxr
        --enable-libspeex
        --enable-libvorbis
        --enable-libbs2b
        --enable-libvpx
        --enable-libwebp
        --enable-libx264
        --enable-libx265
        --enable-libaom
        --enable-libdav1d
        --enable-libdavs2
        --enable-libuavs3d
        --disable-libxvid
        --enable-libzimg
        --enable-mbedtls
        --enable-libxml2
        --disable-libmysofa
        --enable-libssh
        --enable-libsrt
        --enable-libvpl
        --enable-libjxl
        --enable-libplacebo
        --enable-cuda
        --enable-cuvid
        --enable-nvdec
        --enable-nvenc
        --disable-amf
        --disable-doc
        --disable-vaapi
        --disable-vdpau
        --disable-videotoolbox
        --disable-decoder=libaom_av1
        "--extra-libs='-lstdc++'" # needs by libjxl and shaderc
    BUILD_COMMAND ${MAKE}
    INSTALL_COMMAND ${MAKE} install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(ffmpeg)
cleanup(ffmpeg install)
