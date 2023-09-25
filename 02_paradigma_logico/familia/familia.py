CAMINHO_BASE_CONHECIMENTO = 'familia_teste.pl'


class Predicado:
    def __init__(self, nome: str, argumentos: list) -> None:
        self.nome = nome
        self.argumentos = argumentos

    def formatar(self) -> str:
        argumentos = ''

        for argumento in self.argumentos:
            argumentos += f'{argumento}, '

        argumentos = argumentos[:-2]
        resultado = f'{self.nome}({argumentos}).'

        return resultado


def gerar_base_conhecimento(nome_arquivo: str, lista_predicados: list[Predicado]):
    PULA_LINHA = '\n'.encode('utf-8')

    with open(nome_arquivo, mode='wb+') as arquivo:
        for predicado in lista_predicados:
            arquivo.write(predicado.formatar().encode('utf-8'))
            arquivo.write(PULA_LINHA)

        arquivo.write(PULA_LINHA)


def gerar_regras(nome_arquivo: str, lista_regras: list[str]):
    PULA_LINHA = '\n'.encode('utf-8')

    with open(nome_arquivo, mode='ab+') as arquivo:
        for regra in lista_regras:
            arquivo.write(regra.encode('utf-8'))
            arquivo.write(PULA_LINHA)

        arquivo.write(PULA_LINHA)


def gerar_arquivo_familia(nome_arquivo: str, lista_predicados: list[Predicado], lista_regras: list[str]):
    gerar_base_conhecimento(nome_arquivo, lista_predicados)
    gerar_regras(nome_arquivo, lista_regras)


if __name__ == '__main__':
    homens = ['antonio', 'fernando',
              'carlos', 'gustavo',
              'adriano', 'marcio']

    mulheres = ['luciene', 'terezinha',
                'rosangela', 'ana',
                'leticia']

    pais = [('antonio', 'carlos'), ('antonio', 'ana'),
            ('fernando', 'rosangela'), ('carlos', 'gustavo'),
            ('carlos', 'adriano'), ('marcio', 'leticia')]

    maes = [('luciene', 'carlos'), ('luciene', 'ana'),
            ('terezinha', 'rosangela'), ('rosangela', 'gustavo'),
            ('rosangela', 'adriano'), ('ana', 'leticia')]

    lista_predicados_homens = [
        Predicado('homem', (homem, )) for homem in homens]
    lista_predicados_mulheres = [
        Predicado('mulher', (mulher, )) for mulher in mulheres]
    lista_predicados_pais = [Predicado('pai', pai) for pai in pais]
    lista_predicados_maes = [Predicado('mae', mae) for mae in maes]

    lista_predicados = []

    lista_predicados.extend(lista_predicados_homens)
    lista_predicados.extend(lista_predicados_mulheres)
    lista_predicados.extend(lista_predicados_pais)
    lista_predicados.extend(lista_predicados_maes)

    lista_regras = []

    lista_regras.append('filho(X, Y) :- (pai(Y, X); mae(Y, X)), homem(X).')
    lista_regras.append('filha(X, Y) :- (pai(Y, X); mae(Y, X)), mulher(X).')

    lista_regras.append("""irmao(X, Y) :- pai(P, X), pai(P, Y),
                           mae(M, X), mae(M, Y),
                           homem(X).""")

    lista_regras.append("""irma(X, Y) :- pai(P, X), pai(P, Y),
                           mae(M, X), mae(M, Y),
                           mulher(X).""")

    lista_regras.append(
        'avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (filho(Z, X); filha(Z, X)).')

    gerar_arquivo_familia(CAMINHO_BASE_CONHECIMENTO,
                          lista_predicados, lista_regras)
