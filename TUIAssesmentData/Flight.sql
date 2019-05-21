CREATE TABLE [dbo].[Flight]
(
	[ID]      INT           IDENTITY (1, 1) NOT NULL,
    [FlightName]       NVARCHAR (50) NOT NULL,
    [DepartureAirport]      NVARCHAR (50) NOT NULL,
	[DepartureLatitude]      DECIMAL NOT NULL,
	[DepartureLongitude]      DECIMAL NOT NULL,
	[DepartureTime]      DATETIME NOT NULL,
    [ArrivalAirport] NVARCHAR (50) NOT NULL,
	[ArrivalLatitude] DECIMAL NOT NULL,
	[ArrivalLongitude]      DECIMAL NOT NULL,
	[ArrivalTime]      DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
)
