uses lab10_unit;
var i, j: integer;
matrixA: matrix;
matrixB: matrix;
begin {главная программа}
  for i:=1 to 4 do
    for j:=1 to 4 do begin
      matrixA[i, j] := random(-8, 8);
    end;
    
   for i:=1 to 17 do
    for j:=1 to 9 do begin
      matrixB[i, j] := random(-8, 8);
    end
    chet(matrixA);
    writeln('--------------------');
    chet(matrixB)
end.