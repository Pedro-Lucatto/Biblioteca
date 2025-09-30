create table autor (
  id int auto_increment not null,
  nome varchar(255) not null,
  data_nascimento date not null,
  cpf char(11) not null,
  primary key (id)
);

create table categoria (
  id int auto_increment not null,
  descricao varchar(100) not null,
  primary key (id)
);

create table livro (
  id int auto_increment not null,
  id_categoria int not null,
  titulo varchar(255) not null,
  editora varchar(150) not null,
  ano year not null,
  isbn varchar(100) not null,
  primary key (id),
  foreign key (id_categoria) references categoria(id)
);

create table aluno (
  id int auto_increment not null,
  nome varchar(150) not null,
  ra int not null,
  curso varchar(150) not null,
  primary key (id)
);

create table usuario (
  id int auto_increment not null,
  nome varchar(150) not null,
  email varchar(150) not null,
  senha varchar(100) not null,
  primary key (id)
);

create table livro_autor_assoc (
  id_livro int not null,
  id_autor int not null,
  primary key (id_livro, id_autor),
  foreign key (id_livro) references livro(id),
  foreign key (id_autor) references autor(id)
);

create table emprestimo (
  id int auto_increment not null,
  data_emprestimo date not null,
  data_devolucao date not null,
  id_usuario int not null,
  id_aluno int not null,
  id_livro int not null,
  primary key (id),
  foreign key (id_usuario) references usuario(id),
  foreign key (id_aluno) references aluno(id),
  foreign key (id_livro) references livro(id)
);
