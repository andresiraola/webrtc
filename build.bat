call src

call set DEPOT_TOOLS_WIN_TOOLCHAIN=0

call gn gen out\debug-x64 --args="ffmpeg_branding=\"Chrome\" is_clang=false is_debug=true libyuv_include_tests=false proprietary_codecs=true rtc_build_examples=false rtc_build_tools=false rtc_enable_protobuf=false rtc_include_tests=false target_cpu=\"x64\" target_os=\"win\" use_lld=false"

call gn gen out\release-x64 --args="ffmpeg_branding=\"Chrome\" is_clang=false is_debug=false libyuv_include_tests=false proprietary_codecs=true rtc_build_examples=false rtc_build_tools=false rtc_enable_protobuf=false rtc_include_tests=false target_cpu=\"x64\" target_os=\"win\" use_lld=false"

call ninja -C out\debug-x64

call ninja -C out\release-x64