/*============================================= 
Description: householdinfo    
records income and employment of the family
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE householdInformation
(
	householdInformationID INT PRIMARY KEY NOT NULL,
	familyID INT NOT NULL,
	householdIncome INT NULL,
	isEmployed BIT DEFAULT (0) NULL
)

ALTER TABLE householdInformation
ADD CONSTRAINT FK_householdInformation_familyID
FOREIGN KEY (familyID)
REFERENCES family (familyID);