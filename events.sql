/*============================================= 
Description: Pantry Events     
records date and time of event and the type
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE pantryEvents
(
	eventsID INT PRIMARY KEY NOT NULL,
	eventTypeID INT NOT NULL,
	eventDescription VARCHAR(MAX) NULL,
	eventDateTime DATETIME DEFAULT GETDATE() NULL,
)

ALTER TABLE pantryEvents
ADD CONSTRAINT FK_pantryEvents_eventTypeID
FOREIGN KEY (eventTypeID)
REFERENCES pantryEventTypes (eventTypeID);
