@echo off

rem make zip

set zip=pkzip.exe
set zzzname=CoreDuet-1.0.0
set flags=-silent

rem cores libraries system variants boards.txt platform.txt -o 

echo Zipping files..
del %zzzname%.zip
%zip% -add %flags% %zzzname%.zip cores\*.*     -Path -recurse
%zip% -add %flags% %zzzname%.zip libraries\*.* -Path -recurse
%zip% -add %flags% %zzzname%.zip system\*.*    -Path -recurse
%zip% -add %flags% %zzzname%.zip variants\*.*  -Path -recurse
%zip% -add %flags% %zzzname%.zip boards.txt
%zip% -add %flags% %zzzname%.zip platform.txt

echo Calculating sum..
CertUtil -hashfile %zzzname%.zip SHA256 >hash.txt

set zip=
set zzzname=
set flags=




