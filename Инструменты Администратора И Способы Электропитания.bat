@echo off
color f
set mypath=%~dp0
set filesize=%~z0
set admintools=%~nx0
set admintoolsname=%~n0
:: �� ������� ������ ������ ��� ����������
::					\/
set admintoolsver=1.36
::					/\
:: �� ������� ������ ������ ��� ����������
set /a loading=1+%random% %% 9
reg query HKCU\Environment /v ATP
if %errorlevel% gtr 0 goto ����魨�-����ன��
cd "%ATP%" || goto ����魨�-����ன��
if not exist "oobe.txt" goto ��⮢���⠭�������
if not exist "user.txt" goto ��⮢���⠭�������
if not exist "bios.bat" goto ��⮢���⠭�������
if not exist "password.txt" goto ��⮢���⠭�������
if not exist "terminal.txt" goto ��⮢���⠭�������
for /f "tokens=1" %%o in ('type oobe.txt') do set oobe=%%o
if "%oobe%"=="true" (goto ��ࢮ��砫쭠ﭠ��ன��) else if "%oobe%"=="false" cls
for /f "tokens=*" %%p in ('type password.txt') do set pw=%%p
for /f "tokens=*" %%u in ('type user.txt') do set yourname=%%u
for /f "tokens=1" %%t in ('type terminal.txt') do set term=%%t
if "%yourname%"=="myname" set yourname=%username%
if exist "Lock3.txt" (
	set TheMostBigLockCheater=true
	goto �����஢��
)
if exist "Lock2.txt" (
	set MostLockCheater=true
	goto �����஢��
)
if exist "Lock.txt" (
	set LockCheater=true
	goto �����஢��
)
set /a countoferror=0
:��஫�
set vhod=
title ��࠭ �����஢��
cls
if "%pw%"=="null" goto ����
if "%countoferror%" equ "3" goto �����஢��
set /p vhod=���砫� ������ ��஫� ��� %yourname% (O - ���):
if /i "%vhod%"=="o" exit
if "%vhod%"=="%pw%" (
	goto ����
) else (
	set /a countoferror+=1
	goto ��஫�
)
:�����஢��
set /a countoferror=0
title �����஢�� �ணࠬ��
cd "%ATP%"
cls
if "%TheMostBigLockCheater%"=="true" (
	del Lock2.txt
	for /l %%p in (300,-1,0) do (
		cls
		echo ���� ��� �� 5 ����� �� �� ����
		echo ��� �ࠢ��쭮 ᥡ� ����.
		echo ��⠫��� %%p ᥪ㭤 �� �� �ணࠬ�� ࠧ�����஢�����.
		timeout 1 /nobreak >nul
	)
	set TheMostBigLockCheater=
	del Lock3.txt
	goto ��஫�
) else if "%MostLockCheater%"=="true" (
	type nul > Lock3.txt
	del Lock2.txt
	for /l %%p in (120,-1,0) do (
		cls
		echo ��祬� �� ���� �� ����蠥����
		echo � ��������� 30 ᥪ㭤?
		echo �� �� ⠪ ����� ��� ��������,
		echo �� ���, �� �� ����蠫, ⥡� �㦭�
		echo �ᮡ�� �ਣ��襭��.
		echo ��⠫��� %%p ᥪ㭤 �� �� �ணࠬ�� ࠧ�����஢�����.
		timeout 1 /nobreak >nul
	)
	set MostLockCheater=
	del Lock3.txt
	goto ��஫�
) else if "%LockCheater%"=="true" (
	type nul > Lock2.txt
	del Lock.txt
	for /l %%p in (60,-1,0) do (
		cls
		echo �� ������ �� �⠥�� �।�०�����
		echo � ⮬ �� �㤥� �㦥.��� ⥯���
		echo ᨤ� � ��� ����砭�� ⠩���.
		echo ��� ࠧ �㤥�� �����, �㤥� ������� �㦥.
		echo ��⠫��� %%p ᥪ㭤 �� �� �ணࠬ�� ࠧ�����஢�����.
		timeout 1 /nobreak >nul
	)
	set LockCheater=
	del Lock2.txt
	goto ��஫�
)
type nul > Lock.txt
for /l %%p in (30,-1,0) do (
	cls
	echo ! ! ! �������� ! ! !
	echo �ணࠬ�� �������஢����� �� ��祭� �����஢��.
	echo �� ����� ��஫� ���ࠢ��쭮 3 ࠧ�,
	echo ���⮬� �� ��㦤��� �������஢��� �ணࠬ�� � 楫�� ������᭮��.
	echo � ��������, �� ��⠩��� ��室��� �����஢��, �㤥� ⮫쪮 �㦥.
	echo ��⠫��� %%p ᥪ㭤 �� �� �ணࠬ�� ࠧ�����஢��� ����� � ����� ��஫�.
	timeout 1 /nobreak >nul
)
del Lock.txt
goto ��஫�
:����
Title %admintoolsname%
cls
echo �������, %yourname%.
echo ���� ���������� � %admintoolsname%,
echo ��������, �롥�� �, �� ��� �㦭�:
echo C - �ᯮ�짮���� ��������� ��ப�;
echo B - ����ன��;
echo F - ᯮᮡ� ���ய�⠭��;
echo G - �ࠢ����� 䠩����;
echo P - �ࠢ����� ����ᠬ�;
echo L - �����;
echo J - ��������.
choice /c CBFGPLJ /n
if %errorlevel% equ 1 goto ��ப�
if %errorlevel% equ 2 goto ����ன��
if %errorlevel% equ 3 goto ᯮᮡ����ய�⠭��
if %errorlevel% equ 4 goto �롮�䠩�
if %errorlevel% equ 5 goto �롮�����
if %errorlevel% equ 6 goto �����_���२
if %errorlevel% equ 7 goto ��������
:�����_���२
cls
echo �롥�� ᯮᮡ ���२:
echo A - � �⤥�쭮� ����;
echo B - � �ணࠬ��(%admintoolsname%);
echo O - ���.
choice /c ABO /n
if %errorlevel% equ 1 goto ��⠭����_���⥭�_���२
if %errorlevel% equ 2 goto ��砫�_���२
if %errorlevel% equ 3 goto ����
:��砫�_���२
cls
set /p %bil%=����� ����� ����� �����[�� 1 �� 100]:
if %bil% lss 1 (
	cls
	echo ��� �᫮ ����� 1.
	pause
	goto ��砫�_���२
) else if %bil% gtr 100 (
	cls
	echo ��� �᫮ ����� 100.
	pause
	goto ��砫�_���२
)
:���_���२
set /a %winnum%=1+%random% %% 99
cls
echo ��� �����:%bil%
echo � ������⥫�� �㤥�...
timeout 2 /nobreak >nul
echo %winnum%
timeout 1 /nobreak >nul
if "%winnum%"=="%bil%" (
	cls
	echo ����ࠢ���,�� ��������!
	pause
	goto ����
) else (
	cls
	echo � ᮦ������, ���� �� �먣ࠫ.
	timeout 2 /nobreak >nul
	goto ���_���२
)
:��⠭����_���⥭�_���२
title ��⠭���� ���२
cd "%ATP%"
cls
if exist "game.bat" (
	title ���
	echo �ணࠬ�� �����⨫� ��� ����, ��� �஢��� �६�!
	start "" "game.bat"
	pause
	cls
	echo ������ 㤠���� ����?
	echo Y - ��;
	echo N - ���, � ��� ��⠢��� ���� �� �� ������� �����.
	choice /n
	if %errorlevel% equ 1 del /q "game.bat"
	goto ����
	if %errorlevel% equ 2 goto ����
)
echo ����� ��� �㦭� ��⠭����� ᭠砫� �����, �� ������ ������� �६���.
echo ���� ��������...
chcp 866 > game.bat
echo @echo off> game.bat
echo color F>> game.bat
echo :��砫�>> game.bat
echo cls>> game.bat
echo set /p bil=������ ��� ᢮� ����� �����[�� 1 �� 100][O - ���]:>> game.bat
echo if /i "%%bil%%"=="o" exit>>game.bat
echo if %%bil%% lss 1 (>>game.bat
echo 	cls>>game.bat
echo 	echo ⢮� ����� ����� 1.>>game.bat
echo 	pause>>game.bat
echo 	goto ��砫�>> game.bat
echo ) else if %%bil%% gtr 100 (>>game.bat
echo 	cls>>game.bat
echo 	echo ⢮� ����� ����� 100.>>game.bat
echo 	pause>>game.bat
echo 	goto ��砫�>>game.bat
echo )>>game.bat
echo :���>> game.bat
echo set /a winnum=1+%%random%% %%%% 99>> game.bat
echo cls>> game.bat
echo echo ��� �����:%%bil%%>>game.bat
echo echo � ������⥫�� �㤥�...>> game.bat
echo timeout 2 /nobreak ^>nul>>game.bat
echo echo %%winnum%%>> game.bat
echo timeout 1 /nobreak ^>nul>>game.bat
echo if "%%winnum%%"=="%%bil%%" (>>game.bat
echo 	echo ����ࠢ���,�� ��������! >>game.bat
echo 	pause>>game.bat
echo 	goto ��砫�>> game.bat
echo ) else (>>game.bat
echo 	echo � ᮦ������,���� ���� �� �������.>>game.bat
echo 	timeout 2 /nobreak ^>nul>>game.bat
echo 	goto ���>> game.bat
echo )>>game.bat
cls
echo ���⥭� ��⠭�����, ����� �����.
start "" "game.bat"
cls
echo ���� 㤠���� ����?
echo Y - ��;
echo N - ���, � ��� ��⠢��� ���� �� �� ������� �����.
choice /n
if %errorlevel% equ 1 (
	del /q "game.bat"
	goto ����
) else if %errorlevel% equ 2 goto ����
:�롮�����
cls
echo �롥� ᯮᮡ �ࠢ����� ����ᠬ�:
echo C - ����� ���� �����;
echo S - �������� ���� �����;
echo O - �⬥��/���.
choice /c CSO /n
if %errorlevel% equ 1 goto �����
if %errorlevel% equ 2 goto ��������
if %errorlevel% equ 3 goto ����
:ᢥ������
cls
echo ��� ���ன�⢠:			%computername%;
echo ��� ���짮��⥫�:		%username%;
echo ����� ���짮��⥫�:		%userprofile%;
echo ����騩 ���� � �����㬥�⠬:	%mypath%;
echo ����騩 ��� 䠩��:		%filesize%;
echo ������ ����� �����㬥�⮢:	%admintoolsver%;
echo ���⥬��� ����� gwords:		%ATP%;
echo ������ ���:			%date%.
echo U - ��������� � ����� ���ᨨ.
echo O - ���.
choice /c UO /n
if %errorlevel% equ 1 goto ���������_�_��������
if %errorlevel% equ 2 goto ����ன��
:���������_�_��������
:: �� ������� ��������� ���������
:: \/ \/ \/
cls
echo 1.36 : ��������� ���(� ���� �� �祢����, ���� ��� ࠢ�� �㦭� �������), ����襭� ������᭮���.
echo 1.35 : ������ "E" � �ࠢ����� ��஫ﬨ �ய����� �᫨ ���� ��஫�.
echo 1.34 : ������ ����� ������� ���⮥ ��� ���짮��⥫� �� ���������.
echo 1.33 : ��䨪ᥭ ��� � ��⠭������� ���॥� ����� ��᫥ 㤠����� ��� ����� ��砥����, �ࠬ�⭮ ���⠢���� ��� � ��. � ��⥬�.
echo 1.32 : ��䨪ᥭ ��� � ���⢥ত����� ��஫� � OOBE, ��䨪ᥭ ��� ����� ��१����⨫ AT � ����魨�� ����ன�� ��� �뫮 ����⠭�������.
echo 1.31 : �������� ������� ��஫� � OOBE � �⥭� ����� �㭪権.
echo O - ���.
choice /c O /n
if %errorlevel% equ 1 goto ᢥ������
:: /\ /\ /\
:: �� ������� ��������� ���������
:��������
cls
echo �롥�� ᯮᮡ ��������:
echo F - ������;
echo S - ��������;
echo O - �⬥��/���.
choice /c FSO /n
if %errorlevel% equ 1 goto �����멪�������
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto ����
set /p fnum=����� ����� ��ࢮ� �᫮:
cls
set /p fnumsnum=����� +,-,*,/ :
cls
set /p snum=����� ����� ��஥ �᫮:
cls
set /a result=%fnum%%fnumsnum%%snum%
cls
echo �⢥�:
echo "%result%"
echo Y - �த������;
echo N - ��������.
choice /n
if %errorlevel% equ 1 goto ��������
if %errorlevel% equ 2 goto ����
:�����멪�������
cls
set /p fastcalc=����� ����� �ࠢ�����:
set /a result=%fastcalc%
cls
cls
echo �⢥�:
echo "%result%"
echo Y - �த������;
echo N - ��������.
choice /n
if %errorlevel% equ 1 goto �����멪�������
if %errorlevel% equ 2 goto ����
:�롮�䠩�
cls
echo �롥� ��ਠ�� �ࠢ����� 䠩����:
echo C - ᮧ���� 䠩�;			(� ������ �� ࠡ�⠥�)
echo D - 㤠���� 䠩�;			(� ������ �� ࠡ�⠥�)
echo R - ��२�������� 䠩�;
echo L - ������ ᮤ�ন��� 䠩��;		(� ������ �� ࠡ�⠥�)
echo M - ��६����� 䠩�;
echo O - �⬥��/���.
choice /c CDRLMO /n
if %errorlevel% equ 1 goto ᮧ����䠩�
if %errorlevel% equ 2 goto 㤠����䠩�
if %errorlevel% equ 3 goto ��२��������䠩�
if %errorlevel% equ 4 goto ᬮ����ᮤ�ন���
if %errorlevel% equ 5 goto ��६�����䠩�
if %errorlevel% equ 6 goto ����
:ᬮ����ᮤ�ন���
cls
set /p filepath=����� ���� � 䠩�� ���஬� ���� ������ ᮤ�ন���(���:\����)(O - ���):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto �롮�䠩�
if "%filepath%"=="%userprofile%\gwords" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto ᬮ����ᮤ�ন���
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo ⠪��� ��� �� �������.
	pause
	goto ᬮ����ᮤ�ন���
)
:2ᬮ����ᮤ�ন���
cls
dir /b
set /p readfile=����� ��� 䠩�� � ���஬ ���� ������ ᮤ�ন���(������ ���७��)(E - �⬥��)(O - ���):
if /i "%readfile%"=="e" goto ������ᮤ�ন���
if /i "%readfile%"=="o" goto �롮�䠩�
if not exist "%readfile%" (
	cls
	echo � ᮦ������, ⠪��� 䠩�� �� �������.
	pause
	goto 2ᬮ����ᮤ�ন���
)
:3ᬮ����ᮤ�ন���
cls
type "%readfile%"
echo -----------------
echo ���� ⥪�� ����� � ���� � 䠩�� "%readfile%"
pause
goto ����
:��२��������䠩�
cls
set /p filepath=����� ���� � 䠩�� ����� ���� ��२��������(���:\����)(O - ���):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto �롮�䠩�
if "%filepath%"=="%ATP%" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto ��२��������䠩�
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo ⠪��� ��� �� �������.
	pause
	goto ��२��������䠩�
)
:2��२��������䠩�
cls
dir /b
set /p renfile=����� ��� 䠩�� ����� ���� ��२��������(������ ���७��)(E - �⬥��)(O - ���):
if /i "%renfile%"=="e" goto ��२��������䠩�
if /i "%renfile%"=="o" goto �롮�䠩�
if not exist "%renfile%" (
	cls
	echo � ᮦ������, ⠪��� 䠩�� �� �������.
	pause
	goto 2��२��������䠩�
)
:3��२��������䠩�
cls
set /p nrenfile=����� ����� ��� 䠩��(������ ���७��)(E - �⬥��)(O - ���):
if /i "%nrenfile%"=="e" goto 2��२��������䠩�
if /i "%nrenfile%"=="o" goto �롮�䠩�
cls
echo �� �筮 ���� ��२�������� 䠩� "%renfile%" � "%nrenfile%"?
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	ren "%renfile%" "%nrenfile%"
	if exist "%nrenfile%" (
		cls
		start %filepath%
		echo 䠩� "%renfile%" �� 㤠筮 ��२������� � "%nrenfile%".
		pause
		goto ����
	) else (
		cls
		echo � ᮦ������, �� 㤠���� 䠩� "%renfile%" ��२�������� � "%nrenfile%".
		pause
		goto ����
	)
)
if %errorlevel% equ 2 goto ��२��������䠩�
if %errorlevel% equ 3 goto ����
:��६�����䠩�
cls
set /p onepath=����� ���� � 䠩�� ����� ���� ��६�����(���:\����)(O - ���):
call set onepath=%onepath%
if /i "%onepath%"=="o" goto �롮�䠩�
if "%filepath%"=="%ATP%" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto ��६�����䠩�
)
cd "%onepath%"
if %errorlevel% equ 1 (
	cls
	echo ⠪��� ��� �� �������.
	pause
	goto ��६�����䠩�
)
:2��६�����䠩�
cls
dir /b
set /p movfile=����� ��� 䠩�� ����� ���� ��६�����(������ ���७��)(E - �⬥��)(O - ���):
if /i "%movfile%"=="e" goto ��६�����䠩�
if /i "%movfile%"=="o" goto �롮�䠩�
if not exist "%movfile%" (
	cls
	echo ������ 䠩�� �� �������.
	pause
	goto 2��६�����䠩�
)
:3��६�����䠩�
cls
set /p twopath=����� ����� �ᯮ������� 䠩��(���:\����)(E - �⬥��)(O - ���):
call set twopath=%twopath%
if /i "%twopath%"=="e" goto 2��६�����䠩�
if /i "%twopath%"=="o" goto �롮�䠩�
if "%filepath%"=="%ATP%" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto 3��६�����䠩�
)
cd "%twopath%"
if %errorlevel% equ 1 (
	cls
	echo ⠪��� ��� �� �������.
	pause
	goto 3��६�����䠩�
)
cls
echo �� �筮 ���� ��६����� 䠩� "%movfile%" �� "%onepath%" � "%twopath%"?
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	move "%onepath%\%movfile%" "%twopath%"
	cd "%twopath%"
	if exist "%movfile%" (
		cls
		start %twopath%
		echo 䠩� "%movfile%" �� ��६��� �� "%onepath%" � "%twopath%" �ᯥ譮.
		pause
		goto ����
	) else (
		cls
		echo � ᮦ������, �� 㤠���� ��६����� 䠩� "%movfile%" �� "%onepath%" � "%twopath%".
		pause
		goto ����
	)
)
if %errorlevel% equ 2 goto ��६�����䠩�
if %errorlevel% equ 3 goto �롮�䠩�
:ᮧ����䠩�
cls
set /p filepath=����� ����� ���� ��� 䠩�� ����� ���� ᮧ����(���:\����)(O - ���):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto �롮�䠩�
if "%filepath%"=="%ATP%" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto ᮧ����䠩�
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo ������ ��� �� �������, ��������, ������ ����.
	pause
	goto ᮧ����䠩�
)
:2ᮧ����䠩�
cls
dir /b
set /p createfile=����� �������� ������ 䠩��(������ ���७��)(E - �⬥��)(O - ���):
if /i "%createfile%"=="e" goto ᮧ����䠩�
if /i "%createfile%"=="o" goto �롮�䠩�
if exist "%createfile%" (
	cls
	echo ������, �� ⠪�� 䠩� 㦥 �������, ��������, ����� ��㣮� ���.
	pause
	goto 2ᮧ����䠩�
)
cls
echo ��筮 �� ⠪ �� �������� ᢮� 䠩�?
echo "%createfile%"
echo Y - ��;
echo N - ���;
echo O - �⬥����/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	type nul >"%createfile%"
	if exist "%createfile%" (
		cls
		start %filepath%
		echo 䠩� "%createfile%" �� �ᯥ譮 ᮧ��� � "%filepath%"
		pause
		goto ����
	) else (
		cls
		echo � ᮦ������, 䠩� "%createfile%" �� 㤠���� ᮧ���� � "%filepath%"
		pause
		goto ����
	)
