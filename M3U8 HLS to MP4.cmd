@echo off
Title Download MP4 from M3U8 URL
setlocal EnableDelayedExpansion

echo ###################################################################################################
echo #                                                                                                 #
echo #                           - - Download from M3U8 URL to MP4 - -                                 #
echo #                                                                                                 #
echo ###################################################################################################
echo.
set /p URL= Paste M3U8 URL here: 
echo.

if not exist downloaded-mp4s mkdir downloaded-mp4s
..\ffmpeg\bin\ffmpeg -i "%URL%" -c copy -bsf:a aac_adtstoasc downloaded-mp4s\Output.mp4

echo.
echo Press Any Key to Exit
pause >NUL
explorer %cd%\downloaded-mp4s
