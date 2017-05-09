/*============================================= 
Description: event types     
records type of event and the designation
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/
CREATE TABLE pantryEventTypes
(
	eventTypeID INT PRIMARY KEY NOT NULL,
	eventTypeDescription NVARCHAR(MAX) NULL,
	designation VARCHAR (50) NULL
)