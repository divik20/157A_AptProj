use CS157A_AptDatabase;

SET FOREIGN_KEY_CHECKS=0;

LOAD DATA INFILE 'C:\\xampp\\htdocs\\BlueSwift\\SQL_Files\\SchoolSystems.csv' INTO TABLE SchoolSystems FIELDS TERMINATED BY ',';

SET FOREIGN_KEY_CHECKS=1;
