#  ResetProject.bat

cls

@echo ================REMOVING BINARIES================
@RD /S /Q "Binaries/"
@echo ================REMOVING INTERMEDIATE================
@RD /S /Q "Intermediate/"
@echo ================REMOVING DERIVEDDATACACHE================
@RD /S /Q "DerivedDataCache/"
@echo ================REMOVING SAVED================
@RD /S /Q "Saved/"
@echo ================REMOVING PROJECT FILES================
@DEL /F /S /Q /A  "*.sdf"
@DEL /F /Q /A /S "*.suo"
@RD /S /Q ".vs/"
@DEL /F /S /Q /A  "*.sln"
@echo ================REMOVING EMPTY DIRECTORIES=============
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
@echo off

@pause

start "Unreal Engine" "SequencerDemo.uproject"