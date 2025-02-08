@echo off
color f
set mypath=%~dp0
set filesize=%~z0
set admintools=%~nx0
set admintoolsname=%~n0
:: НЕ ЗАБЫВАЙ МЕНЯТЬ ВЕРСИЮ ПРИ ОБНОВЛЕНИИ
::					\/
set admintoolsver=1.36
::					/\
:: НЕ ЗАБЫВАЙ МЕНЯТЬ ВЕРСИЮ ПРИ ОБНОВЛЕНИИ
set /a loading=1+%random% %% 9
reg query HKCU\Environment /v ATP
if %errorlevel% gtr 0 goto помощник-настройки
cd "%ATP%" || goto помощник-настройки
if not exist "oobe.txt" goto автовосстановление
if not exist "user.txt" goto автовосстановление
if not exist "bios.bat" goto автовосстановление
if not exist "password.txt" goto автовосстановление
if not exist "terminal.txt" goto автовосстановление
for /f "tokens=1" %%o in ('type oobe.txt') do set oobe=%%o
if "%oobe%"=="true" (goto первоначальнаянастройка) else if "%oobe%"=="false" cls
for /f "tokens=*" %%p in ('type password.txt') do set pw=%%p
for /f "tokens=*" %%u in ('type user.txt') do set yourname=%%u
for /f "tokens=1" %%t in ('type terminal.txt') do set term=%%t
if "%yourname%"=="myname" set yourname=%username%
if exist "Lock3.txt" (
	set TheMostBigLockCheater=true
	goto блокировка
)
if exist "Lock2.txt" (
	set MostLockCheater=true
	goto блокировка
)
if exist "Lock.txt" (
	set LockCheater=true
	goto блокировка
)
set /a countoferror=0
:пароль
set vhod=
title Экран Блокировки
cls
if "%pw%"=="null" goto меню
if "%countoferror%" equ "3" goto блокировка
set /p vhod=Сначала введите пароль для %yourname% (O - выйти):
if /i "%vhod%"=="o" exit
if "%vhod%"=="%pw%" (
	goto меню
) else (
	set /a countoferror+=1
	goto пароль
)
:блокировка
set /a countoferror=0
title Блокировка программы
cd "%ATP%"
cls
if "%TheMostBigLockCheater%"=="true" (
	del Lock2.txt
	for /l %%p in (300,-1,0) do (
		cls
		echo Лови бан на 5 минут что бы знал
		echo как правильно себя вести.
		echo Осталось %%p секунд что бы программа разблокировалась.
		timeout 1 /nobreak >nul
	)
	set TheMostBigLockCheater=
	del Lock3.txt
	goto пароль
) else if "%MostLockCheater%"=="true" (
	type nul > Lock3.txt
	del Lock2.txt
	for /l %%p in (120,-1,0) do (
		cls
		echo Почему ты просто не послушаешься
		echo и подождешь 30 секунд?
		echo это не так много как кажеться,
		echo но нет, ты не послушал, тебе нужно
		echo Особое приглашение.
		echo Осталось %%p секунд что бы программа разблокировалась.
		timeout 1 /nobreak >nul
	)
	set MostLockCheater=
	del Lock3.txt
	goto пароль
) else if "%LockCheater%"=="true" (
	type nul > Lock2.txt
	del Lock.txt
	for /l %%p in (60,-1,0) do (
		cls
		echo Ты видимо не читаешь предупреждение
		echo о том что будет хуже.Вот теперь
		echo сиди и жди окончание таймера.
		echo Ещё раз будешь читерить, будет намного хуже.
		echo Осталось %%p секунд что бы программа разблокировалась.
		timeout 1 /nobreak >nul
	)
	set LockCheater=
	del Lock2.txt
	goto пароль
)
type nul > Lock.txt
for /l %%p in (30,-1,0) do (
	cls
	echo ! ! ! Внимание ! ! !
	echo Программа заблокировалась по причене блокировки.
	echo Вы ввели пароль неправильно 3 раза,
	echo поэтому мы вынуждени заблокировать программу в целях безопасности.
	echo И пожалуйста, не пытайтесь обходить блокировку, будет только хуже.
	echo Осталось %%p секунд что бы программа разблокировала доступ к вводу пароля.
	timeout 1 /nobreak >nul
)
del Lock.txt
goto пароль
:меню
Title %admintoolsname%
cls
echo Здраствуйте, %yourname%.
echo Добро пожаловать в %admintoolsname%,
echo пожалуйста, выберите то, что вам нужно:
echo C - использовать командную строку;
echo B - настройки;
echo F - способы электропитания;
echo G - управление файлами;
echo P - управление процессами;
echo L - лотерея;
echo J - калькулятор.
choice /c CBFGPLJ /n
if %errorlevel% equ 1 goto строка
if %errorlevel% equ 2 goto настройки
if %errorlevel% equ 3 goto способыэлектропитания
if %errorlevel% equ 4 goto выборфайл
if %errorlevel% equ 5 goto выборпроцесс
if %errorlevel% equ 6 goto вопрос_лотереи
if %errorlevel% equ 7 goto калькулятор
:вопрос_лотереи
cls
echo Выберите способ лотереи:
echo A - в отдельном окне;
echo B - в программе(%admintoolsname%);
echo O - выйти.
choice /c ABO /n
if %errorlevel% equ 1 goto установка_контента_лотереи
if %errorlevel% equ 2 goto начало_лотереи
if %errorlevel% equ 3 goto меню
:начало_лотереи
cls
set /p %bil%=Напиши здесь номер билета[от 1 до 100]:
if %bil% lss 1 (
	cls
	echo Ваше число меньше 1.
	pause
	goto начало_лотереи
) else if %bil% gtr 100 (
	cls
	echo Ваше число больше 100.
	pause
	goto начало_лотереи
)
:Игра_лотереи
set /a %winnum%=1+%random% %% 99
cls
echo Ваш билет:%bil%
echo И победителем будет...
timeout 2 /nobreak >nul
echo %winnum%
timeout 1 /nobreak >nul
if "%winnum%"=="%bil%" (
	cls
	echo Поздравляю,вы победили!
	pause
	goto меню
) else (
	cls
	echo К сожалению, никто не выиграл.
	timeout 2 /nobreak >nul
	goto Игра_лотереи
)
:установка_контента_лотереи
title установка лотереи
cd "%ATP%"
cls
if exist "game.bat" (
	title Игра
	echo Программа запустила вам игру, хорошо провести время!
	start "" "game.bat"
	pause
	cls
	echo Желаете удалить игру?
	echo Y - да;
	echo N - нет, я хочу оставить игру что бы поиграть позже.
	choice /n
	if %errorlevel% equ 1 del /q "game.bat"
	goto меню
	if %errorlevel% equ 2 goto меню
)
echo Тогда нам нужно установить сначала лотерею, это займет немного времени.
echo Просто подождите...
chcp 866 > game.bat
echo @echo off> game.bat
echo color F>> game.bat
echo :начало>> game.bat
echo cls>> game.bat
echo set /p bil=Напишите тут свой номер билета[От 1 до 100][O - выйти]:>> game.bat
echo if /i "%%bil%%"=="o" exit>>game.bat
echo if %%bil%% lss 1 (>>game.bat
echo 	cls>>game.bat
echo 	echo твой билет меньше 1.>>game.bat
echo 	pause>>game.bat
echo 	goto начало>> game.bat
echo ) else if %%bil%% gtr 100 (>>game.bat
echo 	cls>>game.bat
echo 	echo твой билет больше 100.>>game.bat
echo 	pause>>game.bat
echo 	goto начало>>game.bat
echo )>>game.bat
echo :игра>> game.bat
echo set /a winnum=1+%%random%% %%%% 99>> game.bat
echo cls>> game.bat
echo echo Ваш билет:%%bil%%>>game.bat
echo echo И победителем будет...>> game.bat
echo timeout 2 /nobreak ^>nul>>game.bat
echo echo %%winnum%%>> game.bat
echo timeout 1 /nobreak ^>nul>>game.bat
echo if "%%winnum%%"=="%%bil%%" (>>game.bat
echo 	echo Поздравляю,вы победили! >>game.bat
echo 	pause>>game.bat
echo 	goto начало>> game.bat
echo ) else (>>game.bat
echo 	echo К сожалению,никто пока не победил.>>game.bat
echo 	timeout 2 /nobreak ^>nul>>game.bat
echo 	goto игра>> game.bat
echo )>>game.bat
cls
echo Контент установлен, можете играть.
start "" "game.bat"
cls
echo Хотите удалить игру?
echo Y - да;
echo N - нет, я хочу оставить игру что бы поиграть позже.
choice /n
if %errorlevel% equ 1 (
	del /q "game.bat"
	goto меню
) else if %errorlevel% equ 2 goto меню
:выборпроцесс
cls
echo Выбери способ управления процессами:
echo C - начать новый процесс;
echo S - завершить старый процесс;
echo O - отмена/выйти.
choice /c CSO /n
if %errorlevel% equ 1 goto начпроц
if %errorlevel% equ 2 goto завпроцесс
if %errorlevel% equ 3 goto меню
:сведенияос
cls
echo Имя устройства:			%computername%;
echo Имя пользователя:		%username%;
echo Папка пользователя:		%userprofile%;
echo Текущий путь к Инструментам:	%mypath%;
echo Текущий вес файла:		%filesize%;
echo Текущая версия Инструментов:	%admintoolsver%;
echo Системная папка gwords:		%ATP%;
echo Текущая дата:			%date%.
echo U - изменения в новой версии.
echo O - выйти.
choice /c UO /n
if %errorlevel% equ 1 goto Изменения_в_админтулс
if %errorlevel% equ 2 goto настройки
:Изменения_в_админтулс
:: НЕ ЗАБЫВАЙ ДОБАВЛЯТЬ ИЗМЕНЕНИЯ
:: \/ \/ \/
cls
echo 1.36 : добавлена дата(я знаю что очевидно, просто всё равно нужно написать), повышена безопасность.
echo 1.35 : кнопка "E" в управление паролями пропадает если нету пароля.
echo 1.34 : Теперь нельзя вводить пустое имя пользователя при изменении.
echo 1.33 : Пофиксен баг с установленой лотереей когда после удаления оно опять качаеться, грамотно выставлена инфо в ин. о системе.
echo 1.32 : Пофиксен баг с подтверждением пароля в OOBE, пофиксен баг когда перезапустил AT в помощнике настройки где было восстановление.
echo 1.31 : Добавлен генератор пароля в OOBE и стена новых функций.
echo O - выйти.
choice /c O /n
if %errorlevel% equ 1 goto сведенияос
:: /\ /\ /\
:: НЕ ЗАБЫВАЙ ДОБАВЛЯТЬ ИЗМЕНЕНИЯ
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
echo "%result%"
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
cls
echo Ответ:
echo "%result%"
echo Y - продолжить;
echo N - завершить.
choice /n
if %errorlevel% equ 1 goto быстрыйкалькулятор
if %errorlevel% equ 2 goto меню
:выборфайл
cls
echo Выбери вариант управление файлами:
echo C - создать файл;			(с папкой не работает)
echo D - удалить файл;			(с папкой не работает)
echo R - переименовать файл;
echo L - прочитать содержимое файла;		(с папкой не работает)
echo M - переместить файл;
echo O - отмена/выйти.
choice /c CDRLMO /n
if %errorlevel% equ 1 goto создатьфайл
if %errorlevel% equ 2 goto удалитьфайл
if %errorlevel% equ 3 goto переименоватьфайл
if %errorlevel% equ 4 goto смотретьсодержимое
if %errorlevel% equ 5 goto переместитьфайл
if %errorlevel% equ 6 goto меню
:смотретьсодержимое
cls
set /p filepath=Напиши путь к файлу которому хочешь прочитать содержимое(Диск:\путь)(O - выйти):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto выборфайл
if "%filepath%"=="%userprofile%\gwords" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto смотретьсодержимое
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo такого пути не существует.
	pause
	goto смотретьсодержимое
)
:2смотретьсодержимое
cls
dir /b
set /p readfile=Напиши имя файла в котором хочешь прочитать содержимое(Включая расширение)(E - отмена)(O - выйти):
if /i "%readfile%"=="e" goto менятьсодержимое
if /i "%readfile%"=="o" goto выборфайл
if not exist "%readfile%" (
	cls
	echo К сожалению, такого файла не существует.
	pause
	goto 2смотретьсодержимое
)
:3смотретьсодержимое
cls
type "%readfile%"
echo -----------------
echo Весь текст который я нашёл в файле "%readfile%"
pause
goto меню
:переименоватьфайл
cls
set /p filepath=Напиши путь к файлу который хочешь переименовать(Диск:\путь)(O - выйти):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto выборфайл
if "%filepath%"=="%ATP%" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto переименоватьфайл
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo такого пути не существует.
	pause
	goto переименоватьфайл
)
:2переименоватьфайл
cls
dir /b
set /p renfile=Напиши имя файла который хочешь переименовать(Включая расширение)(E - отмена)(O - выйти):
if /i "%renfile%"=="e" goto переименоватьфайл
if /i "%renfile%"=="o" goto выборфайл
if not exist "%renfile%" (
	cls
	echo К сожалению, такого файла не существует.
	pause
	goto 2переименоватьфайл
)
:3переименоватьфайл
cls
set /p nrenfile=Напиши новое имя файла(Включая расширение)(E - отмена)(O - выйти):
if /i "%nrenfile%"=="e" goto 2переименоватьфайл
if /i "%nrenfile%"=="o" goto выборфайл
cls
echo Ты точно хочешь переименовать файл "%renfile%" в "%nrenfile%"?
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	ren "%renfile%" "%nrenfile%"
	if exist "%nrenfile%" (
		cls
		start %filepath%
		echo файл "%renfile%" был удачно переименован в "%nrenfile%".
		pause
		goto меню
	) else (
		cls
		echo К сожалению, не удалось файл "%renfile%" переименовать в "%nrenfile%".
		pause
		goto меню
	)
)
if %errorlevel% equ 2 goto переименоватьфайл
if %errorlevel% equ 3 goto меню
:переместитьфайл
cls
set /p onepath=Напиши путь к файлу который хочешь переместить(Диск:\путь)(O - выйти):
call set onepath=%onepath%
if /i "%onepath%"=="o" goto выборфайл
if "%filepath%"=="%ATP%" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto переместитьфайл
)
cd "%onepath%"
if %errorlevel% equ 1 (
	cls
	echo такого пути не существует.
	pause
	goto переместитьфайл
)
:2переместитьфайл
cls
dir /b
set /p movfile=Напиши имя файла который хочешь переместить(Включая расширение)(E - отмена)(O - выйти):
if /i "%movfile%"=="e" goto переместитьфайл
if /i "%movfile%"=="o" goto выборфайл
if not exist "%movfile%" (
	cls
	echo Такого файла не существует.
	pause
	goto 2переместитьфайл
)
:3переместитьфайл
cls
set /p twopath=Напиши новое расположение файла(Диск:\путь)(E - отмена)(O - выйти):
call set twopath=%twopath%
if /i "%twopath%"=="e" goto 2переместитьфайл
if /i "%twopath%"=="o" goto выборфайл
if "%filepath%"=="%ATP%" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto 3переместитьфайл
)
cd "%twopath%"
if %errorlevel% equ 1 (
	cls
	echo такого пути не существует.
	pause
	goto 3переместитьфайл
)
cls
echo Ты точно хочешь переместить файл "%movfile%" из "%onepath%" в "%twopath%"?
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	move "%onepath%\%movfile%" "%twopath%"
	cd "%twopath%"
	if exist "%movfile%" (
		cls
		start %twopath%
		echo файл "%movfile%" был перемещён из "%onepath%" в "%twopath%" успешно.
		pause
		goto меню
	) else (
		cls
		echo К сожалению, не удалось переместить файл "%movfile%" из "%onepath%" в "%twopath%".
		pause
		goto меню
	)
)
if %errorlevel% equ 2 goto переместитьфайл
if %errorlevel% equ 3 goto выборфайл
:создатьфайл
cls
set /p filepath=Напиши здесь путь для файла который хочешь создать(Диск:\путь)(O - выйти):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto выборфайл
if "%filepath%"=="%ATP%" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto создатьфайл
)
cd "%filepath%"
if %errorlevel% equ 1 (
	cls
	echo Такого пути не существует, пожалуйста, введите новый.
	pause
	goto создатьфайл
)
:2создатьфайл
cls
dir /b
set /p createfile=Напиши название нового файла(Включая расширение)(E - отмена)(O - выйти):
if /i "%createfile%"=="e" goto создатьфайл
if /i "%createfile%"=="o" goto выборфайл
if exist "%createfile%" (
	cls
	echo Извини, но такой файл уже существует, пожалуйста, напиши другое имя.
	pause
	goto 2создатьфайл
)
cls
echo Точно ли так ты назовёшь свой файл?
echo "%createfile%"
echo Y - да;
echo N - нет;
echo O - отменить/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	type nul >"%createfile%"
	if exist "%createfile%" (
		cls
		start %filepath%
		echo файл "%createfile%" был успешно создан в "%filepath%"
		pause
		goto меню
	) else (
		cls
		echo К сожалению, файл "%createfile%" не удалось создать в "%filepath%"
		pause
		goto меню
	)
