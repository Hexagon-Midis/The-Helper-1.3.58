@echo off
title Downloading required files (0%)
echo BPFA SERIES, CURRENTLY DOWNLOADING...
echo.
start BPFA_V1_Downloader.vbs
timeout /t 3
start BPFA_V2_Beta_6_Downloader.vbs
timeout /t 3
start BPFA_V2_Beta_7_Downloader.vbs
timeout /t 3
title Downloading required files (20%)
start BPFA_V2_Beta_8_Downloader.vbs
timeout /t 3
start BPFA_V2_Beta_9.5_Downloader.vbs
timeout /t 3
start BPFA_V2_Beta_9.5_Misc_Tweak_Downloader.vbs
timeout /t 3
title Downloading required files (40%)
start BPFA_V2_Beta_9_Downloader.vbs
timeout /t 3
start BPFA_V2_Pre_Release_1_Downloader.vbs
timeout /t 3
start BPFA_V2_Pre_Release_2_Downloader.vbs
timeout /t 3
title Downloading required files (60%)
start BPFA_V2_Pre_Release_2_x86_Downloader.vbs
timeout /t 3
start BPFA-PR3-Dev_Build_2-x86_64.vbs
timeout /t 3
start BPFA-PR3-Dev-x86_64_Downloader.vbs
timeout /t 3
echo DISCORD RPC, CURRENTLY DOWNLOADING... 
echo.
start Discord-RPC_Downloader.vbs
timeout /t 3
title Downloading required files (75%)
echo PFA, CURRENTLY DOWNLOADING...
echo.
start PFA_Downloader.vbs
timeout /t 3
echo PFA-Viz, CURRENTLY DOWNLOADING...
echo.
start PFA_Viz_Downloader.vbs
timeout /t 3
echo FFMPEG, CURRENTLY DOWNLOADING...
echo.
start NoticeDownloader.vbs
timeout /t 6
start FFMPEG_KIVA_ZENITH_Downloader.bat
timeout /t 3
title Downloading required files (85%)
echo TMIDI, X64 AND X32, CURRENTLY DOWNLOADING...
echo.
start TMIDI64_Downloader.vbs
timeout /t 1
start TMIDI86_Downloader.vbs
echo.
timeout /t 3
echo.
echo CHIKARA, ORGINAL UNTOUCHED VERSION FOR GPU'S THAT ARE FINE WITH IT AND CUSTOM VERSION FOR IGPU'S AND GPU'S WITH VULKAN THAT CRASH WHEN LOADING A MIDI, CURRENTLY DOWNLOADING...
timeout /t 3
echo.
start Chikara_Downloader.vbs
echo.
timeout /t 1
start ChikaraCustom_Downloader.vbs 
echo.
timeout /t 3
echo.
title Finished Downloading required files (100%)
echo Finalizing Sensor and WinMM Patch...
start FILE.SENSOR_SENSOR.vbs
timeout /t 1
start WinMM_Downloader.vbs
echo.
echo "SetupStartScript.bat" Has finished downloading all of the required files...
timeout /t 5
exit
