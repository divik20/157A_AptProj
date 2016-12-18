Used angular.js, bootstrap for front end
Php for the backend

Php files can be found in the "config" directory
main app.js can be found in the "app" directory

Currently in the search page:
filtering by School name, rating, grade level, hasNearbyTrans is unsupported


---- Known Bugs: ----
when an apartment is clicked (the apartment information cell has to be clicked),
suites and tenant information is displayed, to remove this display, click again on the apartment cell

if you click on the apartment cell of one apartment and another apartment cell of another
apartment without closing the first suite display,
the most recently selected apartment suite information is displayed on all open suite displays
(this is because in angular, I set the clicked apartment as the selected item and
a http post request is made with apt long and lat)



===== QUERIES USED AND WHERE TO FIND THEM ====
Queries for filtering apartments can be found in Apartment.php

OtherQueries.php contains miscellaneous queries such as countNearbyStores(), countNearbyTrans() etc.

Suite.php contains queries for suite information, the queries in this class combine the Suite, AptHasSuites, Tenant,
TenantHasSuite relations

AdHoc Queries are executed through the executeQuery.php file
WARNING -- AdHoc allows any kind of query, including ones for droping the database, dropping the table etc. 

OTHER BUGS: 
---------------

When using Load DATA INFILE, we encountered an issue with AptHasTrans table's data. 

When manually entered or entered using Insert statements, the data inside the AptHasTrans.csv file passed foreign key constraints and no errors were encountered 

however, when using LOAD DATA INFILE, mysql began to complain about foreign key constrain errors. 
To bypass this error, we used SET FOREIGN_KEY_CHECKS=0 at the beginning of the loading, and reset SET FOREIGN_KEY_CHECKS=1 at the end. 