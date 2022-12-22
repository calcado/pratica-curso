CREATE DATABASE curso;

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE classes(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    studentId INTEGER NOT NULL REFERENCES "students"("id"),
    arrival DATE NOT NULL DEFAULT NOW(),
    departure DATE NOT NULL

);

CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    studentId INTEGER NOT NULL REFERENCES "students"("id"),
    classId INTEGER NOT NULL REFERENCES "classes"("id"),
    deadline DATE NOT NULL,
    categoryId INTEGER NOT NULL REFERENCES "categories"("id")
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);