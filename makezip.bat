@echo off
rem 
rem make package zip for CoreDuet
rem

set zip=pkzip.exe
set zzzname=CoreDuet-1.0.0
set flags=-silent


echo Creating release tree...
rem rd /s %zzzname% 
md %zzzname%

xcopy cores     %zzzname%\cores\     /s
xcopy libraries %zzzname%\libraries\ /s
xcopy system    %zzzname%\system\    /s
xcopy variants  %zzzname%\variants\  /s
copy boards.txt   %zzzname%\boards.txt
copy platform.txt %zzzname%\platform.txt

echo Zipping files..
del %zzzname%.zip
%zip% -add %flags% %zzzname%.zip %zzzname%\*.*     -Path -recurse

echo Calculating sum..
CertUtil -hashfile %zzzname%.zip SHA256 >hash.txt

set zip=
set zzzname=
set flags=




