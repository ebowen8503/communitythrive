/*============================================= 
Description: Recipient     
records recipient info and gender
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE recipient
(
	recipientID INT PRIMARY KEY NOT NULL,
	firstName NVARCHAR(50) NULL,
	lastName NVARCHAR (50) NULL,
	gender INT NOT NULL
)
