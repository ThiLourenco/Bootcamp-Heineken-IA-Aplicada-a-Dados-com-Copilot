#
#

# Descrição
# Em um banco de dados relacional, diferentes tipos de dados são usados para armazenar informações específicas. Sua tarefa é implementar uma função que associe o nome de um tipo de dado SQL a sua descrição básica.

# Entrada
# A entrada será o nome de um comando SQL, como:

# "VARCHAR"
# "INT"
# "DATE"
# "FLOAT"
# Saída
# A saída esperada será a descrição correspondente ao comando SQL:

# "Usado para armazenar cadeias de caracteres"
# "Usado para armazenar números inteiros"
# "Usado para armazenar datas"
# "Usado para armazenar números decimais"

# Recebe a entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber um tipo de dado SQL e retornar sua descrição.
def descrever_tipo_sql(tipo):
    if tipo == "VARCHAR":
        return "Usado para armazenar cadeias de caracteres"

# COMPLETE AQUI: Preencha corretamente cada conceito, considerando as descrições abaixo:
    elif tipo == "INT":
        return "Usado para armazenar números inteiros"

    elif tipo == "DATE":
        return "Usado para armazenar datas"

    elif tipo == "FLOAT":
        return "Usado para armazenar números decimais"
    else:
        return "Tipo de dado SQL desconhecido"

# Imprime a descrição do tipo de dado recebido na entrada
print(descrever_tipo_sql(entrada))