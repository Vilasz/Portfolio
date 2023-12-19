SET client_encoding = 'UTF8';
-- Inserção de dados na tabela Categorias
INSERT INTO Categorias (nome) VALUES ('Drama');
INSERT INTO Categorias (nome) VALUES ('Romance');
INSERT INTO Categorias (nome) VALUES ('Suspense');
INSERT INTO Categorias (nome) VALUES ('Auto Ajuda');
INSERT INTO Categorias (nome) VALUES ('Academia');

-- Inserção de dados na tabela Livros
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Fault in Our Stars', ARRAY['John Green'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('Don Quixote', ARRAY['Miguel de Cervantes'], FALSE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Da Vinci Code', ARRAY['Dan Brown'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Little Prince', ARRAY['Antoine de Saint-Exupery'], FALSE);

INSERT INTO Livros (titulo, autores, lido) VALUES ('Romeo and Juliet', ARRAY['William Shakespeare'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('Pride and Prejudice', ARRAY['Jane Austen'], FALSE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('One Hundred Years of Solitude', ARRAY['Gabriel Garcia Marquez'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('1984', ARRAY['George Orwell'], FALSE);

INSERT INTO Livros (titulo, autores, lido) VALUES ('The Shining', ARRAY['Stephen King'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Lord of the Rings', ARRAY['J.R.R. Tolkien'], FALSE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('Crime and Punishment', ARRAY['Fyodor Dostoevsky'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('Animal Farm', ARRAY['George Orwell'], FALSE);

INSERT INTO Livros (titulo, autores, lido) VALUES ('Rich Dad Poor Dad', ARRAY['Robert T. Kiyosaki'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('How to Win Friends and Influence People', ARRAY['Dale Carnegie'], FALSE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Power of Habit', ARRAY['Charles Duhigg'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Monk Who Sold His Ferrari', ARRAY['Robin Sharma'], FALSE);

INSERT INTO Livros (titulo, autores, lido) VALUES ('On the Origin of Species', ARRAY['Charles Darwin'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Prince', ARRAY['Niccolo Machiavelli'], FALSE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('Moby Dick', ARRAY['Herman Melville'], TRUE);
INSERT INTO Livros (titulo, autores, lido) VALUES ('The Picture of Dorian Gray', ARRAY['Oscar Wilde'], FALSE);

-- Inserção de dados na tabela Colecao
-- Para Drama
INSERT INTO Colecao (categoria_id, livro_id) VALUES (1, 1);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (1, 2);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (1, 3);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (1, 4);

-- Para Romance
INSERT INTO Colecao (categoria_id, livro_id) VALUES (2, 5);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (2, 6);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (2, 7);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (2, 8);

-- Para Suspense
INSERT INTO Colecao (categoria_id, livro_id) VALUES (3, 9);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (3, 10);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (3, 11);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (3, 12);

-- Para Auto Ajuda
INSERT INTO Colecao (categoria_id, livro_id) VALUES (4, 13);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (4, 14);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (4, 15);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (4, 16);

-- Para Academia
INSERT INTO Colecao (categoria_id, livro_id) VALUES (5, 17);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (5, 18);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (5, 19);
INSERT INTO Colecao (categoria_id, livro_id) VALUES (5, 20);