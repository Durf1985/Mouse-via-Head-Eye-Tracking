# Mouse-via-Head-Eye-Tracking
Управление мышкой с помощью отслеживания головы и глаз.
Есть 2 режима работы:
1. С отслеживанием движений глаз и головы (Приблизительно 350-400 долларов, веб-камера + Tobii Eye Tracker 5 https://gaming.tobii.com/product/eye-tracker-5/ )
2. Отслеживание только головы ( приблизительно 25 долларов на покупку веб-камеры). Этой веб-камеры мне хватило https://www.a4tech.com/product.aspx?id=236

Кому это может пригодиться?
1. Людям, которые не могут руками набирать текст и пользоваться ПК ( нет рук, или парализованы, или ваш вариант). Основное требование, чтобы человек мог хоть чем-то нажать кнопку (хоть ногами, хоть зубами) и мог контролировать движения своей головы (человеку с Паркинсоном... увы).
2. Людям, которые набирают много текста за стационарным ПК и при этом не любят отрывать руку от клавиатуры и тянуться за мышкой, чтобы исправить опечатку в соседнем абзаце. Может на ноутбуках тачпады это норма, но для стационарных ПК их не завезли. Изначально я создавал это для себя и под свои нужды, поэтому допускаю:

-скрипт может работать не всегда

-может работать не корректно

-может зависнуть на ровном месте.

Если думать об этом, как о готовом продукте, то это лишь концепт и даже не альфа-версия. Надеюсь, когда-нибудь подобная возможность будет нативной для ОС. Меня больше удивляет, что до сих пор никто не пробовал довести даже до такого сырого состояния, про нормальные реализации я вообще молчу. Как ключи от дома на самом видном месте, которые никто не может найти.

Демонстрация работы https://youtu.be/hCLEpaX12ag

Установка:
1. Инсталлировать  eViacam. Отсюда или с сайта разработчика. https://www.fosshub.com/Enable-Viacam.html
2. Установить среду исполнения скриптов, AutoHotkey_1.1.33.10_setup. https://www.autohotkey.com
3. Добавить скрипт AutoHotkey Script.ahk в исключения антивируса и защитника Windows. 
4. Запустить eViacam и пройти калибровку чувствительности и мертвых зон
5. В приложении eViacam зайти в настройки веб-камеры !!!!и вырубить "компенсацию низкой освещенности" и Выдержку!!!!, для повышения частоты кадров (необходимо делать при каждом запуске, потому что драйвер стандартный от Windows и не запоминает последние значения). Проверить количество кадров под изображением с камеры, у меня 30 кадров/с при выдержке 5 или 6.
6.  В настройках eViacam отключить все горячие клавиши, кроме "Включить eViacam", назначить для нее клавишу F11 (может она конфликтует в каких-то приложениях, но за пол года не встретил ни одного)
7. Отключить все функции, которые находятся в настройках профиля (вкладки: Рабочая область, Клик)
7.  Запустить скрипт AutoHotkey Script.ahk  с правами администратора (можно и с обычными, но экранная клавиатура Windows 10 работать не будет, а разбираться мне откровенно лень и ума не хватит, возможны и другие конфликты, но я не тестировал)
В идеале нужна обертка, которая будет выполнять все выше перечисленное по нажатию на 1 иконку. 

Основная проблема eViacam в том, что в программе нет простого способа, выполнить следующее:
- навести курсор куда надо
- нажать левую кнопку мышки, когда надо
- выключить отслеживание, чтобы курсор прекратил скакать по экрану за любым вашим движением. 
Эти задачи решает скрипт. 


Сценарии прописанные в скрипте.

Перемещение мышки и нажатие левой кнопки мышки:
1. зажав CapsLock вы включите захват движений головы через веб-камеру, движения вашей головы будут управлять курсором. 
2. движения головы будут отслеживаться пока вы держите CapsLock нажатым.
3. отпустив CapsLock будет сделан "левый клик мышки" и прекратится отслеживание головы. 
4. быстрое двойное нажатие = двойному клику на классической мышке
При желании можно выделить еще 1 кнопку на клавиатуре и сделать просто движение мышки без нажатия кнопки, но Caps тем и славится, что чаще всего бесполезен и он один такой на клавиатуре.

Нажатие средней кнопки мышки:
1. Зажать CapsLock
2. Не отпуская CapsLock, нажать и отпустить Левый Shift
3. Пока не отпустите CapsLock можно нажимать несколько раз и перемещать мышку (например для скроллинга текста) 
4. Отжать CapsLock выключится трекинг головы и будет произведен щелчок левой кнопки мышки. 
Рекомендую попробовать вместо правой кнопки. 

Нажатие правой кнопки мышки:
Нажать на Правый Ctrl.

Данный скрипт полностью резервирует под себя CapsLock и RightCtrl. Скрипт можно подгонять под конкретные нужды и предпочтения. Но самое паршивое из того что может случиться, это если мелкомягкие (Microsoft) изменят способ работы с экранной клавиатурой. Иногда хочется им перетянуть книгой по затылку - "работает хреновина, не трогай". 

Это дешевая реализация. Ее основной недостаток, что на большой диагонали экрана, нужна большая чувствительность курсора, но при большой чувствительности курсора будет падать точность (голова ни разу не стабильный в пространстве орган и совершает кучу движений, которые вообще не замечаешь, пока не включишь отслеживание).
Для решения этой проблемы  я использую дополнительно Tobii Eye Tracker5 и его функцию "Переместить курсор мыши туда, куда вы смотрите по нажатию кнопки". У меня это кнопка RightAlt (Alt Gr). Проблема данного устройства в том, что точность отслеживания взгляда низкая и перемещает он курсор "в область куда смотришь".
Мой скрипт позволяет обходить это ограничение. Совместное использование компенсирует недостатки

В сумме выйдет приблизительно в районе 350-400 долларов за все. Можно сказать что дорого, но специализированное устройство для тех же людей с ограниченными возможностями  от Tobii стоит в районе 2000-3000 тысяч долларов и оно полностью рассчитано на управление взглядом, для полностью парализованных. Данный комплекс можно улучшить с помощью голосового управления, но это уже не ко мне вопрос.






