import pandas as pd
import conexaodb as cdb

# Inserts no banco de dados
# cdb.inserir("INSERT INTO fornecedores (nome, contato) VALUES ('MedVet', 'Um endereço ai, 123')")

# Apagar dados no banco de dados
# cdb.deletar("DELETE FROM fornecedores WHERE nome = 'MedVet'")

# Alterar dados no banco de dados
# cdb.alterar("UPDATE fornecedores SET nome = 'Mudei de nome' WHERE id = 1")

# Consultas no Banco de Dados
info = cdb.consultar('SELECT * FROM produtos')
# print(fornecedores)

for chave, nome, categoria, valor_custo, valor_venda in info:
    print(chave, nome, categoria, valor_custo, valor_venda)
    print()

# Encerrar conexão com banco de dados
cdb.fechar_conexaodb()