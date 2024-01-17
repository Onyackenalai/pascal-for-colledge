unit lab10_unit;
interface {раздел объявления}
type matrix = array[1..20, 1..20] of integer;
procedure chet(arr:matrix);
implementation {Раздел реализации}
procedure chet(arr:matrix);
var min, index_a, index_b, i, j: integer;
begin
  min := 100000000;
  for i:=Low(arr) to High(arr) do
    for j:=Low(arr) to High(arr) do begin
      if (min > arr[i, j]) then begin
        min := arr[i, j];
        index_a := i;
        index_b := j;
      end;
    end;
    writeln('Min: ', min);
    writeln('Index: ', '[', index_a, ', ', index_b, ']')
end;

begin
  writeln('Внимание, подключён собственный модуль!');
end.