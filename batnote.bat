:: �몫�祭�� �뢮�� ������

@ECHO OFF

:: ����� ����஢�� � ���������

chcp 866
title BatNote
cls

:: �롮� 梥� � �ਢ���⢨�

cls
echo ������ ⥪��, �� ��� ����� ��ப! ������ Space, �⮡� �த������.
pause > NUL

:: ���� �������� 䠩�� � ��७�� ��� � ���������

:name
cls
title BatNote
echo ���砫� ��� ���� �ਤ㬠�� �������� 䠩��! ����� ������ Enter!
set /p name=">"
cls

title %name% - BatNote

if %name%==egor21312 goto easter1
if %name%==Infinite96 goto easter2

:: ������ ����� ����ᠭ�� ⥪��

:write
title %name% - BatNote
cls
echo �⮡� ������� 䠩�, ������ Enter! ��� ������ ���� ���� "menu"!
set /p text=">"
if %text%==menu goto menu
if %text%==cls goto cls
if %text%==dir goto dir
if %text%==time goto time
if %text%==date goto date
if %text%==dog goto dog
if %text%==saveas goto saveas
if %text%==theme goto themeselector
if %text%==view goto noteview
echo > NUL
goto save
:: ���࠭���� 䠩��
:save
echo %Text% > %name%.txt
echo ��� ������ ��࠭���! ������ Space ��� ��室�! P.S. ��� ������ ��࠭��� � ����஢�� OEM866!
pause > NUL
exit

:: ������� menu

:menu
title ���� - BatNote
cls
echo 1. ����
echo 2. ���
echo 3. � �ணࠬ��
echo 4. � ��������
echo 5. �����
choice /C 123450 > NUL
if %errorlevel%==1 goto file
if %errorlevel%==2 goto view
if %errorlevel%==3 goto about
if %errorlevel%==4 goto comhelp
if %errorlevel%==5 goto write
if %errorlevel%==6 goto dog

:: ���� "����"

:file
title ���� - BatNote
cls
echo 1. ������
echo 2. ���࠭��� ���...
echo ----------------
echo 3. ��室
echo ----------------
echo 4. �����
choice /C 1234 > NUL
if %errorlevel%==1 goto noteview
if %errorlevel%==2 goto saveas
if %errorlevel%==3 exit
if %errorlevel%==4 goto menu

:: ���� "���"

:view
title ��� - BatNote
cls
echo 1. ������� ⥬�
echo ----------------
echo 2. �����
choice /C 12 > NUL
if %errorlevel%==1 goto themeselector
if %errorlevel%==2 goto menu

:: � �ணࠬ��

:about
title � �ணࠬ�� BatNote v0.4
cls
echo BatNote - ���᮫�� �������
echo ��樠�쭠� ��⪠ �� ���堡�: https://github.com/alexsyw/batnote 
echo ���� ;)
pause > NUL
goto write

:: �訡�筠� ᮡ�窠! =0

:dog
title ErrorDog - BatNote
cls
echo   /\_____/\
echo  /         \           I
echo I           \          II
echo I (.)   (.)  \        IIII
echo I     .       \       III
echo I    ___       \______III
echo I                     II
echo I                     I
echo I                     I
echo \   ___   __   ____   /
echo  I I   I I  I I    I I
echo  I_I   I_I  I_I    I_I
echo ������ ���� ���� ��� �� ����ᠭ�!
pause > NUL
goto write

:: ���堫�窠!
:easter1
cls
title ������
echo ��� ��� ������������������������!!1!
pause > NUL
goto name

:: ���堫�窠! �㡫� 2
:easter2
cls
title Infinite96
echo "I'm gonna get to rhythm by. (C) Infinite96"
pause > NUL
goto name

::open
::cls
::batnoteview.bat
::exit

:saveas
cls
title ���࠭��� ���... - BatNote
echo "������ ���� ��� ��࠭���� 䠩��. ���� ����� ⠪: C:\Textdir\"
set /p dir=">"
goto writeto

:writeto
title %name% - ���࠭��� ���... - BatNote
cls
echo �⮡� ������� 䠩�, ������ Enter! ��� ������ ���� ���� "menu"!
set /p text=">"
goto savingas

:savingas
echo %Text% > %dir%%name%.txt
echo ��� ������ ��࠭���! ������ Space ��� ��室�! P.S. ��� ������ ��࠭��� � ����஢�� OEM866!
pause > NUL
exit

:themeselector
cls
choice /M "�� ��� ������� ⥬��� ⥬�?"
if %errorlevel%==1 color 7
if %errorlevel%==2 color F0
cls
goto write

:cls
cls
goto clswrite

:clswrite
title %name% - BatNote
set /p text=">"
if %text%==menu goto menu
if %text%==cls goto cls
if %text%==dir goto dir
if %text%==time goto time
if %text%==date goto date
if %text%==dog goto dog
if %text%==saveas goto saveas
if %text%==theme goto themeselector
if %text%==view goto noteview
goto save

:dir
dir
goto clswrite

:time
echo %time%
goto clswrite

:date
echo %date%
goto clswrite

:noteview
title BatNote View v0.4
cls
echo ������ ���� �� ⥪�⮢��� 䠩��.
echo ��� �����뢠�� ⥪�� � �ଠ� BatNote!
echo (�᫨ �� � �⮩ �����, � ���� ����� ⮫쪮 ��� �������� � ���७��):
set /p viewdir=
if %viewdir%==edit goto write
cls
type %viewdir%
title %viewdir% - BatNote View v0.4
echo .
echo ��� ���室� � BatNote ������ Space!
PAUSE > NUL
goto write

:comhelp
title ������� - BatNote
cls
echo �⠪, � BatNote �ᥣ� 9 ������
echo 1 - menu. ��� �� �᭮.
echo 2 - cls. ��� 㡨ࠥ� ���� ⥪�� � �࠭�.
echo 3 - dir. ��� �����뢠�� 䠩�� � ����� � �ணࠬ���.
echo 4 � 5 - time � date. �����뢠�� �६� � ����, ᮮ⢥��⢥���.
echo 6 - ᥪ�⭠� ������� =D
echo 7 - saveas - ���࠭��� ���...
echo 8 - themeselector - �롮� ��ଫ����.
echo 9 - view - ���뢠�� BatNote View. ��३� �� BN View � BN ����� �������� edit.
echo �� �⮬ ��. ��ᥫ����!
echo ������ Space ��� ��室�
pause > NUL
goto write