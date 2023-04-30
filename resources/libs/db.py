import psycopg2

def remove_customer_by_cpf(cpf):

    formated_cpf = cpf[:3] + "." + cpf[3:6] + "." + cpf[6:9] + "-" + cpf[9:]

    query = "delete from public.customers where cpf = '{}';" . format(formated_cpf)
    
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
    print(query)

    # Commita a query
    conn.commit()

    # Fecha o cursor
    cur.close()

    # Fecha a conexão 
    conn.close()