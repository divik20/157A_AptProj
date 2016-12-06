use CS157A_AptDatabase;

LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Apartment.csv' INTO TABLE Apartment FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Hobbies.csv' INTO TABLE Hobbies FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Suite.csv' INTO TABLE Suite FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\AptHasSuites.csv' INTO TABLE AptHasSuites FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\Tenant.csv' INTO TABLE Tenant FIELDS TERMINATED BY ',';
LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\TenantHasSuite.csv' INTO TABLE TenantHasSuite FIELDS TERMINATED BY ',';
