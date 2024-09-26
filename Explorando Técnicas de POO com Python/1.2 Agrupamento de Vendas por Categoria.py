class Venda:
    def __init__(self, produto, quantidade, valor):
        self.produto = produto
        self.quantidade = quantidade
        self.valor = valor

class Categoria:
    def __init__(self, nome):
        self.nome = nome
        self.vendas = []

    def adicionar_venda(self, venda):
        """Adiciona uma venda à lista de vendas da categoria."""
        self.vendas.append(venda)

    def total_vendas(self):
        """Calcula e retorna o total das vendas (soma do valor de todas as vendas) para essa categoria."""
        total = 0
        for venda in self.vendas:
            # total += venda.quantidade * venda.valor  # Multiplica quantidade pelo valor
            total += venda.valor
        return total

def main():
    categorias = []

    for i in range(2):  # Permite a entrada de duas categorias
        nome_categoria = input()
        categoria = Categoria(nome_categoria)

        for j in range(2):  # Permite a entrada de duas vendas por categoria
            entrada_venda = input()
            produto, quantidade, valor = entrada_venda.split(',')
            quantidade = int(quantidade.strip())
            valor = float(valor.strip())

            venda = Venda(produto.strip(), quantidade, valor)
            categoria.adicionar_venda(venda)  # Adiciona a venda à categoria

        categorias.append(categoria)

    # Exibindo os totais de vendas para cada categoria
    for categoria in categorias:
        print(f"Vendas em {categoria.nome}: {categoria.total_vendas():.1f}")  # Exibe o total de vendas

if __name__ == "__main__":
    main()
