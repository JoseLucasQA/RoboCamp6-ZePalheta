import psycopg2

# Executa uma Query
def execute_q(query):
    
    # Cria conexão com o banco 
    conn = psycopg2.connect(
        host='zepalheta-postgres',
        database='zepalheta',
        user='postgres',
        password='qaninja'
    )

    # Cria o cursor
    cur = conn.cursor()

    # Executa a Query 
    cur.execute(query)

    # Mostra a Query nos logs
    print(query)

    # Commita a query
    conn.commit()

    # Fecha o cursor
    cur.close()

    # Fecha a conexão 
    conn.close()

#formata o cpf    
def format_cpf(cpf):
    return  cpf[:3] + "." + cpf[3:6] + "." + cpf[6:9] + "-" + cpf[9:]

# Remove o usuário do banco 
def remove_customer_by_cpf(cpf):

    formated_cpf = format_cpf(cpf)

    query = "delete from public.customers where cpf = '{}';" . format(formated_cpf)

    execute_q(query)    

# Insere um usuário no banco
def insert_customer(name,cpf,phone_number,address):

    formated_cpf = format_cpf(cpf)
 
    query = "insert into public.customers(name,cpf,phone_number,address)"\
	    "values('{}', '{}', '{}', '{}');". format(name,formated_cpf,phone_number,address)
    
    execute_q(query)