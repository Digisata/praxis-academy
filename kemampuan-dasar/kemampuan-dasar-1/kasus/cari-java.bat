@ECHO OFF
for /r %%x in (*.java) do (
	echo "Ada file java pada direktori %%x"
	goto :choice
)

:choice
set /p answer="fileName.java ada, diganti namanya (y/n)?: "
if /i "%answer%" equ "Y" goto :rename
if /i "%answer%" equ "N" goto :end
goto :choice

:rename
echo "yes"
PAUSE
EXIT

:end
echo "Thank you :D"
echo "Have a nice day dude!!"
PAUSE
EXIT