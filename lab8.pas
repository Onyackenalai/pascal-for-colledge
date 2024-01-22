program lab8var7;
type a =array[1..10, 1..15] of integer;
var mas: a;
i: 1..10;
j: 1..15;
s: integer;

function podchet(m: a): integer;
var i: 1..10;
j: 1..15;
s: integer;
begin
    s:=0;
    for i:=1 to 10 do
        for j:=1 to 15 do
        if (m[i, j] >= 0) and (m[i, j] <= 1) then
           s := s + 1;
    podchet:= s;
    
end;

begin
     writeln('Èñõîäíûé ìàññèâ: ');
     randomize;
     for i:=1 to 10 do begin
         for j:=1 to 15 do begin
             mas[i, j]:= random(100);
             write(mas[i, j]:15);
         end;
         writeln;
     end;
     s:= podchet(mas);
     writeln(s);
end.