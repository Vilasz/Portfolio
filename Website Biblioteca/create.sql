-- Criação da tabela Categorias
CREATE TABLE Categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Livros
CREATE TABLE Livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autores TEXT[],
    lido BOOLEAN
);

-- Criação da tabela Coleção (tabela intermediária)
CREATE TABLE Colecao (
    id SERIAL PRIMARY KEY,
    categoria_id INTEGER REFERENCES Categorias(id),
    livro_id INTEGER REFERENCES Livros(id)
);

