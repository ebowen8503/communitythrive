/*============================================= 
Description: family     
records family info pertaining to the recipient
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE family
(
	familyID INT PRIMARY KEY NOT NULL,
	recipientID INT NOT NULL,
	gender INT NULL,
	age INT NULL,
	isSpouse BIT DEFAULT (0) NULL
)

ALTER TABLE family
ADD CONSTRAINT FK_family_recipientID
FOREIGN KEY (recipientID)
REFERENCES recipient (recipientID);
