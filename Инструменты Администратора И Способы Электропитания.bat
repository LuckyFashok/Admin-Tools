color f
@echo off
set /a loading=%random% %% 10
cd "%userprofile%\gwords" || goto 
cd "%userprofile%\gwords"
for /f "tokens=*" %%p in ('type password.txt') do set pw=%%p
for /f "tokens=*" %%n in ('type user.txt') do set yourname=%%n
for /f "tokens=1" %%i in ('type settingsfortaskmgr.txt') do set setfortm=%%i
cls
echo 		ASHAS
echo 	inspring innovations
echo ��������, ������ S �� �� ������� � ����
choice /c SN /n /d N /t 5
if %errorlevel% equ 1 goto ���ଠ���
if %errorlevel% equ 2 cls
for /f "tokens=1" %%o in ('type oobe.txt') do set oobe=%%o
cls
color f
if %oobe%==true goto ��ࢮ��砫쭠ﭠ��ன��
if %oobe%==false cls
echo �������� ���� ��⥬� ����㧨����...
timeout %loading% /nobreak >nul
goto ��஫�
:����
cls
echo 	Sasha's Negatrends
echo I ���ଠ��	B ����㧪�	O ���
choice /c IBO /n
if %errorlevel% equ 1 goto ���ଠ���
if %errorlevel% equ 2 goto �����㧪�
if %errorlevel% equ 3 goto ��室���१���㧪�
:��室���१���㧪�
cls
echo 	Sasha's Negatrends
echo I ���ଠ��	B ����㧪�	O ���
echo S - ��࠭��� � �몫����;
echo R - ��࠭��� � ��१���㧨����.
choice /c IBSR /n
if %errorlevel% equ 1 goto ���ଠ���
if %errorlevel% equ 2 goto �����㧪�
if %errorlevel% equ 3 exit
if %errorlevel% equ 4 call "����魨� ��१���᪠.bat"
:�����㧪�
cls
echo 	Sasha's Negatrends
echo I ���ଠ��	B ����㧪�	O ���
echo 1 - %yourname%'s system.
choice /c 1IO /n
if %errorlevel% equ 1 call "����魨� ��१���᪠.bat"
if %errorlevel% equ 2 goto ���ଠ���
if %errorlevel% equ 3 goto ��室���१���㧪�
:���ଠ���
cls
echo 	Sasha's Negatrends
echo I ���ଠ��	B ����㧪�	O ���
for /f "tokens=3,*" %%a in ('systeminfo ^| findstr /c:"��� ��"') do set sys=%%b & if "%sys%"=="" (
	for /f "tokens=3,*" %%a in ('systeminfo ^| findstr /c:"�������� ��"') do set sys=%%b
) else (
	cls
)
echo ��� ���ன�⢠: %computername%;
echo ��� ���짮��⥫�: %username%;
echo ������� ��⥬�: %sys%;
echo ���⥬��� ����� ��ப�: %userprofile%\gwords.
choice /c BO /n
if %errorlevel% equ 1 goto �����㧪�
if %errorlevel% equ 2 goto ��室���१���㧪�
:��஫�
cls
if /i %yourname%==system echo User>user.txt & goto �訡��
if %pw%==null goto ����
if not %pw%==null cls
cls
set /p vhod=���砫� ������ ��஫� ��� %yourname% (O - ���):
cls
if /i %vhod%==o exit
if %vhod%==%pw% goto ����
if not %vhod%==%pw% goto ��஫�
:����
cls
echo �������, %yourname%.
echo ��������, �롥�� �, �� ��� �㦭�:
echo B - ����ன��;
echo F - ᯮᮡ� ���ய�⠭��;
echo M - ������ ������� � ��㧥�;		
echo C - �ᯮ�짮���� ��������� ��ப�;	
echo G - �ࠢ����� .bat 䠩����;
echo D - ��ᯥ��� �����;
echo J - ��������.
choice /c CBFMGDJ /n
if %errorlevel% equ 1 goto ��ப�
if %errorlevel% equ 2 goto ����ன��
if %errorlevel% equ 3 goto ᯮᮡ����ய�⠭��
if %errorlevel% equ 4 goto �������
if %errorlevel% equ 5 goto ᮧ���졠�䠩�
if %errorlevel% equ 6 goto ��ᯥ��ৠ���
if %errorlevel% equ 7 goto ��������
:��ᯥ��ৠ���
cd "%userprofile%\gwords"
if %setfortm%==auto cls
if %setfortm%==manual goto ��筮���ᯧ����
set /a disploading=3
cls
tasklist
echo C - ����� ���� �����;
echo S - �������� ���� �����;
echo B - ����ன�� ��ᯥ��� �����
echo O - ���.
choice /c CSBNO /n /d N /t %disploading%
if %errorlevel% equ 1 goto �����
if %errorlevel% equ 2 goto ��������
if %errorlevel% equ 3 goto ���⧠���
if %errorlevel% equ 4 goto ��ᯥ��ৠ���
if %errorlevel% equ 5 goto ����
:���⧠���
cd "%userprofile%\gwords"
cls
echo �롥�� ᪮���� ���������� �⮡ࠦ���� �����:
echo F - ������;
echo N - ��ଠ�쭠�;
echo S - ��������;
echo P - �� ���������;
echo M - ��������� ������;
echo O - ���.
choice /c FNSPMO /n
if %errorlevel% equ 1 echo auto>settingsfortaskmgr.txt & set /a disploading=1 & goto ��ᯥ��ৠ���
if %errorlevel% equ 2 echo auto>settingsfortaskmgr.txt & set /a disploading=3 & goto ��ᯥ��ৠ���
if %errorlevel% equ 3 echo auto>settingsfortaskmgr.txt & set /a disploading=5 & goto ��ᯥ��ৠ���
if %errorlevel% equ 4 echo auto>settingsfortaskmgr.txt & set /a disploading=999 & goto ��ᯥ��ৠ���
if %errorlevel% equ 5 echo manual>settingsfortaskmgr.txt & goto ��筮���ᯧ����
if %errorlevel% equ 6 goto ��ᯥ��ৠ���
:��筮���ᯧ����
cls
tasklist
echo U - �������� ����;
echo C - ����� ���� �����;
echo S - �������� ���� �����;
echo B - ����ன�� ��ᯥ��� �����;
echo O - ���.
choice /c UCSBO /n
if %errorlevel% equ 1 goto ��筮���ᯧ����
if %errorlevel% equ 2 goto �����
if %errorlevel% equ 3 goto ��������
if %errorlevel% equ 4 goto ���⧠���
if %errorlevel% equ 5 goto ����
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
echo %result%
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
echo �⢥�:
echo %result%
echo Y - �த������;
echo N - ��������.
choice /n
if %errorlevel% equ 1 goto �����멪�������
if %errorlevel% equ 2 goto ����
:�����
set /p newproc=����� �������� ����� ����� ���� ��������:
cls
echo ��筮 �� ��� �����?
echo %newproc%.exe
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 start %newproc%.exe || goto �訡��
if %errorlevel% equ 2 goto �����
if %errorlevel% equ 3 goto ����
goto ����
:ᮧ���졠�䠩�
cd "%userprofile%\Desktop"
cls
echo ����� ��ਠ�� �� ���� �ᯮ�짮����?:
echo C - ᮧ���� .bat 䠩�;
echo D - 㤠���� .bat;
echo O - �⬥��/���.
choice /c CDO /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto 㤠���졠�䠩�
if %errorlevel% equ 3 goto ����
set /p batfile=����� �������� ������ ��⭨��:
if exist %batfile%.bat goto �訡��
cls
echo ��筮 �� ⠪ �� �������� ��⭨�?
echo %batfile%.bat
echo Y - ��;
echo N - ���;
echo O - �⬥����/���.
choice /c YNO /n
if %errorlevel% equ 1 type nul > %batfile%.bat
if %errorlevel% equ 2 goto ᮧ���졠�䠩�
if %errorlevel% equ 3 goto ����
goto ����
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
cd "%userprofile%\gwords"
for /f "tokens=*" %%t in ('type terminal.txt') do set �ଯ�㬮�=%%t
if %�ଯ�㬮�%==cmd cls & cd "C:\Users\sasha" & cmd & goto �����
if %�ଯ�㬮�%==powershell cls & cd "%userprofile%" & Powershell & goto �����
if %�ଯ�㬮�%==both cls
cls
echo �� ����� ��ப� ���� ����?
echo P - Powershell;
echo C - cmd;
echo O - �⬥��/���.
choice /c PCO /n
if %errorlevel% equ 1 cls & cd "%userprofile%" & powershell & goto �����
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto ����
cd C:\Users\sasha
cls
cmd
goto �����
:����ன��
cd "%userprofile%\gwords"
cls
echo ��������, �롥�� �, �� ��� �㦭�:
echo E - 㤠���� ��஫�;
echo T - ������/�������� ��஫�;
echo R - ��१������� ��ப�;
echo S - �몫���� ��ப�;
echo U - �������� ��� ���짮��⥫�;
echo C - ������ �ନ��� �� 㬮�砭��;
echo B - ��� �� �࠭ �����஢��;
echo O - ���.
choice /c ETRSUCBO /n
if %errorlevel% equ 1 goto 㤠�������஫�
if %errorlevel% equ 2 goto ��������஫�
if %errorlevel% equ 3 goto ��१�室
if %errorlevel% equ 4 goto ��室
if %errorlevel% equ 5 goto ��������ﯮ�짮��⥫�
if %errorlevel% equ 6 goto �ନ�����㬮�砭��
if %errorlevel% equ 7 goto ��஫�
if %errorlevel% equ 8 goto ����
:��������ﯮ�짮��⥫�
cls
set /p newname=����� ����� ����� ��� ���짮��⥫�:
cls
if /i %newname%==system cls & echo �������, �� �� ��� ����� �ᯮ�짮����. & pause & goto ��������ﯮ�짮��⥫�
if %newname%==%yourname% cls & echo �������, �� �� 㦥 �ᯮ���� �� ���, ��������, ������ ��㣮�. & pause & goto ��������ﯮ�짮��⥫�
cls
echo ��筮 �� �� ��� ���짮��⥫�?
echo %newname%
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 echo %newname%>user.txt
if %errorlevel% equ 2 goto ��������ﯮ�짮��⥫�
if %errorlevel% equ 3 goto ����ன��
cls
echo �ॡ����� ��१���� �� �� ��������� ���㯨�� � ᨫ�.
echo Y - ��.
choice /c Y /n
if %errorlevel% equ 1 goto ��१�室
:�ନ�����㬮�砭��
cd "%userprofile%\gwords"
cls
echo �롥� ᢮� �ନ��� �� 㬮�砭��:
echo C - cmd;
echo P - Powershell;
echo B - ��訢��� �� �室� � ��ப�;
echo O - �⬥��/���.
choice /c CPBO /n
if %errorlevel% equ 1 echo cmd>terminal.txt
if %errorlevel% equ 2 echo powershell>terminal.txt
if %errorlevel% equ 3 echo both>terminal.txt
if %errorlevel% equ 4 goto ����ன�� & goto ����ன��
cls
echo �ॡ����� ��१���� �� �� ��������� ���㯨�� � ᨫ�.
echo Y - ��.
choice /c Y /n
if %errorlevel% equ 1 goto ��१�室
:㤠�������஫�
cls
if %pw%==null (echo � ��� � ⠪ ���� ��஫�, �� ��� �� ����� ��室�����. & pause & goto ����ன��)  else (cls)
echo �� �筮 ���� 㤠���� ��஫�?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 echo null>password.txt
if %errorlevel% equ 2 goto ����ன��
cls
echo �ॡ����� ��१���� �� �� ��������� ���㯨�� � ᨫ�.
echo Y - ��.
choice /c Y /n
if %errorlevel% equ 1 goto ��१�室
:��������஫�
cls
set /p npw=����� ����� ���� ��஫�:
if %npw%==%pw% cls & echo �������, �� � ��� 㦥 ���� ⠪�� ��஫�, ��������, ������ ��㣮�.
cls
echo ��筮 �� ��� ��஫�?
echo %npw%
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 echo %npw%>password.txt
if %errorlevel% equ 2 goto ��������஫�
if %errorlevel% equ 3 goto ����
cls
echo �ॡ����� ��१���� �� �� ��������� ���㯨�� � ᨫ�.
echo Y - ��.
choice /c Y /n
if %errorlevel% equ 1 goto ��१�室
:�몫
cls
echo �� �筮 ���� �몫���� ���ன�⢮?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 shutdown /s /t 0
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
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
:fastboot
cls
echo �� �筮 ���� �몫���� � �����⮢��� �������� � ����஬� ������?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 shutdown /s /hybrid /t 0
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
exit
:�������
cls
set /p sayt=����� ���� �㤠 ��室���:
cls
echo ��筮 �� ��� ����?
echo %sayt%
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://www.%sayt% || goto �訡��
if %errorlevel% equ 2 goto �������
if %errorlevel% equ 3 goto ����
goto ����
:�䠩
cls
echo �� �筮 ���� ��१���㧨���� � ����\UEFI?
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 start %userprofile%\gwords\forbios.ps1
if %errorlevel% equ 2 goto ᯮᮡ����ய�⠭��
exit
:ᯮᮡ����ய�⠭��
cls
echo ��������, �롥�� ���� ���ன �� �㤥� �ᯮ�짮���� ���ன�⢮:
echo T - �।� ����⠭�������;
echo S - �몫���� ��������;
echo R - ��१���㧨�� ��������;
echo B - ��१���㧨���� � ����\UEFI;
echo F - �몫���� � �����⮢��� �������� � ����஬� ������;
echo O - ���.
choice /c TSRBFO /n
if %errorlevel% equ 1 goto �।�
if %errorlevel% equ 2 goto �몫
if %errorlevel% equ 3 goto ��१
if %errorlevel% equ 4 goto �䠩
if %errorlevel% equ 5 goto fastboot
if %errorlevel% equ 6 goto ����
:��������
cls
set /p endproc=����� ����� ����� ���� ��������:
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
choice /c ABCDO /n
if %errorlevel% equ 1 goto �ࠢ��1
if %errorlevel% equ 2 goto �ࠢ��2
if %errorlevel% equ 3 goto �ࠢ��3
if %errorlevel% equ 4 goto �ࠢ��4
if %errorlevel% equ 5 goto ����
:�ࠢ��1
cls
echo �� �� �ᯮ�짮���� ��������� ��ப�
echo �� ������ ������� ᫮�� "help" � ⮣��
echo �� 㧭���� ����� ������� ������� �
echo ��������� ��ப�.
echo ������ ���� ������� �� �� ���.
pause >nul
goto �ࠢ��
:�ࠢ��2
cls
echo ��������� ��ப� -
echo �� ���� �����㬥�� � ����� �� ������:
echo �ࠢ���� ���ய�⠭���, �������� ��⥬�� 䠩��
echo ��� 㤠���� ��(�� �� ४����������, �� ⢮�� ��⥬� (��) ���� �㤥�)
echo ᮧ������ 䠩�� ����� � �������� �� � ����� 祣� ��㣮��.
echo ����� ���� ������� �� �� ���.
pause >nul
goto �ࠢ��
:�ࠢ��3
cls
echo �⨫�� "�����㬥��� ����������� � ᯮᮡ� ���ய�⠭��"
echo �㦭� �� �� �������� ࠡ��� � ��⥬��.
echo �� �⨫�� ��ਮ��筮 ����������� � ����������� ����� ��㣨� �㭪権.
echo ����� ���� ������� �� �� ���.
pause >nul
goto �ࠢ��
:�ࠢ��4
cls
echo �� �� �������� ��� 㤠���� ��஫� �� ������
echo ���� � ����ன�� � ������ �� ��������� E �� �� 㤠����
echo ��஫� ��� �� T �� �� �������� ��஫�.
echo ������� 䠪�: ��஫� ����� �� ����ᠫ� ��室����� � ⥪�⮢�� ���㬥��.
echo ����� ���� ������� �� �� ���.
pause >nul
goto �ࠢ��
:㤠���졠�䠩�
cd "%userprofile%\Desktop"
cls
set /p delbatfile=����� �������� ��⭨�� ���ண� ���� 㤠����:
if not exist %delbatfile%.bat goto �訡��
cls
echo �� �筮 ���� 㤠���� ��� ��⭨�?
echo %delbatfile%.bat
echo Y - ��;
echo N - ���;
echo O - �⬥��/���.
choice /c YNO /n
if %errorlevel% equ 1 del %delbatfile%.bat
if %errorlevel% equ 2 goto 㤠���졠�䠩�
if %errorlevel% equ 3 goto ����
goto ���� 
:��ࢮ��砫쭠ﭠ��ன��
cls
echo �������� ���� �ணࠬ�� ��⠭���� ����㧨� 䠩��...
timeout %loading% /nobreak >nul
cls
echo � ���� �� �� ��� �����쪨�,
echo ���⮬� � �।����� ᭠砫�
echo ����ந�� ��� ��⥬� ��� ⥡�.
pause
cls
:1�⠯
cls
echo 1 �⠯.
set /p yourname=����� ��� ⥡� �����:
if %yourname%==system cls & echo � ᮦ������ �� ��� ����� �ᯮ�짮����. & pause & goto 1�⠯
cls
echo ��筮 �� ⥡� ⠪ �����?
echo %yourname%
echo Y - ��;
echo N - ���.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto 1�⠯
:2�⠯
cls
echo 2 �⠯.
echo �롥� �ନ��� ����� �� �㤥�� �ᯮ�짮���� �� 㬮�砭��:
echo C - cmd;
echo P - Powershell;
echo B - ����� ࠧ ��訢���.
choice /c CPB /n
if %errorlevel% equ 1 echo cmd>terminal.txt
if %errorlevel% equ 2 echo powershell>terminal.txt
if %errorlevel% equ 3 echo both>terminal.txt
:3�⠯
cls
echo 3 �⠯.
set /p npw=����� ����� ��� ⥡� ���������騩�� ��஫�:
if "%npw%"=="" cls & echo ����� ��� ����� ����� ��஫�. & pause & goto 3�⠯
cls
set /p vhod=������ �����न ᢮� ��஫�:
if %vhod%==%npw% cls
if not %vhod%==%npw% cls & echo �� �� �����न� ᢮� ��஫�, �ਤ�뢠� ������. & pause & goto 3�⠯
:����쭠��ன��
cls
echo ������ ��⠫��� ���������.
timeout 5 /nobreak >nul
cls
echo � ���� �ணࠬ�� ����ࠨ���� ����ன�� � �� ���� ������ �⤮����...
cd "%userprofile%\gwords"
echo %yourname%>user.txt
echo %npw%>password.txt
echo false>oobe.txt
timeout %loading% /nobreak >nul
cls
echo ���� ��⮢�.
timeout 4 /nobreak >nul
cls
echo �ॡ����� ��१���� �� �� ��������� ���㯨�� � ᨫ�.
echo Y - ��.
choice /c Y /n
if %errorlevel% equ 1 call "����魨� ��१���᪠.bat"
:��室
cls
echo ���⥬� �몫�砥����, �������� ��������...
timeout %loading% /nobreak >nul
exit
:��१�室
cd "%userprofile%\gwords"
cls
echo �������� ���� ��ப� ��१���㧨����...
timeout %loading% /nobreak >nul
call "����魨� ��१���᪠.bat"
:�訡��
@echo off
set /a screenofdeath=%random% %% 100
cls
timeout /NOBREAK 4 >nul
echo :(
timeout /NOBREAK 1 >nul
echo ��宦� � ��⥬� �ந��諠 �訡��.
timeout /NOBREAK 1 >nul
echo ���� ��ப� �� ࠧ�㯫����� �� ���㤠 �� 㩤���.
timeout /NOBREAK 2 >nul
for /l %%i in (0,%screenofdeath%,100) do (
	cls
	echo :(
	echo ��宦� � ��⥬� �ந��諠 �訡��.
	echo ���� ��ப� �� ࠧ�㯫����� �� ���㤠 �� 㩤���.
	echo %%i
	timeout 2 /nobreak >nul
)
cd "%userprofile%\gwords"
call "����魨� ��१���᪠.bat"
:����魨�-����ன��
cls
cd %userprofile%
@echo off
md gwords
cd %userprofile%\gwords
echo Start-Process "%userprofile%\gwords\bios.bat" -Verb Runas>forbios.ps1
echo shutdown /r /fw /t 0>bios.bat
echo auto>settingsfortaskmgr.txt
echo system>user.txt
echo true>oobe.txt
echo null>password.txt
echo both>terminal.txt
echo cd "%userprofile%\Desktop">"����魨� ��१���᪠.bat"
echo call "�����㬥��� ����������� � ���ᮡ� �����ய�⠭��.bat">>"����魨� ��१���᪠.bat"
echo exit>>"����魨� ��१���᪠.bat"