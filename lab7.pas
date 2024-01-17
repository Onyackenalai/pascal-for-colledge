program lab7var13;
type group = record
  number_of_train, sity: string;
  out, time, bilets: integer;
end;
var
  f1: text;
  p: group;
  time_a, time_b: integer;
  town, train: string;
  menu: 1..4;
begin
  assign(f1, 'train.txt');
  menu := 1;
  // пока не выбрана цифра 4 в пункте меню
  while menu <> 4 do begin
    writeln('l. Ввод данных');
    writeln('2. Билеты по времени');
    writeln('3. Билеты по номеру поезда');
    writeln('4. Выход');
    write('Введите номер: ');
    readln(menu);
    case menu of
      1: begin
        {Если файл есть}
        if FileExists('train.txt') then
          append(f1) {открываем файл для добавления данных}
        else rewrite(f1); {если файла нет,то создаём новый}
        with p do begin
          write('Номер поезда       : '); readln(number_of_train);
          write('Станция назначения : '); readln(sity);
          write('Время отправления  : '); readln(out);
          write('Время в пути       : '); readln(time);
          write('Наличие билетов    : '); readln(bilets);
          writeln(f1, number_of_train);
          writeln(f1, sity);
          writeln(f1, out);
          writeln(f1, time);
          writeln(f1, bilets);
        end;
        close(f1);
        readln;
      end;
      2: begin
        {Считываем данные}
        write('Город    : '); readln(town);
        write('Время от : '); readln(time_a);
        write('Время до : '); readln(time_b);
        reset(f1);
        while not eof(f1) do
          with p do begin
            readln(f1);
            readln(f1, sity);
            readln(f1, out);
            readln(f1, time);
            readln(f1, bilets);
            if (sity = town) and ((out  >= time_a) and (out <= time_b)) then begin
              writeln('--------------------------');
              writeln('Время отправления : ', out);
              writeln('Время в пути      : ', time);
              writeln('Кол-во билетов    : ', bilets);
            end;
          end;
          close(f1);
          readln;
          end;
          3: begin
            {Считываем данные}
            write('Номер поезда: '); readln(train);
            reset(f1);
            while not eof(f1) do
              with p do begin
                readln(f1, number_of_train);
                readln(f1, sity);
                readln(f1, out);
                readln(f1, time);
                readln(f1, bilets);
                if (train = number_of_train) then begin
                  writeln('--------------------------');
                  writeln('Город             :', sity);
                  writeln('Время отправления : ', out);
                  writeln('Время в пути      : ', time);
                  writeln('Кол-во билетов    : ', bilets);
                end;
              end;
              close(f1);
              readln;
          end;
      end;
    end;
end.