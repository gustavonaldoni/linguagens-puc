Program ex02;
Uses crt;

var 
    m: array[1..3, 1..4] of integer;
    i, j, maior_linha, produto_elementos, numero_negativos: integer;
    media_coluna: real;

function MaiorLinha(n: integer): integer;
    var 
        maior: integer;

    begin
        maior := m[n, 0];

        begin
            for j := 1 to (4 - 1) do
                if (m[n, j] > maior) then
                    maior := m[n, j];
        end;

        MaiorLinha := maior;
    end;

function MediaColuna(n: integer): real;
    var 
        media: real;

    begin
        media := 0;

        begin
            for i := 0 to (3 - 1) do
                media := media + m[i, n];
        end;

        MediaColuna := media / 3;
    end;

function ProdutoElementos(): integer;
    var 
        produto: integer;

    begin
        produto := 1;

        begin
            for i := 0 to (3 - 1) do
            begin
                for j := 0 to (4 - 1) do
                    if (m[i, j] <> 0) then 
                        produto := produto * m[i, j];
            end;
        end;

        ProdutoElementos := produto;
    end;

begin
    {Preenchendo a matriz}
    begin
    for i := 0 to (3 - 1) do
        begin
            for j := 0 to (4 - 1) do
                m[i, j] := i * j;
        end;
    end;

    writeln('--- Matriz ---');

    {Printando a matriz}
    begin
    for i := 0 to (3 - 1) do
        begin
        for j := 0 to (4 - 1) do
            write(m[i, j], ' ');
        writeln();
        end;
    end;

    writeln();
    writeln('--- Maior elemento de cada linha ---');

    begin
        for i := 0 to (3 - 1) do
            begin
                maior_linha := MaiorLinha(i); 
                writeln('linha ', i, ' = ', maior_linha);
            end;
    end;  

    writeln();
    writeln('--- Media por coluna ---');

    begin
        for j := 0 to (4 - 1) do
            begin
                media_coluna := MediaColuna(j); 
                writeln('coluna ', j, ' = ', media_coluna);
            end;
    end;

    writeln();
    writeln('--- Produto elementos ---');  

    produto_elementos := ProdutoElementos();
    writeln(produto_elementos);

end.