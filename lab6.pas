program lab6var13;
var
    chisla: set of char;
    chisla_coder: array[0..9] of char;
    chet: integer;
    stroka: string;
    i: integer;
begin
    chet := 0;
    // множество чисел
    chisla:=['0'..'9']; 
    // получение текста из командной строки
    writeln('Введите текст:');
    readln(stroka);
    // проверка текста на содержание цифр и запись их в массив
    foreach sub_str: char in stroka do begin
      if chet = 10 then
        break;
      if sub_str in chisla then begin
        chisla_coder[chet] := sub_str;
        chet += 1;
      end;
    end;
    // вывод массива с цифрами
    foreach x: char in chisla_coder do
      writeln(x);
end.