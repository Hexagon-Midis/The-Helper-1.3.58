title Starting The Helper...
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
echo Make sure you have Windows installed onto a C:\ Drive, or this whole batch wont work for you...
echo.
::make folders / make them again if deleted
if not exist "C:\The-Helper" (
    call :colorEcho 0a "The Helper is making a folder in your windows drive..."
    echo.
	title Starting The Helper... (Making Folders...)
	echo Making Folders...
	echo.
	cd C:\
	::folders
	mkdir The-Helper
	::folders
	cd C:\The-Helper
	::folders
	mkdir C:\The-Helper\DownloadSystemDownloads
	::folders
	cd C:\The-Helper\DownloadSystemDownloads
	::folders
	mkdir C:\The-Helper\DownloadSystemDownloads\MidiPlayers
	::folders
	cd C:\The-Helper\DownloadSystemDownloads\MidiPlayers
	::folders
	mkdir C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraCustom
	::folders
	cd C:\The-Helper\DownloadSystemDownloads\MidiPlayers
	::folders
	mkdir C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraNormal
	::clean-up
	cd %HOMEDRIVE%%HOMEPATH%\Downloads\The-Helper
	echo.
	echo The folders are done. The Helper will do a quick re-check to see if the folders are there...
	echo.
	pause
	echo
	title Starting The Helper... (Re-Checking the Folders...)
	::make them again if deleted
	call :colorEcho 0a Checking Folders... [ C:\The-Helper ]
	echo.
	if not exist "C:\The-Helper" (
    call :colorEcho 0c "Remaking folder, The-Helper..."
	cd C:\
	mkdir The-Helper
    echo.
	echo.
)
	call :colorEcho 0a Checking Folders... [ C:\The-Helper\DownloadSystemDownloads ]
	echo.
	if not exist "C:\The-Helper\DownloadSystemDownloads" (
    call :colorEcho 0c "Remaking folder, DownloadSystemDownloads..."
	cd C:\The-Helper
	mkdir DownloadSystemDownloads
    echo.
	echo.
)
	call :colorEcho 0a Checking Folders... [ C:\The-Helper\DownloadSystemDownloads\MidiPlayers ]
	echo.
	if not exist "C:\The-Helper\DownloadSystemDownloads\MidiPlayers" (
    call :colorEcho 0a "Remaking folder, MidiPlayers..."
	cd C:\The-Helper\DownloadSystemDownloads
	mkdir MidiPlayers
    echo.
	echo.
)
	call :colorEcho 0a Checking Folders... [ C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraNormal ]
	echo.
	if not exist "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraNormal" (
    call :colorEcho 0a "Remaking folder, ChikaraNormal..."
	cd C:\The-Helper\DownloadSystemDownloads\MidiPlayers
	mkdir ChikaraNormal
    echo.
	echo.
)
	call :colorEcho 0a Checking Folders... [ C:\The-Helper\DownloadSystemDownloads\MidiPlayers\ChikaraCustom ]
	echo.
	if not exist "C:\The-Helper\DownloadSystemDownloads\ChikaraCustom" (
    call :colorEcho 0a "Remaking folder, ChikaraCustom..."
	cd C:\The-Helper\DownloadSystemDownloads\MidiPlayers
	mkdir ChikaraCustom
    echo.
	echo.
)
)
title Starting The Helper... (Making a Desktop Shortcut...)
::Make desktop shortcut (sensor) if its not there | Making desktop shortcut process...
if not exist "%HOMEDRIVE%%HOMEPATH%\Desktop\The Helper 1.3.58.lnk" (
    call :colorEcho 0a "The Helper has made a shortcut on your desktop for you to launch it faster"
    echo.

)
	@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\The Helper 1.3.58.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%HOMEDRIVE%%HOMEPATH%\Downloads\The-Helper\TheHelper1.3.58.bat" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
