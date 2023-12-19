from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)

# PostgreSQL connection setup
POSTGRES_URL = "postgres://dqyhthiy:P8sh8cu0Hppv_k9O7bKEH1mVQ89ALB3U@isabelle.db.elephantsql.com/dqyhthiy"
conn = psycopg2.connect(POSTGRES_URL, client_encoding='utf-8')
cursor = conn.cursor()

# Route to execute create.sql and insert.sql if necessary
@app.route('/setup-database')
def setup_database():
    with open('create.sql', 'r') as create_file:
        create_sql = create_file.read()
        cursor.execute(create_sql)
    with open('insert.sql', 'r') as insert_file:
        insert_sql = insert_file.read()
        cursor.execute(insert_sql)
    conn.commit()
    return 'Database setup completed!'

# Route to display data on resultado.html
@app.route('/resultado', methods=["GET"])
def display_data():
  categoria = request.args.get('categoria')
  cursor.execute("SELECT Livros.titulo, Livros.autores, Livros.lido FROM Livros JOIN Colecao ON Livros.id = Colecao.livro_id JOIN Categorias ON Categorias.id = Colecao.categoria_id WHERE Categorias.nome = %s", (categoria,))
  livros = cursor.fetchall()
  print(f"Livros: {livros}")
  return render_template('resultado.html', livros=livros)



# Route to display index.html with categories
@app.route('/')
def index():
    # Fetch existing categories from the database
    cursor.execute("SELECT nome FROM Categorias")
    categories = [row[0] for row in cursor.fetchall()]
    return render_template('index.html', categories=categories)

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
