/*============================================= 
Description: Recipient Address     
records recipient address
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE recipientAddress
(
	recipientAddressID INT PRIMARY KEY NOT NULL,
	recipientID INT NOT NULL,
	streetName NVARCHAR(100) NULL,
	cityName NVARCHAR (50) NULL,
	stateName NVARCHAR (50) NULL,
	zipcode INT NULL
)

ALTER TABLE recipientAddress
ADD CONSTRAINT FK_recipientAddress_recipientID
FOREIGN KEY (recipientID)
REFERENCES recipient (recipientID);
