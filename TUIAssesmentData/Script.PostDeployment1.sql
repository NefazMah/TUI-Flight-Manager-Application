/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Flight AS Target 
USING (VALUES 
        (1, 'MS810', 'Paris',48.8534,2.3488,'2019-05-19 15:15:00','New York',-73.968565,40.779897,'2019-05-19 23:55:00')
) 
AS Source (ID,
    FlightName,
    DepartureAirport ,
	DepartureLatitude,
	DepartureLongitude,
	DepartureTime,
    ArrivalAirport,
	ArrivalLatitude,
	ArrivalLongitude,
	ArrivalTime) 
ON Target.ID = Source.ID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (FlightName,
    DepartureAirport ,
	DepartureLatitude,
	DepartureLongitude,
	DepartureTime,
    ArrivalAirport,
	ArrivalLatitude,
	ArrivalLongitude,
	ArrivalTime) 
VALUES (FlightName,
    DepartureAirport ,
	DepartureLatitude,
	DepartureLongitude,
	DepartureTime,
    ArrivalAirport,
	ArrivalLatitude,
	ArrivalLongitude,
	ArrivalTime);
	
MERGE INTO Airport AS Target
USING(VALUES
		(1,'Paris',48.8534,2.3488),
		(2,'New York',-73.968565,40.779897))
AS Source(ID,
    AirportName,
    Latitude,
	Longitude)
ON Target.ID = Source.ID
WHEN NOT MATCHED BY TARGET THEN 
INSERT (AirportName,
    Latitude,
	Longitude) 
VALUES (AirportName,
    Latitude,
	Longitude);