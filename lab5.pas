program lab5var13;
var n, m: integer; {Размерность массива}
i, j, podchet: integer; {для for}
mas: array[1..10, 1..10] of integer;
begin
podchet := 1;
write('Введите значение n: '); readln(n);
write('Введите значение m: '); readln(m);
// Проверка нормальные ли данные для размера массива
if (n >= 10) or (m >= 10) then begin
    writeln('Неправильная размерность массива, введите данные заново');
    exit;
end;
// заполнения массива
for i:= 1 to n do
    for j:=1 to m do
        mas[i, j] := random(8);
// вывод массива
writeln('Исходный массив: ');
for i:=1 to n do begin
    for j:=1 to m do begin
        write(mas[i, j]:n);
    end;
    writeln;
end;
// сама программа
for i:=1 to n do begin
    podchet := 1;
    for j:=1 to m do begin
        podchet:= podchet * mas[i, j];
    end;
    mas[i, 1] := podchet;
end;
// вывод массива
writeln('Полученный массив: ');
for i:=1 to n do begin
    for j:=1 to m do begin
        write(mas[i, j]:n);
    end;
    writeln;
end;
end.