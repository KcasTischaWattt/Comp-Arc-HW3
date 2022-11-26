# Comp-Arc-HW3

<br> Вариант 1.
<br> Работа выполнена Татауровым Матвеем, БПИ 217 на оценку 6.
<br> Так как в данной задаче примененялось разложение в ряд Маклорена, то краевые значения х установлены как -1 и 1.
<br> Также из-за особенностей данного разложения значения в точках, близким к краевым, ведут себя немного странно, но разобраться почему я так и не смог

## На 4 балла:
 ### 1. Приведено решение задачи на С:
   > * [main.c](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/c_files/main.c)
   > * [changestring.c](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/c_files/changesring.c)
### 2. Программа проассемблирована и откомпилирована без оптимизирующих опций, в коде программы прокомментированы переменные:
   > * [main.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly/main.s)
   > * [changestring.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly/changestring.s)
    
   ### <br> Вот файлик со всеми переменными для удобства:
   > * [Переменные](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Other_files/Variables.md)
   
### 3. Программа промодифицирована флагами компиляции, затем изменена вручную:
   > * [main_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/main_mod.s)
   > * [changestring_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/changestring_mod.s)
   ### Файл изменений:
   > * [Список изменений](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Other_files/changes1.md)
 
 ### 4. Проведено тестирование, результаты указаны в [документе](https://github.com/KcasTischaWattt/Comp-Arc-HW3/blob/main/other/tests.md).
## На 5 баллов:
 ### 1. В приведённом выше решении задачи на C используются локальные переменные, а так же 2 функции c параметрами.
   > * [main.c](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/c_files/main.c)
   > * [changestring.c](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/c_files/changesring.c)
 ### 2. В ассемблерный код были добавлены комментарии, поясняющие передачу параметров в метод, а так же связь параметров метода с регистрами.
   > * [main_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/main_mod.s)
   > * [changestring_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/changestring_mod.s)
   
## На 6 баллов:
### 1. 1.Рефакторинг программы за счет максимального использования регистров процессора:
<br> Получилось произвести лишь одну замену - r12d вместо итераторов i в обоих for

> * [main_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/main_mod.s)
   > * [changestring_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW2/blob/main/Assembly_mod/changestring_mod.s)
### 2. Проведено тестирование, результаты указаны в [документе](https://github.com/KcasTischaWattt/Comp-Arc-HW3/blob/main/other/tests.md).

### 3. Так как замеров времени данной оценкой не предусмотрено, я могу лишь сравнить размеры исполняемых файлов и количество строк.
Размер исполняемого файла:
>     Программа на С: 16,5 KiB
>     Ассемблерная программа без модификаций: 16,5 KiB
>     Финальная ассемблерная программа с модификациями: 16,3 KiB

Количество строк в файлах суммарно:
>     Программа на С: 14+19 = 33
>     Ассемблерная программа без модификаций: 98+125 = 223
>     Финальная ассемблерная программа с модификациями: 61+90 = 151
