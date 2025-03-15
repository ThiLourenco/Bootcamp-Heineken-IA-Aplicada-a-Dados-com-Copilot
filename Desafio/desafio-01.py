# Associando Conceitos de Comandos SQL com Lógica de Programação
# 1 / 3 - Identificando Comandos Básicos de SQL

# Descrição
# Você foi contratado para treinar um sistema de suporte técnico que precisa reconhecer os comandos SQL mais básicos e associá-los às suas funções principais. Sua tarefa é criar uma função que receba o nome de um comando SQL e retorne uma breve descrição de sua função.

# Entrada
# A entrada será o nome de um comando SQL, como:

# "SELECT"
# "INSERT"
# "UPDATE"
# "DELETE"
# Saída
# A saída esperada será a descrição correspondente ao comando SQL:

# "Usado para consultar dados em uma tabela"
# "Usado para inserir novos dados em uma tabela"
# "Usado para atualizar registros existentes em uma tabela"
# "Usado para deletar registros de uma tabela"

# Recebe a entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber um comando SQL e retornar sua descrição.
def descrever_comando_sql(comando):
    if comando == "SELECT":
        return "Usado para consultar dados em uma tabela"

# COMPLETE AQUI: Preencha corretamente cada conceito, considerando as descrições abaixo:
    elif comando == "INSERT":
        return "Usado para inserir novos dados em uma tabela"

    elif comando == "UPDATE":
        return "Usado para atualizar registros existentes em uma tabela"

    elif comando == "DELETE":
        return "Usado para deletar registros de uma tabela"

    else:
        return "Comando SQL desconhecido"

# Imprime a descrição do comando recebido na entrada
print(descrever_comando_sql(entrada))