::Start Program "SetupStartScript.bat" For Required Files (if SENSOR is there then no downloads happen)
:main
title The Helper Startup is Pending... 
if not exist "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\SENSOR_( DO NOT DELETE )" (
    call :colorEcho 0a "Loaded Downloaders for BPFA, PFA, Kiva, Zenith, FFMpeg, WinMM and PFA Viz..."
    echo.
echo A batch file named "SetupStartScript.bat" will be started after the above message...
echo.
TIMEOUT /t 1
call :colorEcho 0a "Starting "SetupStartScript.bat" Currently..."
echo.
timeout /t 1
cd %HOMEDRIVE%%HOMEPATH%\Downloads\The-Helper\Downloaders
start SetupStartScript.bat
echo.
timeout /t 2
echo Automatically restarting The Helper in 1 minute or press any button after the downloaders are done...
TIMEOUT 60
title The Helper is Restarting...
start TheHelper1.3.58.bat
cls
)
title The Helper 1.3.58
title The Helper 1.3.58
echo.
echo [=============================]
echo [Welcome to The Helper 1.3.58 ]
echo [=============================]
echo [   -Select a choice (1-8)-   ]
echo [=============================]
echo.
echo.=================================================================================
echo  1) [Browsers] (use this if you want to open a specific browser!)                
echo.                                                                                 
echo  2) [Websites] (use this if you want to open websites faster!)                   
echo.                                                                                 
echo  3) [Midi Players] (use this if you want to open midi players faster!)           
echo.                                                                                 
echo  4) [HelpFul Kits] (use this if you reset your computer/laptop)                  
echo.                                                                                 
echo  5) [Tools] (use these tools to help you!)                                       
echo.                                                                                 
echo  6) [Power] (use this to shutdown, restart, or sleep your computer within cmd)   
echo.                                                                                 
echo  7) [Settings] (check the settings)                                              
echo.                                                                                 
echo  8) [Exit] (exit The Helper)                                                     
echo.=================================================================================
echo.
set /p input=Choice= 
if %input%==1 %answer% goto BROWSERS
if %input%==2 %answer% goto WEBSITES
if %input%==3 %answer% goto MIDI PLAYERS
if %input%==4 %answer% goto d 
if %input%==5 %answer% goto TOOLS
if %input%==6 %answer% goto POWER
if %input%==7 %answer% goto SETTINGS
if %input%==8 %answer% goto EXITHELPER
:BROWSERS
title The Helper | Browsers
echo.
echo [====================================================================================================================]
echo [ Choose a browser, also depends on if you have the browser, if you dont have that browser, then it would not launch ]
echo [====================================================================================================================]
echo.
echo [==========================================]
echo.[ 1} [Chrome] (chrome browser)             ]
echo [                                          ]
echo.[ 2) [Firefox] (firefox browser)           ]
echo [                                          ]
echo.[ 3} [Opera] (opera)                       ]
echo [                                          ]
echo.[ 4) [Opera GX] (opera gx gaming browser)  ]
echo [                                          ]
echo.[ 5) [Back]                                ]
echo [==========================================]
echo.
set /p input=Choice= 
if %input%==1 %answer% goto CHROME
if %input%==2 %answer% goto FIREFOX
if %input%==3 %answer% goto OPERA
if %input%==4 %answer% goto OPERA GX
if %input%==5 %answer% goto BACK
:CHROME
title The Helper is Starting "Chrome.exe"
echo.
start chrome.exe
echo Chrome Loaded...
echo.
pause
goto main
:FIREFOX
title The Helper is Starting 
start 
:OPERA
title The Helper is Starting
start
:OPERA GX
title The Helper is Starting
start
:BACK
goto main
:WEBSITES
title The Helper | Websites
echo.
echo [Choose a website...] [The website will open in your default browser]
echo.
echo 1) YouTube.com (watch videos!)
echo.
echo 2) Discord.com (chat with people!)
echo.
echo 3) Google.com (search things!)
echo.
echo 4) Roblox.com (play roblox with people!)
echo.
set /p input=Choice=
if %input%==1 %answer% goto YOUTUBE
if %input%==2 %answer% goto DISCORD
if %input%==3 %answer% goto GOOGLE
if %input%==4 %answer% goto SOON
:YOUTUBE
echo.
start https://www.youtube.com/
echo.
echo Loaded YouTube...
echo.
pause
goto main
:DISCORD
echo.
start https://discord.com/
echo.
echo Loaded Discord...
echo.
pause
goto main
:GOOGLE
echo.
start https://www.google.com/
echo.
echo Loaded Google...
echo.
pause
goto main
:ROBLOX
start https://www.roblox.com
echo.
echo Loaded Roblox...
echo.
pause
goto Main
:MIDI PLAYERS
title The Helper | Midi Players
echo.
echo [What midi player do you want to open?]
echo =====
if not exist "C:\Windows\System32\OmniMIDI\OmniMIDI.dll" (
    call :colorEcho 0c "The Helper Has detected that OmniMIDI is not installed. Type 0 and then Enter to download OmniMIDI"
    echo.
	echo =====
)

