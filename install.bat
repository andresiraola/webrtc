call md dist\lib\debug
call md dist\lib\release
call md dist\include

call copy /Y src\out\debug-x64\obj\webrtc.lib dist\lib\debug
call copy /Y src\out\release-x64\obj\webrtc.lib dist\lib\release

call xcopy /e/i src\*.h dist\include
call xcopy /e/i src\api\*.h dist\include\api
call xcopy /e/i src\call\*.h dist\include\call
call xcopy /e/i src\common_video\*.h dist\include\common_video
call xcopy /e/i src\logging\*.h dist\include\logging
call xcopy /e/i src\media\*.h dist\include\media
call xcopy /e/i src\modules\*.h dist\include\modules
call xcopy /e/i src\p2p\*.h dist\include\p2p
call xcopy /e/i src\rtc_base\*.h dist\include\rtc_base
call xcopy /e/i src\third_party\abseil-cpp\*.h dist\include\third_party\abseil-cpp
call xcopy /e/i src\third_party\libyuv\*.h dist\include\third_party\libyuv