if %errorlevel% equ 2 goto 2создатьфайл
if %errorlevel% equ 3 goto меню
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
if %term%==cmd cls & cd "%userprofile%" & cmd & goto вопрос
if %term%==powershell cls & cd "%userprofile%" & Powershell & goto вопрос
if %term%==both cls
cls
echo Ты какую строку хочешь юзануть?
echo P - Powershell;
echo C - cmd;
echo O - отмена/выйти.
choice /c PCO /n
if %errorlevel% equ 1 cls & cd "%userprofile%" & powershell & goto вопрос
if %errorlevel% equ 2 cls
if %errorlevel% equ 3 goto меню
cd "%userprofile%"
cls
cmd
goto вопрос
:упрпаролем
cls
echo Выберите то что вам нужно:
if not "%pw%"=="null" echo E - удалить пароль;
echo C - задать/изменить пароль;
echo R - сгенерировать случайный пароль;
echo B - выйти на экран блокировки;
echo O - выйти.
choice /c ECRBO /n
if %errorlevel% equ 1 goto удалениепароля
if %errorlevel% equ 2 goto изменапароля
if %errorlevel% equ 3 goto случайныйпароль
if %errorlevel% equ 4 goto пароль
if %errorlevel% equ 5 goto настройки
:случайныйпароль
cls
echo Выберите тип пароля:
echo A - четырёх-значный;
echo B - пятизначный;
echo C - шести-значный;
echo O - отмена/выйти.
choice /c ABCO /n
if %errorlevel% equ 1 goto спч
if %errorlevel% equ 2 goto спп
if %errorlevel% equ 3 goto спш
if %errorlevel% equ 4 goto упрпаролем
:спч
cls
set /a fps=1000+%random% %% 8999 2>nul
echo Ваш пароль:%fps%
echo Вы согласны?
echo Y - да;
echo N - нет, сгенерировать ещё;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %fps%>password.txt
	set pw=%fps%
	goto настройки
) else if %errorlevel% equ 2 (
	goto спч
) else if %errorlevel% equ 3 goto упрпаролем
:спп
cls
set /a pps=10000+%random% %% 89999 2>nul
cls
echo Ваш пароль:%pps%
echo Вы согласны?
echo Y - да;
echo N - нет, сгенерировать ещё;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %pps%>password.txt
	set pw=%pps%
	goto настройки
) else if %errorlevel% equ 2 (
	goto спп
) else if %errorlevel% equ 3 goto упрпаролем
:спш
cls
set /a sps=100000+%random% %% 899999 2>nul
cls
echo Ваш пароль:%sps%
echo Вы согласны?
echo Y - да;
echo N - нет, сгенерировать ещё;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %sps%>password.txt
	set pw=%sps%
	goto настройки
) else if %errorlevel% equ 2 (
	goto спш
) else if %errorlevel% equ 3 goto упрпаролем
:настройки
cd "%ATP%"
cls
echo Пожалуйста, выберите то, что вам нужно:
echo T - управление паролем;
echo R - перезапустить строку;
echo S - закрыть строку;
echo U - изменить имя пользователя;
echo C - задать терминал по умолчанию;
echo I - информация о системе;
echo L - выполнить полный сброс данных;
echo O - выйти.
choice /c TRSUCILO /n
if %errorlevel% equ 1 goto упрпаролем
if %errorlevel% equ 2 start "" "%mypath%%admintools%" & exit
if %errorlevel% equ 3 exit
if %errorlevel% equ 4 goto изменаимяпользователя
if %errorlevel% equ 5 goto терминалпоумолчанию
if %errorlevel% equ 6 goto сведенияос
if %errorlevel% equ 7 goto вопроссброс
if %errorlevel% equ 8 goto меню
:изменаимяпользователя
set newname=
cls
set /p newname=Напиши здесь новое имя пользователя(O - выйти):
if /i "%newname%"=="myname" (
	set newname=%username%
) else if /i "%newname%"=="o" (goto настройки) else if "%newname%"=="%yourname%" (
	cls
	echo извините, но вы уже используете это имя, пожалуйста, напишите другое.
	pause
	goto изменаимяпользователя
) else if "%newname%"=="" (
	cls
	echo Имя пользователя не может быть пустым.
	pause
	goto изменаимяпользователя
)
cls
echo Точно ли это имя пользователя?
echo %newname%
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %newname%>user.txt
	set yourname=%newname%
	goto меню
)
if %errorlevel% equ 2 goto изменаимяпользователя
if %errorlevel% equ 3 goto настройки
:терминалпоумолчанию
cd "%ATP%"
cls
echo Выбери свой терминал по умолчанию:
echo C - cmd;
echo P - Powershell;
echo B - всегда спрашивать;
echo O - отмена/выйти.
choice /c CPBO /n
if %errorlevel% equ 1 set term=cmd
if %errorlevel% equ 2 set term=powershell
if %errorlevel% equ 3 set term=both
echo %term%>terminal.txt
goto меню
if %errorlevel% equ 4 goto настройки
:удалениепароля
cls
if "%pw%"=="null" goto упрпаролем
echo Ты точно хочешь удалить пароль?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 (
	echo null>password.txt
	set pw=null
	goto настройки
)
if %errorlevel% equ 2 goto настройки
:изменапароля
set npw=
cls
set /p npw=Напиши здесь новый пароль(O - выйти):
if /i "%npw%"=="o" goto настройки
if "%npw%"=="%pw%" (
	cls
	echo извините, но у вас уже есть такой пароль, пожалуйста, напишите другой.
	pause
	goto изменапароля
) else if /i "%npw%"=="null" (
	cls
	echo этот пароль нельзя использовать, пожалуйста, введите другой.
	pause
	goto изменапароля
) else if "%npw%"=="" (
	cls
	echo Вы не можете оставить поле пустым или удалите пароль.
	pause
	goto изменапароля
)
cls
echo Точно ли этот пароль?
echo "%npw%"
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	echo %npw%>"password.txt"
	set pw=%npw%
	goto настройки
)
if %errorlevel% equ 2 goto изменапароля
if %errorlevel% equ 3 goto меню
:uefi
cls
echo Ты точно хочешь перезагрузиться в UEFI BIOS?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 (
	powershell -command "start-process "%ATP%\bios.bat" -verb runas"
	exit
) else if %errorlevel% equ 2 goto способыэлектропитания
:выкл
cls
echo Ты точно хочешь выключить устройство?
echo Y - да;
echo N - нет;
echo F - выберите этот вариант если у вас
echo     включена функция быстрого запуска
echo     (На ночь рекомендуеться полностью
echo     выключать устройство)
choice /c YNF /n
if %errorlevel% equ 1 shutdown /s /t 0
if %errorlevel% equ 2 goto способыэлектропитания
if %errorlevel% equ 3 shutdown /s /hybrid /t 0
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
:способыэлектропитания
cls
echo Пожалуйста, выберите опцию которой вы будете использовать устройство:
echo T - среда восстановления;
echo S - выключить компьютер;
echo R - перезагрузить компьютер;
echo U - перезагрузиться в UEFI;
echo O - выйти.
choice /c TSRUO /n
if %errorlevel% equ 1 goto среда
if %errorlevel% equ 2 goto выкл
if %errorlevel% equ 3 goto перез
if %errorlevel% equ 4 goto uefi
if %errorlevel% equ 5 goto меню
:начпроц
cls
tasklist
set /p createproc=Напиши название процесса который хочешь начать(O - выйти):
if /i "%createproc%"=="o" goto выборпроцесс
tasklist | findstr "%createproc%.exe" >nul
if %errorlevel% equ 0 (
	cls
	echo такой процесс уже существует, пожалуйста, введите другой.
	pause
	goto начпроц
)
cls
echo Точно ли этот процесс?
echo %createproc%.exe
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 start %createproc%.exe & goto меню
if %errorlevel% equ 2 goto начпроц
if %errorlevel% equ 3 goto выборпроцесс
:завпроцесс
cls
tasklist
set /p endproc=Напиши процесс который хочешь завершить(O - выйти):
if /i %endproc%==o goto выборпроцесс
if "%endproc%"=="svchost" (
	cls
	echo Я запрещаю трогать системные процессы.
	pause
	goto выборпроцесс
) else if "%endproc%"=="winlogon" (
	cls
	echo Я запрещаю трогать системные процессы.
	pause
	goto выборпроцесс
) else if "%endproc%"=="wininit" (
	cls
	echo Я запрещаю трогать системные процессы.
	pause
	goto выборпроцесс
) else if %endproc%==explorer (
	cls
	echo Я запрещаю трогать системные процессы.
	pause
	goto выборпроцесс
)
tasklist | findstr "%endproc%.exe"
if %errorlevel% equ 1 (
	cls
	echo такого процесса не существует, пожалуйста, введите новое.
	pause
	goto завпроцесс
) else (
	cls
)
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
:удалитьфайл
cls
set /p filepath=Напиши путь к файлу который хочешь удалить(Диск:\путь)(O - выйти):
call set filepath=%filepath%
if /i "%filepath%"=="o" goto выборфайл
if "%filepath%"=="%ATP%" (
	cls
	echo я запрещаю переходить по этому катологу.
	pause
	goto удалитьфайл
)
cd "%filepath%" 
if %errorlevel% equ 1 (
	cls
	echo Такого пути не существует, пожалуйста, введите новый.
	pause
	goto удалитьфайл
)
:2удалитьфайл
cls
dir /b
set /p delfile=Напиши название файла которого хочешь удалить(Включая расширение)(E - отмена)(O - выйти):
if /i "%delfile%"=="e" goto удалитьфайл
if /i "%delfile%"=="o" goto выборфайл
if not exist "%delfile%" (
	cls
	echo Такого файла не существует, пожалуйста, введите новый.
	pause
	goto 2удалитьфайл
)
cls
echo Ты точно хочешь удалить этот файл?
echo "%delfile%"
echo Y - да;
echo N - нет;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	del "%delfile%"
	if not exist "%delfile%" (
		cls
		start %filepath%
		echo файл "%delfile%" успешно был удалён из "%filepath%"
		pause
		goto меню
	) else (
		cls
		echo к сожалению файл "%delfile%" не удалось удалить из "%filepath%"
		pause
		goto меню
	)
)
if %errorlevel% equ 2 goto 2удалитьфайл
if %errorlevel% equ 3 goto меню 
:первоначальнаянастройка
title Первоначальная настройка
cls
echo Я вижу что ты тут новенький,
echo поэтому я предлагаю сначала
echo настроить эти Инструменты под тебя.
echo Y - начать;
echo N - отменить и закрыть %admintoolsname%.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 exit
:1этап
set yourname=
title Сбор информации
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo ======
echo ----------------------------------
set /p yourname=Напиши как тебя звать:
if "%yourname%"=="" (
	cls
	echo 1 Этап	2 Этап	3 Этап	Применение
	echo ======
	echo ----------------------------------
	echo Имя пользователя не может быть пустым.
	pause
	goto 1этап
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
echo 1 Этап	2 Этап	3 Этап	Применение
echo ======
echo ----------------------------------
echo Точно ли тебя так зовут?
echo %yourname%
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 cls
if %errorlevel% equ 2 goto 1этап
:2этап
cls
echo 1 Этап 2 Этап	3 Этап	Применение
echo 	======
echo ----------------------------------
echo Выбери терминал который ты будешь использовать по умолчанию:
echo C - cmd;
echo P - Powershell;
echo B - всегда спрашивать.
choice /c CPB /n
if %errorlevel% equ 1 set term=cmd
if %errorlevel% equ 2 set term=powershell
if %errorlevel% equ 3 set term=both
:3этап
set npw=
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo 		======
echo ----------------------------------
set /p npw=Напиши здесь хорошо тебе запоминающийся пароль(R - сгенерировать случайный пароль):
if /i "%npw%"=="R" goto 3этап_случайный_пароль
cls
if "%npw%"=="" (
	set npw=null
	goto ждатьнастройки
)
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo 		======
echo ----------------------------------
set /p vhod=Теперь подверди свой пароль:
if "%vhod%"=="%npw%" (goto ждатьнастройки) else (
	cls
	echo Ты не подвердил свой пароль, придумывай заново.
	pause
	goto 3этап
)
:3этап_случайный_пароль
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo 		======
echo ----------------------------------
set /a fps=1000+%random% %% 8999 2>nul
echo Ваш пароль:%fps%
echo Вы согласны?
echo Y - да;
echo N - нет, сгенерировать ещё;
echo O - отмена/выйти.
choice /c YNO /n
if %errorlevel% equ 1 (
	set npw=%fps%
	goto ждатьнастройки
)
if %errorlevel% equ 2 goto 3этап_случайный_пароль
if %errorlevel% equ 3 goto 3этап
:ждатьнастройки
title Применение настроек
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo 			==========
echo ----------------------------------
echo Теперь осталось подождать.
timeout 2 /nobreak >nul
cls
echo 1 Этап	2 Этап	3 Этап	Применение
echo 			==========
echo ----------------------------------
echo А пока программа настраивает настройки то ты пока можешь отдохнуть...
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
echo Почти готово.
timeout 2 /nobreak >nul
goto меню
:ошибка
set /a screenofdeath=1+%random% %% 99
cls
timeout /NOBREAK 1 >nul
echo :\
timeout /NOBREAK 1 >nul
echo Похоже в строке произошла ошибка.
timeout /NOBREAK 1 >nul
echo Пока строка не раздуплиться ты никуда не уйдешь.
timeout /NOBREAK 2 >nul
for /l %%i in (0,%screenofdeath%,100) do (
	cls
	echo :\
	echo Похоже в строке произошла ошибка.
	echo Пока строка не раздуплиться ты никуда не уйдешь.
	echo %%i
	timeout %loading% /nobreak >nul
)
cd "%mypath%"
start "" "%admintools%" & exit
:помощник-настройки
cls
echo Введите расположение куда
echo сохранить папку конфигурации
set /p ATpath=для работы Инструментов Администратора:
if "%ATpath%"=="" set "ATpath=%userprofile%"
call set ATpath=%ATpath%
cls
cd "%ATpath%"
if %errorlevel% geq 1 (
	cls
	echo Такого пути не существует, пожалуйста введите ещё раз.
	pause
	goto помощник-настройки
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
:автовосстановление
title Автоматическое восстановление...
set /a countoferror=0
cd "%ATP%"
cls
if not exist "password.txt" (
	echo файл "password.txt" был удалён или поврежден, пытаемся востановить...
	echo null>"password.txt"
	if exist password.txt (
		echo файл "password.txt" удачно был восстановлен.
		set /a countoferror+=1
	) else (
		echo файл "password.txt" не удалось восстановить.
	)
) else (
	echo файл "password.txt" на месте.
	set /a countoferror+=1
)
echo [=__20__]
timeout 1 /nobreak >nul
cls
if not exist "user.txt" (
	echo файл "user.txt" был удалён или поврежден, пытаемся востановить...
	echo myname>user.txt
	if exist user.txt (
		echo файл "user.txt" удачно был восстановлен.
		set /a countoferror+=1
	) else (
		echo файл "user.txt" не удалось восстановить.
	)
) else (
	echo файл "user.txt" на месте.
	set /a countoferror+=1
)
echo [==_40__]
timeout 1 /nobreak >nul
cls
if not exist "oobe.txt" (
	echo файл "oobe.txt" был удалён или поврежден, пытаемся востановить...
	echo false>oobe.txt
	if exist "oobe.txt" (
		echo файл "oobe.txt" удачно был восстановлен.
		set /a countoferror+=1
	) else (
		echo файл "oobe.txt" не удалось восстановить.
	)
) else (
	echo файл "oobe.txt" на месте.
	set /a countoferror+=1
)
echo [===60__]
timeout 1 /nobreak >nul
cls
if not exist "terminal.txt" (
	echo файл "terminal.txt" был удалён или поврежден, пытаемся востановить...
	echo both>"terminal.txt"
	if exist "terminal.txt" (
		echo файл "terminal.txt" удачно был восстановлен.
		set /a countoferror+=1
	) else (
		echo файл "terminal.txt" не удалось восстановить.
	)
) else (
	echo файл "terminal.txt" на месте.
	set /a countoferror+=1
)
echo [===80=_]
timeout 1 /nobreak >nul
cls
if not exist "bios.bat" (
	echo файл "bios.bat" был удалён или поврежден, пытаемся востановить...
	echo shutdown /r /fw /t 0 >"bios.bat"
	if exist "bios.bat" (
		echo файл "bios.bat" удачно был восстановлен.
		set /a countoferror+=1
	) else (
		echo файл "bios.bat" не удалось восстановить.
	)
) else (
	echo файл "bios.bat" на месте.
	set /a countoferror+=1
)
echo [===100==]
timeout 2 /nobreak >nul
if "%countoferror%" equ "6" (
	echo К щастью, файлы которые были повреждены, были восстановлены, хорошего вам дня.
	pause
	cd "%mypath%"
	start "" "%admintools%" & exit
) else if "%countoferror%" equ "0" (
	echo К сожалению, ничего не удалось нам востановить, пожалуйста, попробуйте переустановить программу.
	pause
	exit
) else if "%countoferror%" lss "6" (
	echo К сожалению, не все файлы удалось восстановить, пожалуйста, попробуйте позже.
	pause
	exit
)
:вопроссброс
cls
echo Ты точно хочешь выполнить полный сброс данных в
echo %admintools%?
echo Y - да;
echo N - нет.
choice /n
if %errorlevel% equ 1 goto полныйсброс
if %errorlevel% equ 2 goto меню
:полныйсброс
title Полный сброс файлов
set /a countoferror=0
cls
echo Подготовка к сбросу...
timeout 2 /nobreak >nul
cd "%ATP%"
cls
if exist "password.txt" (
	del "password.txt"
	echo файл "password.txt" удалён успешно.
) else (
	echo файл "password.txt" не удалось удалить.
	set /a countoferror+=1
)
echo [=__15__]
timeout 1 /nobreak >nul
cls
if exist "user.txt" (
	del "user.txt"
	echo файл "user.txt" удалён успешно.
) else (
	echo файл "user.txt" не удалось удалить.
	set /a countoferror+=1
)
echo [==_40__]
timeout 1 /nobreak >nul
cls
if exist "oobe.txt" (
	del "oobe.txt"
	echo файл "oobe.txt" удалён успешно.
) else (
	echo файл "oobe.txt" не удалось удалить.
	set /a countoferror+=1
)
echo [===60__]
timeout 1 /nobreak >nul
cls
if exist "terminal.txt" (
	del "terminal.txt"
	echo файл "terminal.txt" удалён успешно.
) else (
	echo файл "terminal.txt" не удалось удалить.
	set /a countoferror+=1
)
echo [===80__]
timeout 1 /nobreak >nul
cls
if exist "bios.bat" (
	del "bios.bat"
	echo файл "bios.bat" удалён успешно.
) else (
	echo файл "bios.bat" не удалось удалить.
	set /a countoferror+=1
)
echo [===90=_]
timeout 1 /nobreak >nul
cls
cd "%ATP%"
cd ..
if exist "gwords" (
	rd /s /q "gwords" 2>nul
	echo папка "gwords" удалён успешно.
) else (
	echo папка "gwords" не удалось удалить.
	set /a countoferror+=1
)
echo [===100==]
reg delete HKCU\Environment /v ATP /f >nul
timeout 2 /nobreak >nul
:: Завершение сброса
if "%countoferror%" equ "0" (
	echo К щастью, файлы удалось удалить, если хотите, можете перезапуститься.
) else (
	echo К сожалению, не все файлы удалось удалить, если хотите, можете перезапуститься.
)
echo Y - я сделаю перезапуск;
echo N - закрыть строку.
choice /n
if %errorlevel% equ 1 (
	cd "%mypath%"
	start "" "%admintools%" & exit
)
if %errorlevel% equ 2 exit