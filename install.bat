call md dist\lib\debug
call md dist\lib\release
call md dist\include

call copy /Y src\out\debug-x64\obj\webrtc.lib dist\lib\debug
call copy /Y src\out\release-x64\obj\webrtc.lib dist\lib\release

call xcopy /s/i/y src\api\*.h dist\include\api
call xcopy /s/i/y src\call\*.h dist\include\call
call xcopy /s/i/y src\common_video\*.h dist\include\common_video
call xcopy /s/i/y src\logging\*.h dist\include\logging
call xcopy /s/i/y src\media\*.h dist\include\media
call xcopy /s/i/y src\modules\*.h dist\include\modules
call xcopy /s/i/y src\p2p\*.h dist\include\p2p
call xcopy /s/i/y src\rtc_base\*.h dist\include\rtc_base
call xcopy /s/i/y src\third_party\abseil-cpp\*.h dist\include\third_party\abseil-cpp
call xcopy /s/i/y src\third_party\libyuv\*.h dist\include\third_party\libyuv
call xcopy /i/y src\*.h dist\include
