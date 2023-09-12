Program ex02;
Uses crt;

var
    base, expoente, resultado: integer;

function Exponenciacao(base, expoente: integer): integer;
    var 
        i, resultado: integer;

    begin
        resultado := 1;

        begin
            if (expoente = 0) then
                Exponenciacao := resultado;
        end;

        begin
            for i := 0 to (expoente - 1) do
                resultado := resultado * base;
        end;

        Exponenciacao := resultado;
    end;

begin

readln(base);
readln(expoente);

resultado := Exponenciacao(base, expoente);

writeln('O resultado e: ', resultado);

end.