program lab5var13;
var n, m: integer; {����������� �������}
i, j, podchet: integer; {��� for}
mas: array[1..10, 1..10] of integer;
begin
podchet := 1;
write('������� �������� n: '); readln(n);
write('������� �������� m: '); readln(m);
// �������� ���������� �� ������ ��� ������� �������
if (n >= 10) or (m >= 10) then begin
    writeln('������������ ����������� �������, ������� ������ ������');
    exit;
end;
// ���������� �������
for i:= 1 to n do
    for j:=1 to m do
        mas[i, j] := random(8);
// ����� �������
writeln('�������� ������: ');
for i:=1 to n do begin
    for j:=1 to m do begin
        write(mas[i, j]:n);
    end;
    writeln;
end;
// ���� ���������
for i:=1 to n do begin
    podchet := 1;
    for j:=1 to m do begin
        podchet:= podchet * mas[i, j];
    end;
    mas[i, 1] := podchet;
end;
// ����� �������
writeln('���������� ������: ');
for i:=1 to n do begin
    for j:=1 to m do begin
        write(mas[i, j]:n);
    end;
    writeln;
end;
end.