if exist "C:\Windows\System32\OmniMIDI\OmniMIDI.dll" (
    call :colorEcho 0a "The Helper Has detected that OmniMIDI is installed. You can use these programs without any hassle"
    echo.
	echo =====
)

if exist "%HOMEDRIVE%%HOMEPATH%\Downloads\OmniMIDISetup.exe" (
    call :colorEcho 0a "The Helper Has detected OmniMIDI in your downloads folder, type in OmniMIDI and then Enter to open the setup file"
    echo.
	echo =====
)
echo.
echo 1) Piano From Above (PFA) (already omnimidi patched) (you must have omnimidi for winmm to work)
echo.
echo 2) Better Piano From Above (BPFA) (Older Versions are already patched) (newer versions like V3 use kdmapi and omnimidi is required!) (really good optimizations!)
echo.
echo 3) Kiva (Kiva Midi Player) (uses kdmapi and winmm, WARNING: dont patch kiva with winmmm, there is also Pre-Render to use!)
echo.
echo 4) Zenith (Zenith Midi Player and Midi Renderer) (uses only kdmapi and omnimidi is required) (doesn't work with computers/laptops without framebuffers)
echo.
echo 5) Piano From Above VIZ (PFAVIZ) (this version of PFA is already patched) (this version is like BPFA V3 with really good optimizations!)
echo.
echo 6) Ultralight Midi Player (UMP) (You will have to patch it yourself...) (Really Stable FPS if you have a multi-core, over 2Ghz, Good GPU For UMP Versions over 1.6 since UMP Version 1.6 and over use GPU Rendering instead of CPU Rendering... Otherwise use UMP Version 1.5 and under for no GPU Rendering...)
echo.
echo 7) TMIDI (Tom's Midi Player) (Very Optimized for midi playing)
echo.
echo 8) Chikara (A midi player made by Kaydax, and its really well optimized) (This only works with a Vulkan (VK) compatible PC or Laptop)
echo.
set /p input=Choice= 
if %input%==1 %answer% goto PFA (ask)
if %input%==2 %answer% goto BPFA LIST
if %input%==3 %answer% goto Kiva
if %input%==4 %answer% goto Zenith
if %input%==5 %answer% goto PFAViz
if %input%==6 %answer% goto UMP
if %input%==7 %answer% goto TMIDI
if %input%==8 %answer% goto Chikara
if %input%==0 %answer% goto OmniMIDI Download (ask)
if %input%==OmniMIDI %answer% goto OMNIMIDI-SETUP
if %input%==omnimidi %answer% goto OMNIMIDI-SETUP

:OmniMIDI Download (ask)
title The Helper | OmniMIDI Download Session
::starting download
echo Are you sure you want to download, OmniMIDI? (yes or no)
echo.
set /p input=Choice= 
if %input%==yes %answer% goto OmniMIDI Download (yes)
if %input%==no %answer% goto main
:OmniMIDI Download (yes)
title The Helper | OmniMIDI Download Session
echo.
echo Starting the OmniMIDI Download...
echo.
if not exist "%HOMEDRIVE%%HOMEPATH%\Downloads\OmniMIDISetup.exe" (
    call :colorEcho 0a "Downloading [via browser], OmniMIDISetup... Version 11.2.0.0"
    echo.
	TIMEOUT 3
	::omnimidi download sequence ::omnimidi check if already downloaded
	start https://github.com/KeppySoftware/OmniMIDI/releases/download/11.2.0.0/OmniMIDISetup.exe
	echo.
	if exist "%HOMEDRIVE%%HOMEPATH%\Downloads\OmniMIDISetup.exe" (
    call :colorEcho 0a "The Helper [via browser] has already downloaded, OmniMIDI"
    echo.
	del %HOMEDRIVE%%HOMEPATH%\Downloads\OmniMIDISetup.exe
	echo.
)


)

