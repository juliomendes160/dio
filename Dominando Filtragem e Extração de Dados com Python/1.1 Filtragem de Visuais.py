def normalizar_nome(nome):
    """Normaliza o nome do visual para o formato 'Título Capitalizado'."""
    return ' '.join(word.capitalize() for word in nome.split())

def filtrar_visuais(lista_visuais):
    # Converter a string de entrada em uma lista
    visuais = lista_visuais.split(", ")
    
    # Normalizar os nomes e remover duplicatas usando um conjunto
    visuais_normalizados = {normalizar_nome(visual) for visual in visuais}
    
    # Converter o conjunto de volta para uma lista e ordenar
    lista_final = sorted(visuais_normalizados)
    
    # Unir a lista em uma string, separada por vírgulas
    return ", ".join(lista_final)

# Capturar a entrada do usuário
entrada_usuario = input()

# Processar a entrada e obter a saída
saida = filtrar_visuais(entrada_usuario)
print(saida)
