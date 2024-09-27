# Recebe a Entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber um recurso de visão e retornar sua respectiva descrição.
def identificar_recurso_visao(recurso):
    if recurso == "Esclarecer dúvidas sobre imagens":
        return "Fornecer respostas a perguntas sobre o conteúdo da imagem"
    elif recurso == "Traduzir textos em imagens":
        return "Converter texto presente em imagens para outro idioma"
    elif recurso == "Extrair dados de imagens":
        return "Obter e estruturar dados visuais de imagens"
    elif recurso == "Identificar objetos em imagens":
        return "Analisar e identificar objetos específicos em imagens"

# Exibe a descrição do recurso de visão
print(identificar_recurso_visao(entrada))