:OMNIMIDI-SETUP
title The Helper is Starting "OmniMIDISetup.exe"
start %HOMEDRIVE%%HOMEPATH%\Downloads\OmniMIDISetup.exe
echo Loaded OmniMIDISetup...
echo.
pause 
goto main


:PFA (ask)
title The Helper | Piano From Above
::I did it only to piano from above because its easier to do and take less time...
if not exist "C:\Windows\Logs\DirectX.log" (
    call :colorEcho 0a "Do you want to continue loading piano from above or download DirectX...? (continue or directx)"
    echo.
	set /p input=Choice= 
	if %input%==continue %answer% goto PFA
	if %input%==directx %answer% goto DirectX Install

)
:PFA
title The Helper | Piano From Above
if exist "C:\Windows\Logs\DirectX.log" (
    call :colorEcho 0a "Loaded Piano From Above..."
	echo.
	start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\PFA-1.1.0-x86_64.exe
	echo.
	echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
	echo.
	pause
	goto main
)
:DirectX Install
title The Helper | DirectX Install Session
start InstallationPrograms\dwebsetup.exe
echo.
echo call :colorEcho 0a Sucessfully loaded dwebsetup.exe
echo.
echo Starting PFA in 2 minutes
echo.
TIMEOUT 120
goto PFA
:BPFA LIST
title The Helper | Better Piano From Above
echo.
echo [Which version of Better Piano From Above do you want to open?]
echo.
echo 1) Better Piano From Above (version 1)
echo.
echo 2) Better Piano From Above (version 2 / beta 6)
echo.
echo 3) Better Paino From Above (version 2 / beta 7)
echo.
echo 4) Better Paino From Above (version 2 / beta 8)
echo.
echo 5) Better Paino From Above (version 2 / beta 9)
echo. 
echo 6) Better Paino From Above (version 2 / beta 9.5)
echo.
echo 7) Better Paino From Above (version 2 / beta 9.5 Misc Tweak)
echo.
echo 8) Better Paino From Above (version 2 / pre release 1)
echo.
echo 9) Better Paino From Above (version 2 / pre release 2)
echo.
echo 10) Better Paino From Above (version 2 / pre release 2 x86)
echo.
echo 11) Better Paino From Above (version pre 3 / dev build 1)
echo.
echo 12) Better Paino From Above (version pre 3 / dev build 2)
echo.
set /p input=Choice= 
if %input%==1 %answer% goto BPFA_V1
if %input%==2 %answer% goto BPFA_V2_BETA_6
if %input%==3 %answer% goto BPFA_V2_BETA_7
if %input%==4 %answer% goto BPFA_V2_BETA_8
if %input%==5 %answer% goto BPFA_V2_Beta_9.exe
if %input%==6 %answer% goto BPFA_V2_Beta_9.5.exe
if %input%==7 %answer% goto BPFA_V2_Beta_9.5_Misc_Tweak.exe
if %input%==8 %answer% goto BPFA_V2_Pre_Release_1
if %input%==9 %answer% goto BPFA_V2_Pre_Release_2
if %input%==10 %answer% goto BPFA_V2_Pre_Release_2_x86.exe
if %input%==11 %answer% goto BPFA_PRE3_Dev-x86_64.exe
if %input%==12 %answer% goto BPFA_PRE3_Dev_Build_2-x86_64
:BPFA_V1
title The Helper is Starting "BPFA_V1.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V1.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
title The Helper is Starting "BPFA_V2_BETA_6.exe"
:BPFA_V2_BETA_6
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Beta_6.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
title The Helper is Starting "BPFA_V2_BETA_7.exe"
:BPFA_V2_BETA_7
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_BETA_7.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_V2_BETA_8
title The Helper is Starting "BPFA_V2_BETA_8.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_BETA_8.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_V2_Beta_9
title The Helper is Starting "BPFA_V2_BETA_9.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Beta_9.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
title The Helper is Starting "BPFA_V2_BETA_9.5.exe"
:BPFA_V2_Beta_9.5
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Beta_9.5.exe
echo Loaded BPFA...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_V2_Beta_9.5_Misc_Tweak
title The Helper is Starting "BPFA_V2_BETA_9.5_Misc_Tweak.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Beta_9.5_Misc_Tweak
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_V2_Pre_Release_1
title The Helper is Starting "BPFA_V2_Pre_Release_1.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Pre_Release_1
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main 
:BPFA_V2_Pre_Release_2
title The Helper is Starting "BPFA_V2_Pre_Release_2.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Pre_Release_2
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_V2_Pre_Release_2_x86.exe
title The Helper is Starting "BPFA_V2_Pre_Release_2_x86.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_V2_Pre_Release_2_x86.exe
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_PRE3_Dev-x86_64.exe
title The Helper is Starting "BPFA_PRE3_Dev-x86_64.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\BPFA_PRE3_Dev-x86_64.exe
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:BPFA_PRE3_Dev_Build_2-x86_64
title The Helper is Starting "BPFA_PRE3_Dev_Build_2-x86_64.exe"
start C:\The-Helper\DownloadSystemDownl
echo Loaded BPFA
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:Kiva
echo Loading Kiva...
title The Helper is Starting "Kiva.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\Kiva\Kiva.exe
echo.
echo Loaded Kiva...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
echo.
echo Warning: I Tested this midi program with a [ Mobile Intel 965 Express Family Chipset with Windows 7 Ultimate X64 Bit and the midi was Tau2.5.9.mid ] And I got INSANE LAG (at parts 2:44 and 5:01) with this GPU! Using old gpus will make your Kiva experience terrible...
echo.
pause 
goto main
:Zenith
title The Helper is Starting "Zenith.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\Zenith\Zenith.exe
echo.
echo Loaded Zenith... 
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
echo.
echo Warning: Zenith again doesn't work with computers/laptops without framebuffers!
echo.
pause
goto main
:PFAViz
title The Helper is Starting "PFA-1.1.0viz-x86_64.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\PFA-1.1.0viz-x86_64.exe
echo.
echo Loaded PFA-VIZ...
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
echo.
echo Warning: This PFA is laggy on alot of older gpus...
echo.
pause
goto main
:UMP
title The Helper | Ultralight Midi Player

