program lab9var13;
type matrix = array[1..20, 1..20] of integer;
var i, j: integer;
matrixA: matrix;
matrixB: matrix;

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
  for i:=1 to 10 do
    for j:=1 to 15 do begin
      matrixA[i, j] := random(8);
    end;
    
   for i:=1 to 15 do
    for j:=1 to 12 do begin
      matrixB[i, j] := random(8);
    end;
    
    chet(matrixA);
    writeln('--------------------');
    chet(matrixB)
end.