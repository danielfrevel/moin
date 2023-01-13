CREATE TABLE Flugzeug (
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Flugstunden INT
);

INSERT INTO Flugzeug (Name, Flugstunden) VALUES ('Flugmann', 100000);
INSERT INTO Flugzeug (Name, Flugstunden) VALUES ('Ligma', 0);
INSERT INTO Flugzeug (Name, Flugstunden) VALUES ('Nuckelan', 10);

GO;

CREATE TABLE Mechaniker(
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Name VARCHAR(255) NOt NULL
)

INSERT INTO Mechaniker VALUES ('Meyer')
INSERT INTO Mechaniker VALUES ('Schmitt')
INSERT INTO Mechaniker VALUES ('Darth Vader')
INSERT INTO Mechaniker VALUES ('Leon')

CREATE TABLE WartungsTyp (
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Label VARCHAR(255) NOT NULL 
)

INSERT INTO WartungsTyp VALUES ('A-Check')
INSERT INTO WartungsTyp VALUES ('B-Check')
INSERT INTO WartungsTyp VALUES ('C-Check')


CREATE TABLE Wartung(
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Type INT ,
    FlugzeugId INT FOREIGN KEY REFERENCES Flugzeug(Id),
    MechanikerId INT FOREIGN KEY REFERENCES Mechaniker(id),
    Date DATETIME, 
    WartungsTypId INT FOREIGN KEY REFERENCES WartungsTyp(Id)
)

CREATE TABLE Komponente(
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Label VARCHAR(255) NOT NULL , 
);

GO
CREATE TABLE Leistung(
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Label VARCHAR(255) NOT NULL ,
    Kosten DECIMAL NOT NULL,
    WartungId INT NOT NULL FOREIGN KEY REFERENCES Wartung(Id), 
    KomponenteId INT NOT NULL FOREIGN KEY REFERENCES Komponente(Id)
)


INSERT INTO Komponente VALUES ('Triebwerk')
INSERT INTO Komponente VALUES ('Leitwerk')
INSERT INTO Komponente VALUES ('Fahrwerk')
INSERT INTO Komponente VALUES ('ServusErdnuss')
INSERT INTO Komponente VALUES ('Flüchel')
INSERT INTO Komponente VALUES ('Cock-pit')
INSERT INTO Komponente VALUES ('Küsche')
INSERT INTO Komponente VALUES ('Klo')
INSERT INTO Komponente VALUES ('Klo2')
INSERT INTO Komponente VALUES ('Fluxkondensator')
INSERT INTO Komponente VALUES ('Radiokompass')
INSERT INTO Komponente VALUES ('Brämsn')
INSERT INTO Komponente VALUES ('Störrglappen')
INSERT INTO Komponente VALUES ('Rückwärtsgang')

GO;

CREATE OR ALTER TABLE WartungsTypKomponente(  
    WartungsTypId INT FOREIGN KEY REFERENCES WartungsTyp(Id),
    KomponenteId INT FOREIGN KEY REFERENCES Komponente(Id)
)
GO;


 
INSERT INTO WartungsTypKomponente VALUES (2, 7)
INSERT INTO WartungsTypKomponente VALUES (2, 8)
 
INSERT INTO WartungsTypKomponente VALUES (1,1)
INSERT INTO WartungsTypKomponente VALUES (1,2)
INSERT INTO WartungsTypKomponente VALUES (1,3)
 
INSERT INTO WartungsTypKomponente VALUES (1,4)
INSERT INTO WartungsTypKomponente VALUES (1,5)
INSERT INTO WartungsTypKomponente VALUES (1,6)
 
INSERT INTO WartungsTypKomponente VALUES (1,7)
INSERT INTO WartungsTypKomponente VALUES (1,8)
INSERT INTO WartungsTypKomponente VALUES (1,9)
 
INSERT INTO WartungsTypKomponente VALUES (1,10)
INSERT INTO WartungsTypKomponente VALUES (1,11)
INSERT INTO WartungsTypKomponente VALUES (1,12)
 
INSERT INTO WartungsTypKomponente VALUES (1,13)

CREATE TABLE Wartung(
    Id INT PRIMARY KEY  NOT NULL IDENTITY(1,1),
    Type INT ,
    FlugzeugId INT FOREIGN KEY REFERENCES Flugzeug(Id),
    MechanikerId INT FOREIGN KEY REFERENCES Mechaniker(id),
    Date DATETIME, 
    WartungsTypId INT FOREIGN KEY REFERENCES WartungsTyp(Id)
)

GO;


CREATE TRIGGER WartungA
ON Flugzeug 
AFTER UPDATE
AS 
IF UPDATE (Flugstunden)
BEGIN
    DECLARE @neededWartung int = inserted.Flugstunden % 25000;
    DECLARE @currentWartung int = SELECT COUNT(*) FROM Wartung WHERE FlugzeugId = insert.Id;

    if(@currentWartung != @neededWartung);





        SET NOCOUNT ON;

    DECLARE @counter INT = 1;



    WHILE (@counter <= @numEntries)
    BEGIN
        INSERT INTO YourTable (column1, column2, column3) VALUES (value1, value2, value3);
        SET @counter = @counter + 1;
    END

        IF (UPDATE(field) AND EXISTS (SELECT field FROM inserted WHERE field = someValue))
    BEGIN
        -- Get the number of entries to create
        SELECT @numEntries = numEntries FROM inserted;

        WHILE (@counter <= @numEntries)
        BEGIN
            INSERT INTO YourTable (column1, column2, column3) VALUES (value1, value2, value3);
            SET @counter = @counter + 1;
        END
    END




END
