set SERVICE_NAME=FileDownloadMonitor
set SERVICE_DIRECTORY=C:\FileDownloadMonitor
set PR_INSTALL=%SERVICE_DIRECTORY%\prunsrv.exe

REM Service log configuration
set PR_LOGPREFIX=%SERVICE_NAME%
set PR_LOGPATH=%SERVICE_DIRECTORY%\logs
set PR_STDOUTPUT=%SERVICE_DIRECTORY%\logs\stdout.txt
set PR_STDERROR=%SERVICE_DIRECTORY%\logs\stderr.txt
set PR_LOGLEVEL=Error

REM Path to java installation
set PR_JVM=C:\Program Files (x86)\Java\jre1.8.0_73\bin\client\jvm.dll
set PR_CLASSPATH=%SERVICE_DIRECTORY%\FileDownloader.jar

REM Startup configuration
set PR_STARTUP=auto
set PR_STARTMODE=jvm
set PR_STARTCLASS=FileDownloaderMain
set PR_STARTMETHOD=start

REM Shutdown configuration
set PR_STOPMODE=jvm
set PR_STOPCLASS=FileDownloaderMain
set PR_STOPMETHOD=stop

REM JVM configuration
set PR_JVMMS=256
set PR_JVMMX=1024
set PR_JVMSS=4000
set PR_JVMOPTIONS=-Duser.language=PL;-Duser.region=PL
prunsrv.exe //IS//%SERVICE_NAME%