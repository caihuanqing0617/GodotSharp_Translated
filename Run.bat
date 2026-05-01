@echo off
chcp 65001


:godotVersion
cls
echo =======================
echo      Godot Version
echo =======================
echo 1. Godot 4.6.2
echo 2. Godot 4.6.1
echo 3. Godot 4.6.0
echo ======================

set /p "choice=Please select a godot version...(1-3): "

if "%choice%"=="1" (
	set "GodotVersion=4.6.2"
	set "NetFramework=net8.0"
    	goto languageOption
)

if "%choice%"=="2" (
	set "GodotVersion=4.6.1"
	set "NetFramework=net8.0"
    	goto languageOption
)

if "%choice%"=="3" (
	set "GodotVersion=4.6.0"
	set "NetFramework=net8.0"
    	goto languageOption
)

cls
echo Invalid input. Please select again!
pause
goto godotVersion


:languageOption
cls
echo =========================
echo      Language Option
echo =========================
echo 1. bilingual
echo 2. monolingual
echo ======================

set /p "choice=Please select a language option...(1-2): "

if "%choice%"=="1" (
	set "LanguageOption=Bilingual."
	goto language
)

if "%choice%"=="2" (
	set "LanguageOption="
	goto language
)

cls
echo Invalid input. Please select again!
pause
goto languageOption

:language
cls
echo ===========================
echo      Select A Language
echo ===========================
echo 1. 语言 (zh-CN)
echo 2. 語言 (zh-TW)
echo 3. 言語 (Jp)
echo 4. 언어 (Ko)
echo 5. língua (pt-BR)
echo 6. язык (Ru)
echo 7. lengua (Es)
echo 8. langue (Fr)
echo 9. Sprache (De)
echo a. lingua (It)
echo b. jazyk (Cs)
echo c. język (Pl)
echo d. мова (Uk)
echo 0. Regain (English)
echo ======================

set /p "choice=Please select a language...(1-9 | a-d | 0): "

if "%choice%"=="1" (
	set "SelectLanguage=zh-CN"
    	goto selectEnd
)

if "%choice%"=="2" (
	set "SelectLanguage=zh-TW"
    	goto selectEnd
)

if "%choice%"=="3" (
	set "SelectLanguage=Jp"
    	goto selectEnd
)

if "%choice%"=="4" (
	set "SelectLanguage=Ko"
    	goto selectEnd
)

if "%choice%"=="5" (
	set "SelectLanguage=pt-BR"
    	goto selectEnd
)

if "%choice%"=="6" (
	set "SelectLanguage=Ru"
    	goto selectEnd
)

if "%choice%"=="7" (
	set "SelectLanguage=Es"
    	goto selectEnd
)

if "%choice%"=="8" (
	set "SelectLanguage=Fr"
    	goto selectEnd
)

if "%choice%"=="9" (
	set "SelectLanguage=De"
    	goto selectEnd
)

if "%choice%"=="a" (
	set "SelectLanguage=It"
    	goto selectEnd
)

if "%choice%"=="b" (
	set "SelectLanguage=Cs"
    	goto selectEnd
)

if "%choice%"=="c" (
	set "SelectLanguage=Pl"
    	goto selectEnd
)

if "%choice%"=="d" (
	set "SelectLanguage=Uk"
    	goto selectEnd
)

if "%choice%"=="0" (
	set "SelectLanguage=English"
    	goto selectEnd
)

cls
echo Invalid input. Please select again!
pause
goto language

:selectEnd
set "GodotSharpOriginalFile=%USERPROFILE%\.nuget\packages\godotsharp\%GodotVersion%\lib\%NetFramework%\GodotSharp.xml"
set "GodotSharpEnglishFile=%USERPROFILE%\.nuget\packages\godotsharp\%GodotVersion%\lib\%NetFramework%\GodotSharp.English.xml"

set "GodotSharpEditorOriginalFile=%USERPROFILE%\.nuget\packages\godotsharpeditor\%GodotVersion%\lib\%NetFramework%\GodotSharpEditor.xml"
set "GodotSharpEditorEnglishFile=%USERPROFILE%\.nuget\packages\godotsharpeditor\%GodotVersion%\lib\%NetFramework%\GodotSharpEditor.English.xml"

set "GodotSharpFilePath=.\%SelectLanguage%\v%GodotVersion%\GodotSharp.%LanguageOption%%SelectLanguage%.xml"
set "GodotSharpEditorFilePath=.\%SelectLanguage%\v%GodotVersion%\GodotSharpEditor.%LanguageOption%%SelectLanguage%.xml"

IF NOT EXIST "%GodotSharpEnglishFile%" (
	IF EXIST "%GodotSharpOriginalFile%" (
		copy %GodotSharpOriginalFile% %GodotSharpEnglishFile%
	) else (
		echo The file was not found as: "%GodotSharpOriginalFile%"
	)
)

IF NOT EXIST "%GodotSharpEditorEnglishFile%" (
	IF EXIST "%GodotSharpEditorOriginalFile%" (
		copy %GodotSharpEditorOriginalFile% %GodotSharpEditorEnglishFile%
	) else (
		echo The file was not found as: "%GodotSharpEditorOriginalFile%"
	)
)

IF "%SelectLanguage%"=="English" (
	IF EXIST "%GodotSharpEnglishFile%" (
		copy %GodotSharpEnglishFile% %GodotSharpOriginalFile%
	) else (
		echo The file was not found as: "%GodotSharpEnglishFile%"
	)
	
	IF  EXIST "%GodotSharpEditorEnglishFile%" (
		copy %GodotSharpEditorEnglishFile% %GodotSharpEditorOriginalFile%
	) else (
		echo The file was not found as: "%GodotSharpEditorEnglishFile%"
	)
) else (
	IF EXIST "%GodotSharpFilePath%" (
		copy %GodotSharpFilePath% %GodotSharpOriginalFile%
	) else (
		echo The file was not found as: "%GodotSharpFilePath%"
	)

	IF EXIST "%GodotSharpEditorFilePath%" (
		copy %GodotSharpEditorFilePath% %GodotSharpEditorOriginalFile%
	) else (
		echo The file was not found as: "%GodotSharpEditorFilePath%"
	)
)

pause
