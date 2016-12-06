use CS157A_AptDatabase; 

CREATE TABLE Suite(
    suiteId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    roomNumber int,
    roomSharing boolean,
    price decimal(12,2),
    specifications varchar(255),
    petsAllowed boolean,
    numberOfRooms int 
);

CREATE TABLE Apartment(
    name varchar(255),
    longitude double,
    latitude double,
    PRIMARY KEY(longitude,latitude)
);

CREATE TABLE Tenant(
    name varchar(255),
    phoneNumber varchar(12) PRIMARY KEY,
    description varchar(255)
); 

CREATE TABLE Hobbies(
    name varchar(255) PRIMARY KEY
); 

CREATE TABLE ModeOfTransportation(
    name varchar(255) PRIMARY KEY,
    streetAddress varchar(255)
); 

CREATE TABLE Bus (
    modeName varchar(255),
    route int,
 	PRIMARY KEY(modeName, route)
); 

CREATE TABLE Train(
    modeName varchar(25),
    route int,
    PRIMARY KEY (modeName, route)
); 

CREATE TABLE Stops(
    name varchar(255),
    stopTime varchar(255),
    longitude double,
    latitude double,
    PRIMARY KEY (name, stopTime,longitude,latitude)
); 

CREATE TABLE Stores(
    name varchar(255),
    description varchar(255),
    longitude double,
    latitude double, 
    PRIMARY KEY(latitude,longitude)
); 

CREATE TABLE SchoolSystems (
    name varchar(255),
    longitude double,
    latitude double, 
    rating decimal(2,2),
    PRIMARY KEY(longitude,latitude)
); 

CREATE TABLE Grade(
    gradeLevel int PRIMARY KEY
); 


CREATE TABLE AptHasTrans(
    aptLongitude double,
    aptLatitude double,
    modeName varchar(255),
    PRIMARY KEY(aptLongitude, aptLatitude, modeName),
    FOREIGN KEY(aptLongitude,aptLatitude) REFERENCES Apartment(longitude,latitude),
    FOREIGN KEY(modeName) REFERENCES ModeOfTransportation(name)
); 

CREATE TABLE AptHasSchool(
    aptLongitude double,
    aptLatitude double,
    schoolLongitude double,
    schoolLatitude double, 
    PRIMARY KEY(aptLongitude, aptLatitude, schoolLongitude, schoolLatitude),
    FOREIGN KEY(aptLongitude,aptLatitude) REFERENCES Apartment(longitude,latitude),
    FOREIGN KEY(schoolLongitude,schoolLatitude) REFERENCES SchoolSystems(longitude,latitude)
); 

CREATE TABLE AptHasSuites(
    aptLongitude double, 
    aptLatitude double, 
    suiteId int, 
    PRIMARY KEY(suiteId),
    FOREIGN KEY(aptLongitude,aptLatitude) REFERENCES Apartment(longitude,latitude),
    FOREIGN KEY (suiteId) REFERENCES Suite(suiteId)
); 


CREATE Table TenantHasSuite(
    tenPhoneNum varchar(255) PRIMARY KEY,
    suiteId int,
    FOREIGN KEY(tenPhoneNum) REFERENCES Tenant(phoneNumber),
    FOREIGN KEY(suiteId) REFERENCES Suite(suiteId)
); 

CREATE TABLE BusStops(
    modeName varchar(255),
    route int,
    stopName varchar(255),
    stopTime varchar(255),
    longitude double, 
    latitude double, 
    PRIMARY KEY(modeName, route, stopName, stopTime, longitude, latitude),
    FOREIGN KEY(modeName,route) REFERENCES Bus(modeName,route),
    FOREIGN KEY(stopName,stopTime,longitude,latitude) REFERENCES Stops(name, stopTime,longitude,latitude)
 ); 

CREATE TABLE TrainStops(
    modeName varchar(255),
    route int,
    stopName varchar(255),
    stopTime varchar(255),
    longitude double, 
    latitude double, 
    PRIMARY KEY(modeName, route, stopName, stopTime, longitude, latitude),
    FOREIGN KEY(modeName,route) REFERENCES Train(modeName,route),
    FOREIGN KEY(stopName,stopTime,longitude,latitude) REFERENCES Stops(name, stopTime,longitude,latitude)
 ); 


    


