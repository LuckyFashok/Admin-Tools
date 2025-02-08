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
echo Пожалуйста, нажмите S что бы попасть в биос
choice /c SN /n /d N /t 5
if %errorlevel% equ 1 goto информациябиос
if %errorlevel% equ 2 cls
for /f "tokens=1" %%o in ('type oobe.txt') do set oobe=%%o
cls
color f
if %oobe%==true goto первоначальнаянастройка
if %oobe%==false cls
echo Подождите пока система загрузиться...
timeout %loading% /nobreak >nul
goto пароль
:биос
cls
echo 	Sasha's Negatrends
echo I Информация	B Загрузка	O Выйти
choice /c IBO /n
if %errorlevel% equ 1 goto информациябиос
if %errorlevel% equ 2 goto менюзагрузки
if %errorlevel% equ 3 goto выходиперезагрузка
:выходиперезагрузка
cls
echo 	Sasha's Negatrends
echo I Информация	B Загрузка	O Выйти
echo S - сохранить и выключить;
echo R - сохранить и перезагрузиться.
choice /c IBSR /n
if %errorlevel% equ 1 goto информациябиос
if %errorlevel% equ 2 goto менюзагрузки
if %errorlevel% equ 3 exit
if %errorlevel% equ 4 call "помощник перезапуска.bat"
:менюзагрузки
cls
echo 	Sasha's Negatrends
echo I Информация	B Загрузка	O Выйти
echo 1 - %yourname%'s system.
choice /c 1IO /n
if %errorlevel% equ 1 call "помощник перезапуска.bat"
if %errorlevel% equ 2 goto информациябиос
if %errorlevel% equ 3 goto выходиперезагрузка
:информациябиос
cls
echo 	Sasha's Negatrends
echo I Информация	B Загрузка	O Выйти
for /f "tokens=3,*" %%a in ('systeminfo ^| findstr /c:"Имя ОС"') do set sys=%%b & if "%sys%"=="" (
	for /f "tokens=3,*" %%a in ('systeminfo ^| findstr /c:"Название ОС"') do set sys=%%b
) else (
	cls
)
echo Имя устройства: %computername%;
echo Имя пользователя: %username%;
echo Редакция системы: %sys%;
echo Системная папка строки: %userprofile%\gwords.
choice /c BO /n
if %errorlevel% equ 1 goto менюзагрузки
if %errorlevel% equ 2 goto выходиперезагрузка
:пароль
cls
if /i %yourname%==system echo User>user.txt & goto ошибка
if %pw%==null goto меню
if not %pw%==null cls
cls
set /p vhod=Сначала введите пароль для %yourname% (O - выйти):
cls
if /i %vhod%==o exit
if %vhod%==%pw% goto меню
if not %vhod%==%pw% goto пароль
:меню
cls
echo Здраствуйте, %yourname%.
echo Пожалуйста, выберите то, что вам нужно:
echo B - настройки;
echo F - способы электропитания;
echo M - открыть вкладку в браузере;		
echo C - использовать командную строку;	
echo G - управление .bat файлами;
echo D - диспетчер задач;
echo J - калькулятор.
choice /c CBFMGDJ /n
if %errorlevel% equ 1 goto строка
if %errorlevel% equ 2 goto настройки
if %errorlevel% equ 3 goto способыэлектропитания
if %errorlevel% equ 4 goto вкладка
if %errorlevel% equ 5 goto создатьбатфайл
if %errorlevel% equ 6 goto диспетчерзадач
if %errorlevel% equ 7 goto калькулятор
:диспетчерзадач
cd "%userprofile%\gwords"
if %setfortm%==auto cls
if %setfortm%==manual goto ручнойдиспзадач
set /a disploading=3
cls
tasklist
echo C - начать новый процесс;
echo S - завершить старый процесс;
echo B - настройки диспетчера задач
echo O - выйти.
choice /c CSBNO /n /d N /t %disploading%
if %errorlevel% equ 1 goto начпроц
if %errorlevel% equ 2 goto завпроцесс
if %errorlevel% equ 3 goto настзадач
if %errorlevel% equ 4 goto диспетчерзадач
if %errorlevel% equ 5 goto меню
:настзадач
cd "%userprofile%\gwords"
cls
echo Выберите скорость обновления отображения задач:
echo F - быстрая;
echo N - нормальная;
echo S - медленая;
echo P - не обновлять;
echo M - обновлять вручную;
echo O - выйти.
choice /c FNSPMO /n
if %errorlevel% equ 1 echo auto>settingsfortaskmgr.txt & set /a disploading=1 & goto диспетчерзадач
if %errorlevel% equ 2 echo auto>settingsfortaskmgr.txt & set /a disploading=3 & goto диспетчерзадач
if %errorlevel% equ 3 echo auto>settingsfortaskmgr.txt & set /a disploading=5 & goto диспетчерзадач
if %errorlevel% equ 4 echo auto>settingsfortaskmgr.txt & set /a disploading=999 & goto диспетчерзадач
if %errorlevel% equ 5 echo manual>settingsfortaskmgr.txt & goto ручнойдиспзадач
if %errorlevel% equ 6 goto диспетчерзадач
:ручнойдиспзадач
cls
tasklist
echo U - обновить лист;
echo C - начать новый процесс;
echo S - завершить старый процесс;
echo B - настройки диспетчера задач;
echo O - выйти.
choice /c UCSBO /n
if %errorlevel% equ 1 goto ручнойдиспзадач
if %errorlevel% equ 2 goto начпроц
if %errorlevel% equ 3 goto завпроцесс
if %errorlevel% equ 4 goto настзадач
if %errorlevel% equ 5 goto меню
:калькулятор
cls
echo Выберите способ калькулятора:
echo F - быстрый;
echo S - медленный;
echo O - отмена/выйти.
choice /c FSO /n
if %errorlevel% equ 1 goto быстрыйкалькулятор
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto меню
set /p fnum=Напиши здесь первое число:
cls
set /p fnumsnum=Напиши +,-,*,/ :
cls
set /p snum=Напиши здесь второе число:
cls
set /a result=%fnum%%fnumsnum%%snum%
cls
echo Ответ:
echo %result%
echo Y - продолжить;
echo N - завершить.
choice /n
if %errorlevel% equ 1 goto калькулятор
if %errorlevel% equ 2 goto меню
:быстрыйкалькулятор
cls
set /p fastcalc=Напиши здесь уравнение:
set /a result=%fastcalc%
cls
echo Ответ:
echo %result%
echo Y - продолжить;
echo N - завершить.
choice /n
if %errorlevel% equ 1 goto быстрыйкалькулятор
if %errorlevel% equ 2 goto меню
:начпроц
set /p newproc=Напиши название процесса который хочешь запустить:
cls
echo Точно ли этот процесс?
echo %newproc%.exe
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 start %newproc%.exe || goto ошибка
if %errorlevel% equ 2 goto начпроц
if %errorlevel% equ 3 goto меню
goto меню
:создатьбатфайл
cd "%userprofile%\Desktop"
cls
echo Какую вариант ты хочешь использовать?:
echo C - создать .bat файл;
echo D - удалить .bat;
echo O - отмена/выйти.
choice /c CDO /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto удалитьбатфайл
if %errorlevel% equ 3 goto меню
set /p batfile=Напиши название нового батника:
if exist %batfile%.bat goto ошибка
cls
echo Точно ли так ты назовёшь батник?
echo %batfile%.bat
echo Y - да;
echo N - нет;
echo O - отменить/выйти.
choice /c YNO /n
if %errorlevel% equ 1 type nul > %batfile%.bat
if %errorlevel% equ 2 goto создатьбатфайл
if %errorlevel% equ 3 goto меню
goto меню
:вопрос
@echo off
color f
cls
echo Хочешь уйти?
echo Y - да(строка закроеться);
echo N - нет;
echo O - выбор дополнительных возможностей.
choice /c YNO /n
if %errorlevel% equ 1 exit
if %errorlevel% equ 2 goto строка
if %errorlevel% equ 3 goto меню
:строка
cd "%userprofile%\gwords"
for /f "tokens=*" %%t in ('type terminal.txt') do set термпоумол=%%t
if %термпоумол%==cmd cls & cd "C:\Users\sasha" & cmd & goto вопрос
if %термпоумол%==powershell cls & cd "%userprofile%" & Powershell & goto вопрос
if %термпоумол%==both cls
cls
echo Ты какую строку хочешь юзануть?
echo P - Powershell;
echo C - cmd;
echo O - отмена/выйти.
choice /c PCO /n
if %errorlevel% equ 1 cls & cd "%userprofile%" & powershell & goto вопрос
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto меню
cd C:\Users\sasha
cls
cmd
goto вопрос
:настройки
cd "%userprofile%\gwords"
cls
echo Пожалуйста, выберите то, что вам нужно:
echo E - удалить пароль;
echo T - задать/изменить пароль;
echo R - перезапустить строку;
echo S - выключить строку;
echo U - изменить имя пользователя;
echo C - задать терминал по умолчанию;
echo B - выйти на экран блокировки;
echo O - выйти.
choice /c ETRSUCBO /n
if %errorlevel% equ 1 goto удалениепароля
if %errorlevel% equ 2 goto изменапароля
if %errorlevel% equ 3 goto перезаход
if %errorlevel% equ 4 goto выход
if %errorlevel% equ 5 goto изменаимяпользователя
if %errorlevel% equ 6 goto терминалпоумолчанию
if %errorlevel% equ 7 goto пароль
if %errorlevel% equ 8 goto меню
:изменаимяпользователя
cls
set /p newname=Напиши здесь новое имя пользователя:
cls
if /i %newname%==system cls & echo извините, но это имя нельзя использовать. & pause & goto изменаимяпользователя
if %newname%==%yourname% cls & echo извините, но вы уже используете это имя, пожалуйста, напишите другое. & pause & goto изменаимяпользователя
cls
echo Точно ли это имя пользователя?
echo %newname%
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 echo %newname%>user.txt
if %errorlevel% equ 2 goto изменаимяпользователя
if %errorlevel% equ 3 goto настройки
cls
echo Требуеться перезапуск что бы изменения вступили в силу.
echo Y - ок.
choice /c Y /n
if %errorlevel% equ 1 goto перезаход
:терминалпоумолчанию
cd "%userprofile%\gwords"
cls
echo Выбери свой терминал по умолчанию:
echo C - cmd;
echo P - Powershell;
echo B - спрашивать при входе в строку;
echo O - отмена/выйти.
choice /c CPBO /n
if %errorlevel% equ 1 echo cmd>terminal.txt
if %errorlevel% equ 2 echo powershell>terminal.txt
if %errorlevel% equ 3 echo both>terminal.txt
if %errorlevel% equ 4 goto настройки & goto настройки
cls
echo Требуеться перезапуск что бы изменения вступили в силу.
echo Y - ок.
choice /c Y /n
if %errorlevel% equ 1 goto перезаход
:удалениепароля
cls
if %pw%==null (echo У вас и так нету пароля, вы тут не можете находиться. & pause & goto настройки)  else (cls)
echo Ты точно хочешь удалить пароль?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 echo null>password.txt
if %errorlevel% equ 2 goto настройки
cls
echo Требуеться перезапуск что бы изменения вступили в силу.
echo Y - ок.
choice /c Y /n
if %errorlevel% equ 1 goto перезаход
:изменапароля
cls
set /p npw=Напиши здесь новый пароль:
if %npw%==%pw% cls & echo извините, но у вас уже есть такой пароль, пожалуйста, напишите другой.
cls
echo Точно ли этот пароль?
echo %npw%
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 echo %npw%>password.txt
if %errorlevel% equ 2 goto изменапароля
if %errorlevel% equ 3 goto меню
cls
echo Требуеться перезапуск что бы изменения вступили в силу.
echo Y - ок.
choice /c Y /n
if %errorlevel% equ 1 goto перезаход
:выкл
cls
echo Ты точно хочешь выключить устройство?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 shutdown /s /t 0
if %errorlevel% equ 2 goto способыэлектропитания
exit
:перез
cls
echo Ты точно хочешь перезагрузиться?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 shutdown /r /t 0
if %errorlevel% equ 2 goto способыэлектропитания
exit
:среда
cls
echo Ты точно хочешь войти в среду восстановления?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 shutdown /r /o /t 0
if %errorlevel% equ 2 goto способыэлектропитания
exit
:fastboot
cls
echo Ты точно хочешь выключить и подготовить компьютер к быстрому запуску?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 shutdown /s /hybrid /t 0
if %errorlevel% equ 2 goto способыэлектропитания
exit
:вкладка
cls
set /p sayt=Напиши адрес куда заходить:
cls
echo Точно ли этот адрес?
echo %sayt%
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 start "C:\Program Files\Google\Chrome\Application\chrome.exe" https://www.%sayt% || goto ошибка
if %errorlevel% equ 2 goto вкладка
if %errorlevel% equ 3 goto меню
goto меню
:уефай
cls
echo Ты точно хочешь перезагрузиться в биос\UEFI?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 start %userprofile%\gwords\forbios.ps1
if %errorlevel% equ 2 goto способыэлектропитания
exit
:способыэлектропитания
cls
echo Пожалуйста, выберите опцию которой вы будете использовать устройство:
echo T - среда восстановления;
echo S - выключить компьютер;
echo R - перезагрузить компьютер;
echo B - перезагрузиться в биос\UEFI;
echo F - выключить и подготовить компьютер к быстрому запуску;
echo O - выйти.
choice /c TSRBFO /n
if %errorlevel% equ 1 goto среда
if %errorlevel% equ 2 goto выкл
if %errorlevel% equ 3 goto перез
if %errorlevel% equ 4 goto уефай
if %errorlevel% equ 5 goto fastboot
if %errorlevel% equ 6 goto меню
:завпроцесс
cls
set /p endproc=Напиши процесс который хочешь завершить:
cls
echo Точно ли этот процесс?
echo %endproc%.exe
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 taskkill /im %endproc%.exe /f || goto ошибка
if %errorlevel% equ 2 goto завпроцесс
if %errorlevel% equ 3 goto меню
goto меню
:справка
cls
echo Пожалуйста, выберите опцию в которой хотетите увидеть справку:
echo A - как использовать командную строку;
echo B - что такое командная строка;
echo C - зачем нужна эта утилита;
echo D - как изменить/удалить пароль;
echo O - выйти.
choice /c ABCDO /n
if %errorlevel% equ 1 goto справка1
if %errorlevel% equ 2 goto справка2
if %errorlevel% equ 3 goto справка3
if %errorlevel% equ 4 goto справка4
if %errorlevel% equ 5 goto меню
:справка1
cls
echo что бы использовать командную строку
echo ты должен написать слово "help" и тогда
echo ты узнаешь какие команды существует в
echo командной строке.
echo нажмите любую клавишу что бы выйти.
pause >nul
goto справка
:справка2
cls
echo командная строка -
echo это мощный инструмент с которым ты можешь:
echo управлять электропитанием, изменять системные файлы
echo или удалять их(но не рекомендуеться, ато твоей системе (ос) плохо будет)
echo создавать файлы папки и изменять их и много чего другого.
echo Нажите любую клавишу что бы выйти.
pause >nul
goto справка
:справка3
cls
echo утилита "инструменты администратора и способы электропитания"
echo нужна что бы облегчить работу с системой.
echo эта утилита периодично обновляеться и добавляеться много других функций.
echo Нажите любую клавишу что бы выйти.
pause >nul
goto справка
:справка4
cls
echo Что бы изменить или удалить пароль ты должен
echo зайти в настройки и нажать на английскую E что бы удалить
echo пароль или на T что бы изменить пароль.
echo Забавный факт: пароль который вы написали находиться в текстовом документе.
echo Нажите любую клавишу что бы выйти.
pause >nul
goto справка
:удалитьбатфайл
cd "%userprofile%\Desktop"
cls
set /p delbatfile=Напиши название батника которого хочешь удалить:
if not exist %delbatfile%.bat goto ошибка
cls
echo Ты точно хочешь удалить этот батник?
echo %delbatfile%.bat
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 del %delbatfile%.bat
if %errorlevel% equ 2 goto удалитьбатфайл
if %errorlevel% equ 3 goto меню
goto меню 
:первоначальнаянастройка
cls
echo Подождите пока программа установки загрузит файлы...
timeout %loading% /nobreak >nul
cls
echo Я вижу что ты тут новенький,
echo поэтому я предлагаю сначала
echo настроить эту систему под тебя.
pause
cls
:1этап
cls
echo 1 Этап.
set /p yourname=Напиши как тебя звать:
if %yourname%==system cls & echo К сожалению это имя нельзя использовать. & pause & goto 1этап
cls
echo Точно ли тебя так зовут?
echo %yourname%
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto 1этап
:2этап
cls
echo 2 Этап.
echo Выбери терминал который ты будешь использовать по умолчанию:
echo C - cmd;
echo P - Powershell;
echo B - каждый раз спрашивать.
choice /c CPB /n
if %errorlevel% equ 1 echo cmd>terminal.txt
if %errorlevel% equ 2 echo powershell>terminal.txt
if %errorlevel% equ 3 echo both>terminal.txt
:3этап
cls
echo 3 Этап.
set /p npw=Напиши здесь хорошо тебе запоминающийся пароль:
if "%npw%"=="" cls & echo введи хоть какой нибудь пароль. & pause & goto 3этап
cls
set /p vhod=Теперь подверди свой пароль:
if %vhod%==%npw% cls
if not %vhod%==%npw% cls & echo Ты не подвердил свой пароль, придумывай заново. & pause & goto 3этап
:ждатьнастройки
cls
echo Теперь осталось подождать.
timeout 5 /nobreak >nul
cls
echo А пока программа настраивает настройки то ты пока можешь отдохнуть...
cd "%userprofile%\gwords"
echo %yourname%>user.txt
echo %npw%>password.txt
echo false>oobe.txt
timeout %loading% /nobreak >nul
cls
echo Почти готово.
timeout 4 /nobreak >nul
cls
echo Требуеться перезапуск что бы изменения вступили в силу.
echo Y - ок.
choice /c Y /n
if %errorlevel% equ 1 call "помощник перезапуска.bat"
:выход
cls
echo Система выключаеться, пожалуйста подождите...
timeout %loading% /nobreak >nul
exit
:перезаход
cd "%userprofile%\gwords"
cls
echo подождите пока строка перезагрузиться...
timeout %loading% /nobreak >nul
call "помощник перезапуска.bat"
:ошибка
@echo off
set /a screenofdeath=%random% %% 100
cls
timeout /NOBREAK 4 >nul
echo :(
timeout /NOBREAK 1 >nul
echo Похоже в системе произошла ошибка.
timeout /NOBREAK 1 >nul
echo Пока строка не раздуплиться ты никуда не уйдешь.
timeout /NOBREAK 2 >nul
for /l %%i in (0,%screenofdeath%,100) do (
	cls
	echo :(
	echo Похоже в системе произошла ошибка.
	echo Пока строка не раздуплиться ты никуда не уйдешь.
	echo %%i
	timeout 2 /nobreak >nul
)
cd "%userprofile%\gwords"
call "помощник перезапуска.bat"
:помощник-настройки
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
echo cd "%userprofile%\Desktop">"помощник перезапуска.bat"
echo call "Инструменты Администратора И Способы Электропитания.bat">>"помощник перезапуска.bat"
echo exit>>"помощник перезапуска.bat"