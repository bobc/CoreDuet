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

xcopy cores     %zzzname%\cores\     /s /q
xcopy libraries %zzzname%\libraries\ /s /q
xcopy system    %zzzname%\system\    /s /q
xcopy variants  %zzzname%\variants\  /s /q
copy boards.txt   %zzzname%\boards.txt  
copy platform.txt %zzzname%\platform.txt

echo Zipping files..
del %zzzname%.zip
%zip% -add %flags% %zzzname%.zip %zzzname%\*.*     -Path -recurse

echo Calculating sum..
CertUtil -hashfile %zzzname%.zip SHA256 >hash.txt

dir %zzzname%.zip

echo ***
echo *** Now update package_coreduet_index.json with SHA and size
echo ***

set zip=
set zzzname=
set flags=




