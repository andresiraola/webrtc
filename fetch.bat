call set DEPOT_TOOLS_WIN_TOOLCHAIN=0

call gclient sync --no-history --with_branch_heads

call cd src\third_party\libjpeg_turbo

call git apply --ignore-whitespace ..\..\..\libjpeg_turbo.patch

call cd ..\..\build

call git apply --ignore-whitespace ..\..\build.patch

call cd ..\..