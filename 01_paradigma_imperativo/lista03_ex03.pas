Program ex02;
Uses crt;

var
    m: array[1..5, 1..5] of integer;
    percurso: array[1..7] of integer;
    i, resultado: integer;

function Dist(percurso: array of integer): integer;
    var 
        i, resultado: integer;

    begin
    resultado := 0;

        for i := 0 to 7 - 1 do
                begin
                    if (i = 7 - 1) then
                        Dist := resultado;

                    resultado := resultado + m[percurso[i], percurso[i+1]];
                    writeln('RESULTADO: ', resultado);
                end;
    end;
begin

m[1,1] := 0;
m[1,2] := 15;
m[1,3] := 30;
m[1,4] := 5;
m[1,5] := 12;

m[2,1] := 15;
m[2,2] := 0;
m[2,3] := 10;
m[2,4] := 17;
m[2,5] := 28;

m[3,1] := 30;
m[3,2] := 10;
m[3,3] := 0;
m[3,4] := 3;
m[3,5] := 11;

m[4,1] := 5;
m[4,2] := 17;
m[4,3] := 3;
m[4,4] := 0;
m[4,5] := 80;

m[5,1] := 12;
m[5,2] := 28;
m[5,3] := 11;
m[5,4] := 80;
m[5,5] := 0;

i := 1;

while (i <= 7) do
    begin
        readln(percurso[i]);
        i := i + 1;
    end;

resultado := Dist(percurso);

writeln('O resultado e: ', resultado);

end.