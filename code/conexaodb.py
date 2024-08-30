import psycopg2


conexao = psycopg2.connect(host='localhost',database='db_petshop',user='postgres',password ='postgres')
cursor = conexao.cursor()


def consultar(sql):
    try:
        cursor.execute(sql)
        info = cursor.fetchall()
        return info
    except psycopg2.Error as error:
        print('Erro ao consultar dados: ', error)


def inserir(sql):
    try:
        cursor.execute(sql)
        conexao.commit()    # Confirma a inserção
        print('Dado inserido')
    except psycopg2.Error as error:
        print('Erro ao inserir dados: ', error)
    

def deletar(sql):
    try:
        cursor.execute(sql)
        conexao.commit()
        print('Dados removidos')
    except psycopg2.Error as error:
        print('Erro ao remover dados: ', error)

def alterar(sql):
    try:
        cursor.execute(sql)
        conexao.commit()
        print('Dados alterados!')
    except psycopg2.Error as error:
        print('Erro ao alterar dados: ', error)


def fechar_conexaodb():
    cursor.close()
    conexao.close()
    print('Conexão com banco de dados encerrada!')

    