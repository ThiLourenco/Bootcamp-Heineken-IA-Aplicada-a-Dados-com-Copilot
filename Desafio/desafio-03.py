# Associando Conceitos de Comandos SQL com Lógica de Programação
# Associando Cláusulas SQL a Suas Funções


# Descrição
# Em um banco de dados relacional, diferentes tipos de dados são usados para armazenar informações específicas. Sua tarefa é implementar uma função que associe o nome de um tipo de dado SQL a sua descrição básica.

# Entrada
# A entrada será o nome de um comando SQL, como:

# "WHERE"
# "GROUP BY"
# "ORDER BY"
# "HAVING"

# Saída
# A saída esperada será a descrição correspondente ao comando SQL:

# "Usado para filtrar registros com base em uma condição"
# "Usado para agrupar registros por colunas específicas"
# "Usado para ordenar os registros de uma consulta"
# "Usado para filtrar grupos com base em uma condição"

# Recebe a entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber uma cláusula SQL e retornar sua descrição.
def descrever_clausula_sql(clausula):
    if clausula == "WHERE":
        return "Usado para filtrar registros com base em uma condição"

# COMPLETE AQUI: Preencha corretamente cada conceito, considerando as descrições abaixo:
    elif clausula == "GROUP BY":
        return "Usado para agrupar registros por colunas específicas"

    elif clausula == "ORDER BY":
        return "Usado para ordenar os registros de uma consulta"

    elif clausula == "HAVING":
        return "Usado para filtrar grupos com base em uma condição"
    else:
        return "Cláusula SQL desconhecida"

# Imprime a descrição da cláusula recebida na entrada
print(descrever_clausula_sql(entrada))