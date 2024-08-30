import pandas as pd
import conexaodb as cdb

# Inserts no banco de dados
# cdb.inserir("INSERT INTO fornecedores (nome, contato) VALUES ('MedVet Mogi', 'Um endereço ai, 123')")

# Apagar dados no banco de dados
# cdb.deletar("DELETE FROM fornecedores WHERE nome = 'MedVet Mogi'")

# Alterar dados no banco de dados
cdb.alterar("UPDATE fornecedores SET nome = 'Mudei de nome' WHERE id = 1")

# Consultas no Banco de Dados
fornecedores = cdb.consultar('SELECT * FROM fornecedores')
print(fornecedores)

# Encerrar conexão com banco de dados
cdb.fechar_conexaodb()