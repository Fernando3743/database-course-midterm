CREATE TABLE Estacion (
    ID_Estacion INT PRIMARY KEY,
    Modelo VARCHAR(255),
    Fecha_Compra DATE,
    Fecha_Instalacion DATE,
    Nombre_Barrio VARCHAR(255),
    Latitud FLOAT,
    Longitud FLOAT
);

CREATE TABLE Operario (
    ID_Operario INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Contacto VARCHAR(255)
);

CREATE TABLE Contaminante (
    ID_Contaminante INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

CREATE TABLE Variable (
    ID_Variable INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

CREATE TABLE Medicion (
    ID_Medicion INT PRIMARY KEY,
    Valor FLOAT,
    Fecha DATE,
    Hora TIME,
    ID_Estacion INT,
    ID_Contaminante INT,
    ID_Variable INT,
    FOREIGN KEY (ID_Estacion) REFERENCES Estacion(ID_Estacion),
    FOREIGN KEY (ID_Contaminante) REFERENCES Contaminante(ID_Contaminante),
    FOREIGN KEY (ID_Variable) REFERENCES Variable(ID_Variable)
);

CREATE TABLE Visita (
    ID_Visita INT PRIMARY KEY,
    Fecha DATE,
    Hallazgo BOOLEAN,
    ID_Operario INT,
    ID_Estacion INT,
    FOREIGN KEY (ID_Operario) REFERENCES Operario(ID_Operario),
    FOREIGN KEY (ID_Estacion) REFERENCES Estacion(ID_Estacion)
);
