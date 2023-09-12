Program ex02;
Uses crt;

var
    n1, n2, resultado: integer;

function Divisao(n1, n2: integer): integer;
    var 
        resultado: integer;

    begin
        resultado := 0;

        begin
            if (n1 < 0) or (n2 < 0) or (n1 < n2) then
                halt(0);
        end;

        while (n1 >= n2) do
            begin
                n1 := n1 - n2;
                resultado := resultado + 1;
            end;

        Divisao := resultado;
    end;

begin

readln(n1);
readln(n2);

resultado := Divisao(n1, n2);

writeln('O resultado e: ', resultado);

end.