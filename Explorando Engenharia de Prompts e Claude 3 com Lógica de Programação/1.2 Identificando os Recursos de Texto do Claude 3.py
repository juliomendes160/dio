# Recebe a Entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber um recurso de texto e retornar sua respectiva descrição.
def identificar_recurso_texto(recurso):
    if recurso == "Geração de conteúdo":
        return "Desenvolver conteúdo com base em instruções ou diretrizes"
    elif recurso == "Redação e revisão":
        return "Auxiliar na criação de textos e revisão de materiais escritos"
    elif recurso == "Sumarização":
        return "Sintetizar artigos extensos ou documentos em resumos breves"
    elif recurso == "Análise e interpretação de texto":
        return "Oferecer percepções e esclarecer conceitos complexos"

# Exibe a descrição do recurso de texto
print(identificar_recurso_texto(entrada))