:TMIDI
title The Helper | Tom's Midi Player
echo [Which Version of TMIDI Do you want to open? x64, x32, or Tmidi Very Optimized Version]
echo.
echo 1) x64 TMIDI
echo.
echo 2) x32 TMIDI
echo.
echo 3) TMIDI Optimized Version
echo.
set /p input=Choice= 
if %input%==1 %answer% goto x64-tmidi
if %input%==2 %answer% goto x32-tmidi
if %input%==3 %answer% goto tmidi-optimized
:x64-tmidi
title The Helper is Starting "TMIDI64.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\TMIDI64.exe
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:x32-tmidi
title The Helper is Starting "TMIDI32.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\TMIDI32.exe
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:tmidi-optimized
title The Helper is Starting "TMIDI.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\TMIDI.exe
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main
:Chikara
title The Helper is Starting "Chikara.exe"
start C:\The-Helper\DownloadSystemDownloads\MidiPlayers\Chikara.exe
echo.
echo Notice: If the midi player didnt start then go to The Helper Main Menu > Settings > Download Required Files | Then after Downloading the files you can then start the midi player...
echo.
pause
goto main 
:d 
echo not done yet...
pause
goto main
:TOOLS
title The Helper | Tools
echo.
echo [Choose a tool...]
echo.
echo 1) Soundfont Downloader
echo.
echo 2) Midi Downloader
echo.
echo 3) Tool Downloader
set /p input=Choice= 
if %input%==1 %answer% goto SD
:TD
title The Helper | Tool Downloader
::tool downloader
echo Not Ready Yet...
echo.
pause
goto main
:SD
title The Helper | Soundfont Downloader
::soundfont downloader
echo.
echo [What soundfont(s) do you want to download via browser? q to exit]
echo.
echo 1) General Midi Soundfont
echo.
echo 2) GM Soundfont (simalar to the Microsoft GS)
echo.
set /p input=Choice= 
if %input%==1 %answer% start http://timtechsoftware.com/uploads/GeneralUser_GS_SoftSynth_v144.sf2
if %input%==2 %answer% start https://drive.google.com/u/0/uc?id=1PB9923cdfVJMk_9s5sehwABuvI01Oe0f&export=download
if %input%==1 %answer% goto main
if %input%==2 %answer% goto main
if %input%==q %answer% goto main
:MD
title The Helper | Midi Downloader
::midi downloader
echo.
echo [What midi(s) do you want to download via browser? q to exit]
echo.
echo 1) [Tau.midi] Download
echo.
echo 2) coming soon
echo.
set /p input=Choice= 
if %input%==1 %answer% start https://cdn.discordapp.com/attachments/750418062976745632/750477042214109384/Tau_-_2.5.9_-_Final.7z
if %input%==2 %answer% goto main
if %input%==1 %answer% goto main
if %input%==2 %answer% goto main
if %input%==q %answer% goto main
:POWER
title The Helper | Power
echo [What do you want to do?]
echo.
echo 1) Shutdown
echo.
echo 2) Restart
echo.
echo 3) Hibernate
echo.
echo 4) Logoff
echo.
echo 5) Back
echo.
set /p input=Choice= 
if %input%==1 %answer% goto SHUTDOWN
if %input%==2 %answer% goto RESTART
if %input%==3 %answer% goto SLEEP
if %input%==4 %answer% goto LOGOFF
if %input%==5 %answer% goto BACKWARDS
:SHUTDOWN
echo Shutting Down...
shutdown /s
:RESTART
echo Restarting...
shutdown /r
:SLEEP
echo.
echo Going to hibernate...
echo.
RUNDLL32.EXE powrprof.dll,SetSuspendState 0,1,0
echo.
echo Welcome back!
echo.
pause
goto main
:LOGOFF
echo Logging Off...
shutdown /l
:BACKWARDS
goto main
:SETTINGS
title The Helper | Settings
echo.
echo [Select a setting...]
echo.
echo 1) [CLS] Clear the screen and revert to the main menu (clears the screen from all the stuff you did before this)
echo.
echo 2) [Vertify] Check all the files in this folder to see if everythings there (will be re added soon)
echo.
echo 3) [Download Required Files] Download the required files if the sensor was already set up, but the required files werent all downloaded...
echo.
set /p input=Choice= 
if %input%==1 %answer% goto CLEARSCREEN
if %input%==2 %answer% goto CHECK-VERTIFY
if %input%==3 %answer% goto DRF
:DRF
title The Helper | Download Required Files
::Start Program "SetupStartScript.bat" For Required Files (if SENSOR is there then no downloads happen)
if not exist "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\SENSOR_( DO NOT DELETE )" (
    call :colorEcho 0a "Loaded Downloaders for BPFA, PFA, Kiva, Zenith, FFMpeg, WinMM and PFA Viz..."
    echo.
echo A batch file named "SetupStartScript.bat" will be started after the above text...
echo.
TIMEOUT /t 1
call :colorEcho 0a "Starting "SetupStartScript.bat" Currently..."
echo.
timeout /t 1
cd %HOMEDRIVE%%HOMEPATH%\Downloads\The-Helper\Downloaders
start SetupStartScript.bat
echo.
timeout /t 2
echo Automatically restarting The Helper in 1 minute or press any button after the downloaders are done...
TIMEOUT 60
start TheHelper1.3.57.bat
cls
)
:CHECK-VERTIFY
title The Helper is Currently Veritifying All Files...
call colorEcho Vertifying all files via The Helper and via [ C:\The-Helper\DownloadSystemDownloads\Midiplayers ]
pause
goto main
:CLEARSCREEN
::just incase it doesnt restart the helper
cd %HOMEDRIVE%%HOMEPATH%\Downloads\The-Helper
start TheHelper1.3.57.bat
cls
:EXITHELPER
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1ir
