Program ex02;
Uses crt;

var
    n, resultado: integer;

function Fatorial(n: integer): integer;
    begin
        if (n = 1) then
            Fatorial := 1
        else
            Fatorial := n * Fatorial(n-1);
    end;

begin

readln(n);

resultado := Fatorial(n);

writeln('O resultado e: ', resultado);

end.