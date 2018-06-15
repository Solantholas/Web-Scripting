/*	Corey Hicks
    2 December 2017
    Web Scripting
    Assignment 8.2

		This is a simple set of SQL scripts for querying a user-defined table (Wins_S001). First, I created a table using the CREATE TABLE syntax to name the table and define the
	columns with values. Second, I defined 100 rows in the table using the DEFINE and INSERT syntax. Finally, I created scripts that will query selected columns within the table 
    and display the results. Note, I am using MySQL for building the table, rows, and scripts.	*/

/*Select all years a World Series game was played*/
SELECT Year_T FROM Wins_S001 ;

/*Select all losing teams that played in a World Series game*/
SELECT LoserTeam FROM Wins_S001 ;

/*Select all winning and losing teams that played in a World Series game*/
SELECT Team, LoserTeam FROM Wins_S001 ;

/*Select all cities of a winning or losing team that played in a World Series game*/
SELECT City, LoserCity FROM Wins_S001 ;

/*Select all winning and losing teams that played in a World Series game, and provide aliases of "Winning Team" and "Losing Team"*/
SELECT Team AS "Winning Team", LoserTeam AS "Losing Team" FROM Wins_S001 ;

/*Select all cities of a winning or losing team that played in a World Series game and provide aliases of "Winning City" and "Losing City"*/
SELECT City AS "Winning City", LoserCity AS "Losing City" FROM Wins_S001 ;

/*Select all winning teams that played in a World Series game and provide an alias of "Winning Team"; list each only once */
SELECT DISTINCT Team AS "Winning Team" FROM Wins_S001 ;

/*Select all losing teams that played in a World Series game; provide an alias of "Losing Team"; list each only once*/
SELECT DISTINCT LoserTeam AS "Losing Team" FROM Wins_S001 ;

/*Select all winning teams that played in a World Series; list each team and city combination once*/
SELECT DISTINCT Team, City FROM Wins_S001 ;

/*Select all losing teams that played in a World Series game; list each team and city combination once*/
SELECT DISTINCT LoserTeam, LoserCity FROM Wins_S001 ;