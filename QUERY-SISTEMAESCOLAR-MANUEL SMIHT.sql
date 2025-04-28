CREATE TABLE Estudiantes (
    ID_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Edad INT
);

CREATE TABLE Direcciones (
    ID_Direccion INT AUTO_INCREMENT PRIMARY KEY,
    Calle VARCHAR(100),
    Ciudad VARCHAR(50),
    ID_Estudiante INT,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante)
);

CREATE TABLE Cursos (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    NombreCurso VARCHAR(50)
);

CREATE TABLE Profesores (
    ID_Profesor INT AUTO_INCREMENT PRIMARY KEY,
    NombreProfesor VARCHAR(100),
    DepartamentoID INT
);

CREATE TABLE Departamento (
    ID_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    NombreDepartamento VARCHAR(100)
);

CREATE TABLE Matriculas (
    ID_Matricula INT AUTO_INCREMENT PRIMARY KEY,
    ID_Estudiante INT,
    ID_Curso INT,
    Fecha DATE,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);