if %errorlevel% equ 2 goto 2ᮧ����䠩�
if %errorlevel% equ 3 goto ����
:�����
@echo off
color f
cls
echo ����� ��?
echo Y - ��(��ப� ���஥����);
echo N - ���;
echo O - �롮� �������⥫��� ���������⥩.
choice /c YNO /n
if %errorlevel% equ 1 exit
if %errorlevel% equ 2 goto ��ப�
if %errorlevel% equ 3 goto ����
:��ப�
if %term%==cmd cls & cd "%userprofile%" & cmd & goto �����
if %term%==powershell cls & cd "%userprofile%" & Powershell & goto �����
if %term%==both cls
cls
echo �� ����� ��ப� ���� ����?
echo P - Powershell;
echo C - cmd;
echo O - �⬥��/���.
choice /c PCO /n
if %errorlevel% equ 1 cls & cd "%userprofile%" & powershell & goto �����
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto ����
cd "%userprofile%"
cls
cmd
goto �����
:�௠஫��
cls
echo �롥�� � �� ��� �㦭�:
if not "%pw%"=="null" echo E - 㤠���� ��஫�;
echo C - ������/�������� ��஫�;
echo R - ᣥ���஢��� ��砩�� ��஫�;
echo B - ��� �� �࠭ �����஢��;
echo O - ���.
choice /c ECRBO /n
if %errorlevel% equ 1 goto 㤠�������஫�
if %errorlevel% equ 2 goto ��������஫�
if %errorlevel% equ 3 goto ��砩�멯�஫�
if %errorlevel% equ 4 goto ��஫�
if %errorlevel% equ 5 goto ����ன��
:��砩�멯�஫�
cls
echo �롥�� ⨯ ��஫�:
echo A - ������-�����;
echo B - ��⨧����;
echo C - ���-�����;
echo O - �⬥��/���.
choice /c ABCO /n
if %errorlevel% equ 1 goto ��
if %errorlevel% equ 2 goto ᯯ
if %errorlevel% equ 3 goto ��
if %errorlevel% equ 4 goto �௠஫��
:��
cls
set /a fps=1000+%random% %% 8999 2>nul
echo ��� ��஫�:%fps%
echo �� ᮣ����?
echo Y - ��;
echo N - ���, ᣥ���஢��� ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %fps%>password.txt
	set pw=%fps%
	goto ����ன��
) else if %errorlevel% equ 2 (
	goto ��
) else if %errorlevel% equ 3 goto �௠஫��
:ᯯ
cls
set /a pps=10000+%random% %% 89999 2>nul
cls
echo ��� ��஫�:%pps%
echo �� ᮣ����?
echo Y - ��;
echo N - ���, ᣥ���஢��� ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %pps%>password.txt
	set pw=%pps%
	goto ����ன��
) else if %errorlevel% equ 2 (
	goto ᯯ
) else if %errorlevel% equ 3 goto �௠஫��
:��
cls
set /a sps=100000+%random% %% 899999 2>nul
cls
echo ��� ��஫�:%sps%
echo �� ᮣ����?
echo Y - ��;
echo N - ���, ᣥ���஢��� ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %sps%>password.txt
	set pw=%sps%
	goto ����ன��
) else if %errorlevel% equ 2 (
	goto ��
) else if %errorlevel% equ 3 goto �௠஫��
:����ன��
cd "%ATP%"
cls
echo ��������, �롥�� �, �� ��� �㦭�:
echo T - �ࠢ����� ��஫��;
echo R - ��१������� ��ப�;
echo S - ������� ��ப�;
echo U - �������� ��� ���짮��⥫�;
echo C - ������ �ନ��� �� 㬮�砭��;
echo I - ���ଠ�� � ��⥬�;
echo L - �믮����� ����� ��� ������;
echo O - ���.
choice /c TRSUCILO /n
if %errorlevel% equ 1 goto �௠஫��
if %errorlevel% equ 2 start "" "%mypath%%admintools%" & exit
if %errorlevel% equ 3 exit
if %errorlevel% equ 4 goto ��������ﯮ�짮��⥫�
if %errorlevel% equ 5 goto �ନ�����㬮�砭��
if %errorlevel% equ 6 goto ᢥ������
if %errorlevel% equ 7 goto ��������
if %errorlevel% equ 8 goto ����
:��������ﯮ�짮��⥫�
set newname=
cls
set /p newname=����� ����� ����� ��� ���짮��⥫�(O - ���):
if /i "%newname%"=="myname" (
	set newname=%username%
) else if /i "%newname%"=="o" (goto ����ன��) else if "%newname%"=="%yourname%" (
	cls
	echo �������, �� �� 㦥 �ᯮ���� �� ���, ��������, ������ ��㣮�.
	pause
	goto ��������ﯮ�짮��⥫�
) else if "%newname%"=="" (
	cls
	echo ��� ���짮��⥫� �� ����� ���� �����.
	pause
	goto ��������ﯮ�짮��⥫�
)
cls
echo ��筮 �� �� ��� ���짮��⥫�?
echo %newname%
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %newname%>user.txt
	set yourname=%newname%
	goto ����
)
if %errorlevel% equ 2 goto ��������ﯮ�짮��⥫�
if %errorlevel% equ 3 goto ����ன��
:�ନ�����㬮�砭��
cd "%ATP%"
cls
echo �롥� ᢮� �ନ��� �� 㬮�砭��:
echo C - cmd;
echo P - Powershell;
echo B - �ᥣ�� ��訢���;
echo O - �⬥��/���.
choice /c CPBO /n
if %errorlevel% equ 1 set term=cmd
if %errorlevel% equ 2 set term=powershell
if %errorlevel% equ 3 set term=both
echo %term%>terminal.txt
goto ����
if %errorlevel% equ 4 goto ����ன��
:㤠�������஫�
cls
if "%pw%"=="null" goto �௠஫��
echo �� �筮 ���� 㤠���� ��஫�?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 (
	echo null>password.txt
	set pw=null
	goto ����ன��
)
if %errorlevel% equ 2 goto ����ன��
:��������஫�
set npw=
cls
set /p npw=����� ����� ���� ��஫�(O - ���):
if /i "%npw%"=="o" goto ����ன��
if "%npw%"=="%pw%" (
	cls
	echo �������, �� � ��� 㦥 ���� ⠪�� ��஫�, ��������, ������ ��㣮�.
	pause
	goto ��������஫�
) else if /i "%npw%"=="null" (
	cls
	echo ��� ��஫� ����� �ᯮ�짮����, ��������, ������ ��㣮�.
	pause
	goto ��������஫�
) else if "%npw%"=="" (
	cls
	echo �� �� ����� ��⠢��� ���� ����� ��� 㤠��� ��஫�.
	pause
	goto ��������஫�
)
cls
echo ��筮 �� ��� ��஫�?
echo "%npw%"
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %npw%>"password.txt"
	set pw=%npw%
	goto ����ன��
)
if %errorlevel% equ 2 goto ��������஫�
if %errorlevel% equ 3 goto ����
:uefi
cls
echo �� �筮 ���� ��१���㧨���� � UEFI BIOS?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 (
	powershell -command "start-process "%ATP%\bios.bat" -verb runas"
	exit
) else if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
:�몫
cls
echo �� �筮 ���� �몫���� ���ன�⢮?
echo Y - ��;
echo N - ���;
echo F - �롥�� ��� ��ਠ�� �᫨ � ���
echo     ����祭� �㭪�� ����ண� ����᪠
echo     (�� ���� ४���������� ���������
echo     �몫���� ���ன�⢮)
choice /c YNF /n
if %errorlevel% equ 1 shutdown /s /t 0
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
if %errorlevel% equ 3 shutdown /s /hybrid /t 0
exit
:��१
cls
echo �� �筮 ���� ��१���㧨����?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 shutdown /r /t 0
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
exit
:�।�
cls
echo �� �筮 ���� ���� � �।� ����⠭�������?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 shutdown /r /o /t 0
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
exit
:ᯮᮡ����ய�⠭��
cls
echo ��������, �롥�� ���� ���ன �� �㤥� �ᯮ�짮���� ���ன�⢮:
echo T - �।� ����⠭�������;
echo S - �몫���� ��������;
echo R - ��१���㧨�� ��������;
echo U - ��१���㧨���� � UEFI;
echo O - ���.
choice /c TSRUO /n
if %errorlevel% equ 1 goto �।�
if %errorlevel% equ 2 goto �몫
if %errorlevel% equ 3 goto ��१
if %errorlevel% equ 4 goto uefi
if %errorlevel% equ 5 goto ����
:�����
cls
tasklist
set /p createproc=����� �������� ����� ����� ���� �����(O - ���):
if /i "%createproc%"=="o" goto �롮�����
tasklist | findstr "%createproc%.exe" >nul
if %errorlevel% equ 0 (
	cls
	echo ⠪�� ����� 㦥 �������, ��������, ������ ��㣮�.
	pause
	goto �����
)
cls
echo ��筮 �� ��� �����?
echo %createproc%.exe
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 start %createproc%.exe & goto ����
if %errorlevel% equ 2 goto �����
if %errorlevel% equ 3 goto �롮�����
:��������
cls
tasklist
set /p endproc=����� ����� ����� ���� ��������(O - ���):
if /i %endproc%==o goto �롮�����
if "%endproc%"=="svchost" (
	cls
	echo � ������ �ண��� ��⥬�� ������.
	pause
	goto �롮�����
) else if "%endproc%"=="winlogon" (
	cls
	echo � ������ �ண��� ��⥬�� ������.
	pause
	goto �롮�����
) else if "%endproc%"=="wininit" (
	cls
	echo � ������ �ண��� ��⥬�� ������.
	pause
	goto �롮�����
) else if %endproc%==explorer (
	cls
	echo � ������ �ண��� ��⥬�� ������.
	pause
	goto �롮�����
)
tasklist | findstr "%endproc%.exe"
if %errorlevel% equ 1 (
	cls
	echo ⠪��� ����� �� �������, ��������, ������ �����.
	pause
	goto ��������
) else (
	cls
)
cls
echo ��筮 �� ��� �����?
echo %endproc%.exe
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 taskkill /im %endproc%.exe /f || goto �訡��
if %errorlevel% equ 2 goto ��������
if %errorlevel% equ 3 goto ����
goto ����
:�ࠢ��
cls
echo ��������, �롥�� ���� � ���ன ���� 㢨���� �ࠢ��:
echo A - ��� �ᯮ�짮���� ��������� ��ப�;
echo B - �� ⠪�� ��������� ��ப�;
echo C - ��祬 �㦭� �� �⨫��;
echo D - ��� ��������/㤠���� ��஫�;
echo O - ���.
:㤠����䠩�
cls
set /p filepath=����� ���� � 䠩�� ����� ���� 㤠����(���:\����)(O - ���):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto �롮�䠩�
if "%filepath%"=="%ATP%" (
	cls
	echo � ������ ���室��� �� �⮬� ��⮫���.
	pause
	goto 㤠����䠩�
)
cd "%filepath%" 
if %errorlevel% equ 1 (
	cls
	echo ������ ��� �� �������, ��������, ������ ����.
	pause
	goto 㤠����䠩�
)
:2㤠����䠩�
cls
dir /b
set /p delfile=����� �������� 䠩�� ���ண� ���� 㤠����(������ ���७��)(E - �⬥��)(O - ���):
if /i "%delfile%"=="e" goto 㤠����䠩�
if /i "%delfile%"=="o" goto �롮�䠩�
if not exist "%delfile%" (
	cls
	echo ������ 䠩�� �� �������, ��������, ������ ����.
	pause
	goto 2㤠����䠩�
)
cls
echo �� �筮 ���� 㤠���� ��� 䠩�?
echo "%delfile%"
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	del "%delfile%"
	if not exist "%delfile%" (
		cls
		start %filepath%
		echo 䠩� "%delfile%" �ᯥ譮 �� 㤠�� �� "%filepath%"
		pause
		goto ����
	) else (
		cls
		echo � ᮦ������ 䠩� "%delfile%" �� 㤠���� 㤠���� �� "%filepath%"
		pause
		goto ����
	)
)
if %errorlevel% equ 2 goto 2㤠����䠩�
if %errorlevel% equ 3 goto ���� 
:��ࢮ��砫쭠ﭠ��ன��
title ��ࢮ��砫쭠� ����ன��
cls
echo � ���� �� �� ��� �����쪨�,
echo ���⮬� � �।����� ᭠砫�
echo ����ந�� �� �����㬥��� ��� ⥡�.
echo Y - �����;
echo N - �⬥���� � ������� %admintoolsname%.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 exit
:1�⠯
set yourname=
title ���� ���ଠ樨
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo ======
echo ----------------------------------
set /p yourname=����� ��� ⥡� �����:
if "%yourname%"=="" (
	cls
	echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
	echo ======
	echo ----------------------------------
	echo ��� ���짮��⥫� �� ����� ���� �����.
	pause
	goto 1�⠯
) else if "%yourname%"=="skipoobe" (
	cd "%ATP%"
	echo User>user.txt
	echo false>oobe.txt
	cd "%mypath%"
	start "" "%admintools%" & exit
) else if "%yourname%"=="myname" (
	set yourname=%username%
)
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo ======
echo ----------------------------------
echo ��筮 �� ⥡� ⠪ �����?
echo %yourname%
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto 1�⠯
:2�⠯
cls
echo 1 �⠯ 2 �⠯	3 �⠯	�ਬ������
echo 	======
echo ----------------------------------
echo �롥� �ନ��� ����� �� �㤥�� �ᯮ�짮���� �� 㬮�砭��:
echo C - cmd;
echo P - Powershell;
echo B - �ᥣ�� ��訢���.
choice /c CPB /n
if %errorlevel% equ 1 set term=cmd
if %errorlevel% equ 2 set term=powershell
if %errorlevel% equ 3 set term=both
:3�⠯
set npw=
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo 		======
echo ----------------------------------
set /p npw=����� ����� ��� ⥡� ���������騩�� ��஫�(R - ᣥ���஢��� ��砩�� ��஫�):
if /i "%npw%"=="R" goto 3�⠯_��砩��_��஫�
cls
if "%npw%"=="" (
	set npw=null
	goto ����쭠��ன��
)
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo 		======
echo ----------------------------------
set /p vhod=������ �����न ᢮� ��஫�:
if "%vhod%"=="%npw%" (goto ����쭠��ன��) else (
	cls
	echo �� �� �����न� ᢮� ��஫�, �ਤ�뢠� ������.
	pause
	goto 3�⠯
)
:3�⠯_��砩��_��஫�
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo 		======
echo ----------------------------------
set /a fps=1000+%random% %% 8999 2>nul
echo ��� ��஫�:%fps%
echo �� ᮣ����?
echo Y - ��;
echo N - ���, ᣥ���஢��� ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 (
	set npw=%fps%
	goto ����쭠��ன��
)
if %errorlevel% equ 2 goto 3�⠯_��砩��_��஫�
if %errorlevel% equ 3 goto 3�⠯
:����쭠��ன��
title �ਬ������ ����஥�
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo 			==========
echo ----------------------------------
echo ������ ��⠫��� ���������.
timeout 2 /nobreak >nul
cls
echo 1 �⠯	2 �⠯	3 �⠯	�ਬ������
echo 			==========
echo ----------------------------------
echo � ���� �ணࠬ�� ����ࠨ���� ����ன�� � �� ���� ������ �⤮����...
cd "%ATP%"
echo %yourname%>"user.txt"
echo [=_25__]
cls
echo %npw%>"password.txt"
echo [==50__]
cls
echo %term%>"terminal.txt"
echo [==75=_]
cls
echo false>"oobe.txt"
echo [==100==]
timeout 1 /nobreak >nul
cls
echo ���� ��⮢�.
timeout 2 /nobreak >nul
goto ����
:�訡��
set /a screenofdeath=1+%random% %% 99
cls
timeout /NOBREAK 1 >nul
echo :\
timeout /NOBREAK 1 >nul
echo ��宦� � ��ப� �ந��諠 �訡��.
timeout /NOBREAK 1 >nul
echo ���� ��ப� �� ࠧ�㯫����� �� ���㤠 �� 㩤���.
timeout /NOBREAK 2 >nul
for /l %%i in (0,%screenofdeath%,100) do (
	cls
	echo :\
	echo ��宦� � ��ப� �ந��諠 �訡��.
	echo ���� ��ப� �� ࠧ�㯫����� �� ���㤠 �� 㩤���.
	echo %%i
	timeout %loading% /nobreak >nul
)
cd "%mypath%"
start "" "%admintools%" & exit
:����魨�-����ன��
cls
echo ������ �ᯮ������� �㤠
echo ��࠭��� ����� ���䨣��樨
set /p ATpath=��� ࠡ��� �����㬥�⮢ �����������:
if "%ATpath%"=="" set "ATpath=%userprofile%"
call set ATpath=%ATpath%
cls
cd "%ATpath%"
if %errorlevel% geq 1 (
	cls
	echo ������ ��� �� �������, �������� ������ ��� ࠧ.
	pause
	goto ����魨�-����ன��
)
md gwords
attrib +H "%ATpath%\gwords"
setx ATP "%ATpath%\gwords"
set "ATP=%ATpath%\gwords"
cd "%ATP%"
type nul > user.txt
echo true> oobe.txt
type nul > password.txt
type nul > terminal.txt
echo shutdown /r /fw /t 0 >"bios.bat"
cd "%mypath%"
start "" "%admintools%" & exit
:��⮢���⠭�������
title ��⮬���᪮� ����⠭�������...
set /a countoferror=0
cd "%ATP%"
cls
if not exist "password.txt" (
	echo 䠩� "password.txt" �� 㤠�� ��� ���०���, ��⠥��� ���⠭�����...
	echo null>"password.txt"
	if exist password.txt (
		echo 䠩� "password.txt" 㤠筮 �� ����⠭�����.
		set /a countoferror+=1
	) else (
		echo 䠩� "password.txt" �� 㤠���� ����⠭�����.
	)
) else (
	echo 䠩� "password.txt" �� ����.
	set /a countoferror+=1
)
echo [=__20__]
timeout 1 /nobreak >nul
cls
if not exist "user.txt" (
	echo 䠩� "user.txt" �� 㤠�� ��� ���०���, ��⠥��� ���⠭�����...
	echo myname>user.txt
	if exist user.txt (
		echo 䠩� "user.txt" 㤠筮 �� ����⠭�����.
		set /a countoferror+=1
	) else (
		echo 䠩� "user.txt" �� 㤠���� ����⠭�����.
	)
) else (
	echo 䠩� "user.txt" �� ����.
	set /a countoferror+=1
)
echo [==_40__]
timeout 1 /nobreak >nul
cls
if not exist "oobe.txt" (
	echo 䠩� "oobe.txt" �� 㤠�� ��� ���०���, ��⠥��� ���⠭�����...
	echo false>oobe.txt
	if exist "oobe.txt" (
		echo 䠩� "oobe.txt" 㤠筮 �� ����⠭�����.
		set /a countoferror+=1
	) else (
		echo 䠩� "oobe.txt" �� 㤠���� ����⠭�����.
	)
) else (
	echo 䠩� "oobe.txt" �� ����.
	set /a countoferror+=1
)
echo [===60__]
timeout 1 /nobreak >nul
cls
if not exist "terminal.txt" (
	echo 䠩� "terminal.txt" �� 㤠�� ��� ���०���, ��⠥��� ���⠭�����...
	echo both>"terminal.txt"
	if exist "terminal.txt" (
		echo 䠩� "terminal.txt" 㤠筮 �� ����⠭�����.
		set /a countoferror+=1
	) else (
		echo 䠩� "terminal.txt" �� 㤠���� ����⠭�����.
	)
) else (
	echo 䠩� "terminal.txt" �� ����.
	set /a countoferror+=1
)
echo [===80=_]
timeout 1 /nobreak >nul
cls
if not exist "bios.bat" (
	echo 䠩� "bios.bat" �� 㤠�� ��� ���०���, ��⠥��� ���⠭�����...
	echo shutdown /r /fw /t 0 >"bios.bat"
	if exist "bios.bat" (
		echo 䠩� "bios.bat" 㤠筮 �� ����⠭�����.
		set /a countoferror+=1
	) else (
		echo 䠩� "bios.bat" �� 㤠���� ����⠭�����.
	)
) else (
	echo 䠩� "bios.bat" �� ����.
	set /a countoferror+=1
)
echo [===100==]
timeout 2 /nobreak >nul
if "%countoferror%" equ "6" (
	echo � �����, 䠩�� ����� �뫨 ���०����, �뫨 ����⠭������, ��襣� ��� ���.
	pause
	cd "%mypath%"
	start "" "%admintools%" & exit
) else if "%countoferror%" equ "0" (
	echo � ᮦ������, ��祣� �� 㤠���� ��� ���⠭�����, ��������, ���஡�� �����⠭����� �ணࠬ��.
	pause
	exit
) else if "%countoferror%" lss "6" (
	echo � ᮦ������, �� �� 䠩�� 㤠���� ����⠭�����, ��������, ���஡�� �����.
	pause
	exit
)
:��������
cls
echo �� �筮 ���� �믮����� ����� ��� ������ �
echo %admintools%?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 goto ��������
if %errorlevel% equ 2 goto ����
:��������
title ����� ��� 䠩���
set /a countoferror=0
cls
echo �����⮢�� � ����...
timeout 2 /nobreak >nul
cd "%ATP%"
cls
if exist "password.txt" (
	del "password.txt"
	echo 䠩� "password.txt" 㤠�� �ᯥ譮.
) else (
	echo 䠩� "password.txt" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [=__15__]
timeout 1 /nobreak >nul
cls
if exist "user.txt" (
	del "user.txt"
	echo 䠩� "user.txt" 㤠�� �ᯥ譮.
) else (
	echo 䠩� "user.txt" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [==_40__]
timeout 1 /nobreak >nul
cls
if exist "oobe.txt" (
	del "oobe.txt"
	echo 䠩� "oobe.txt" 㤠�� �ᯥ譮.
) else (
	echo 䠩� "oobe.txt" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [===60__]
timeout 1 /nobreak >nul
cls
if exist "terminal.txt" (
	del "terminal.txt"
	echo 䠩� "terminal.txt" 㤠�� �ᯥ譮.
) else (
	echo 䠩� "terminal.txt" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [===80__]
timeout 1 /nobreak >nul
cls
if exist "bios.bat" (
	del "bios.bat"
	echo 䠩� "bios.bat" 㤠�� �ᯥ譮.
) else (
	echo 䠩� "bios.bat" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [===90=_]
timeout 1 /nobreak >nul
cls
cd "%ATP%"
cd ..
if exist "gwords" (
	rd /s /q "gwords" 2>nul
	echo ����� "gwords" 㤠�� �ᯥ譮.
) else (
	echo ����� "gwords" �� 㤠���� 㤠����.
	set /a countoferror+=1
)
echo [===100==]
reg delete HKCU\Environment /v ATP /f >nul
timeout 2 /nobreak >nul
:: �����襭�� ���
if "%countoferror%" equ "0" (
	echo � �����, 䠩�� 㤠���� 㤠����, �᫨ ���, ����� ��१���������.
) else (
	echo � ᮦ������, �� �� 䠩�� 㤠���� 㤠����, �᫨ ���, ����� ��१���������.
)
echo Y - � ᤥ��� ��१����;
echo N - ������� ��ப�.
choice /n
if %errorlevel% equ 1 (
	cd "%mypath%"
	start "" "%admintools%" & exit
)
if %errorlevel% equ 2 exit