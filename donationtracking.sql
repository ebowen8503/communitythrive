/*============================================= 
Description: donation tracking     
records donations info pertaining to the recipient
Author: Erica Bowen     
Date: 11/30/2016
Change History:      
=============================================*/

CREATE TABLE recipientDonationTracking
(
	donationTrackingID INT PRIMARY KEY NOT NULL,
	recipientID INT NOT NULL,
	donationDate DATETIME DEFAULT GETDATE() NULL,
	eventsID INT NOT NULL,
	stockID INT NOT NULL,
)

ALTER TABLE recipientDonationTracking
ADD CONSTRAINT FK_recipientDonationTracking_recipientID
FOREIGN KEY (recipientID)
REFERENCES recipient (recipientID);

ALTER TABLE recipientDonationTracking
ADD CONSTRAINT FK_recipientDonationTracking_eventsID
FOREIGN KEY (eventsID)
REFERENCES pantryEvents (eventsID);

ALTER TABLE recipientDonationTracking
ADD CONSTRAINT FK_recipientDonationTracking_stockID
FOREIGN KEY (stockID)
REFERENCES stock (stockID);