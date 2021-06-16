@echo off
Title Download MP4 from M3U8S URL
setlocal EnableDelayedExpansion

echo ###################################################################################################
echo #                                                                                                 #
echo #                           - - Download from M3U8S URL to MP4 - -                                #
echo #                                                                                                 #
echo ###################################################################################################
echo.
set /p URL= Paste M3U8S URL here: 
echo.

ffmpeg-n4.4-19-g8d172d9409-win64-gpl-4.4\bin\ffmpeg.exe -i %URL% -c copy -bsf:a aac_adtstoasc "Output.mp4"

REM Example showing download to MP4 from URL
REM ffmpeg -i "http://example.com/video_url.m3u8" -c copy -bsf:a aac_adtstoasc "output.mp4"