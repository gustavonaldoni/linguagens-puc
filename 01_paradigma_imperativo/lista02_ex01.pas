{Program p1; 
Uses crt; 
var a, b, c: integer; 
    adivinha: real; 
begin 
    readln(a); 
    readln(b); 
    readln(c); 

    writeln('a = ', a);
    writeln('b = ', b);
    writeln('c = ', c);

    adivinha := ((a*5)+(b*3)+(c*2))/10; 

    writeln(adivinha); 
end.}

{Program p2; 
Uses crt; 

var a, c, n, soma, x , y : integer; 
    k, media, total: real; 
    cod, sim,teste : boolean; 
    cor : string; 
begin 
    k := 1; 
    cor := 'verde'; 
    teste := FALSE; 
    n := 5;     
    soma := 30; 
    media := soma/n; 
 
    cod := sqr(n) + 1 >= 5; {sqr = potência quadrada} 
    sim := (x=0) and (y <> 2); 
    total := sqrt(n) + sqr(x) + y; {sqrt = raiz quadrada} 
    n := x div y; 

    writeln('a = ', a);
    writeln('c = ', c);
    writeln('n = ', n);
    writeln('soma = ', soma);
    writeln('x = ', x);
    writeln('y = ', y);

    writeln('k = ', k);
    writeln('media = ', media);
    writeln('total = ', total);

    writeln('cod = ', cod);
    writeln('sim = ', sim);
    writeln('teste = ', teste);

    writeln('cor = ', cor);

end.}