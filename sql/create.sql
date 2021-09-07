DROP TABLE Userdata;
DROP TABLE Artikel;
DROP TABLE Users;
DROP TABLE Kategorie;

CREATE TABLE Kategorie (
    KategorieID int NOT NULL,
    Beschreibung varchar(50),
    PRIMARY KEY (KategorieID)
);

CREATE TABLE Users (
    UserID int NOT NULL,
    Username varchar(200),
    Geburtsdatum date,
    Passwort varchar(255),
    ErstelltAm date,
    EMail varchar(255),
    PRIMARY KEY (UserID)
);

CREATE TABLE Artikel (
    ArtikelID int NOT NULL,
    Kategorie int NOT NULL,
    Kategoriename varchar(255),
    Beschreibung varchar(255),
    Preis float,
    EingestelltAm date,
    EingestelltBis date,
    EingestelltVon int NOT NULL,
    Bilder varchar(50),
    PRIMARY KEY (ArtikelID),
    FOREIGN KEY (Kategorie) REFERENCES Kategorie(KategorieID),
    FOREIGN KEY (EingestelltVon) REFERENCES Users(UserID)
);

CREATE TABLE Userdata (
    UserID int NOT NULL,
    Posts int,
    Points int,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

