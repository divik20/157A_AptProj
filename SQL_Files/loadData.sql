use CS157A_AptDatabase;

SET FOREIGN_KEY_CHECKS=0;

LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Apartment.csv' INTO TABLE Apartment FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Hobbies.csv' INTO TABLE Hobbies FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Suite.csv' INTO TABLE Suite FIELDS TERMINATED BY ','(roomSharing,price,specifications,petsAllowed,numberOfRooms);
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Tenant.csv' INTO TABLE Tenant FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\ModeOfTransportation.csv' INTO TABLE ModeOfTransportation FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Bus.csv' INTO TABLE Bus FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Train.csv' INTO TABLE Train FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Stops.csv' INTO TABLE Stops FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\BusStops.csv' INTO TABLE BusStops FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\TrainStops.csv' INTO TABLE TrainStops FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\AptHasTrans.csv' INTO TABLE AptHasTrans FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Grade.csv' INTO TABLE Grade FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Stores.csv' INTO TABLE Stores FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\AptHasSuites.csv' INTO TABLE AptHasSuites FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\AptHasStore.csv' INTO TABLE AptHasStore FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\TenantHasSuite.csv' INTO TABLE TenantHasSuite FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\TenantHasHobbies.csv' INTO TABLE TenantHobbies FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\AptHasSchool.csv' INTO TABLE AptHasSchool FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\SchoolSystemHasGrades.csv' INTO TABLE SchoolSystemHasGrades FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\SchoolSystems.csv' INTO TABLE SchoolSystems FIELDS TERMINATED BY ',';

SET FOREIGN_KEY_CHECKS=1;
