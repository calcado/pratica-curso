CREATE DATABASE curso;

CREATE TABLE students(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE classes(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
   
);
CREATE TABLE modules (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);


CREATE TABLE grades(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);
CREATE TABLE classesStudents(
    id SERIAL PRIMARY KEY,
    "studentId" INTEGER NOT NULL REFERENCES "students"("id")
    classId INTEGER NOT NULL REFERENCES "classes"("id")
    "startDate" DATE NOT NULL,
    "endDate" DATE NOT NULL
);

CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    "moduleId" INTEGER NOT NULL REFERENCES "modules"("id")
);

CREATE TABLE projectsStudents(
    id SERIAL PRIMARY KEY,
    "studentId" INTEGER NOT NULL REFERENCES "students"("id"),
    "projectId" INTEGER NOT NULL REFERENCES "projects"("id"),
    "date" DATE NOT NULL DEFAULT ,
    "gradeId" INTEGER NOT NULL REFERENCES "grades"("id")
);
