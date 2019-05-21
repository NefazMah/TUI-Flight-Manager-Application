CREATE TABLE [dbo].[Airport]
(
	[ID]      INT           IDENTITY (1, 1) NOT NULL,
	[AirportName]       NVARCHAR (50) NOT NULL,
	[Latitude]			DECIMAL NOT NULL,
	[Longitude]			DECIMAL NOT NULL,
	[CityName] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY CLUSTERED ([ID] ASC)
)
