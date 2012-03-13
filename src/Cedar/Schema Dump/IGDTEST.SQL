CREATE TABLE IGD_Dummy(
 ParcelID nvarchar(26) NOT NULL,
 PropertyLocationStreet1 nvarchar(40) NULL,
 PropertyLocationStreet2 nvarchar(40) NULL,
 PropertyCity nvarchar(40) NULL,
 Latitude decimal(10, 5) NULL,
 Longitude decimal(10, 5) NULL,
 County numeric(2, 0) NULL,
 PropertyZip numeric(5, 0) NULL,
 OwnerName nvarchar(30) NULL,
 OwnerMailAdrress1 nvarchar(40) NULL,
 OwnerMailAdrress2 nvarchar(40) NULL,
 OwnerCity nvarchar(40) NULL,
 OwnerState nvarchar(30) NULL,
 OwnerZip numeric(5, 0) NULL,
 CitizensTerritory nvarchar(50) NULL,
 ConstructionType nvarchar(50) NULL,
 NumberOfStories numeric(2, 0) NULL,
 Families nchar(10) NULL,
 YearBuilt numeric(4, 0) NULL,
 YearofRoof date NULL,
 YearofRoofVerified bit NULL,
 RoofMaterial nvarchar(50) NULL,
 LivingArea numeric(12, 0) NULL,
 Occupancy nchar(10) NULL,
 MonthsUnoccupied nchar(10) NULL,
 PPC nchar(10) NULL,
 BCEG nchar(10) NULL,
 TypeOfResidence nvarchar(50) NULL,
 FloorOfResidence numeric(4, 0) NULL,
 FloridaWindpool nchar(10) NULL,
 DistancetoCoast varchar(20) NULL,
 DistancetoSinkhole nchar(10) NULL,
 DistancetoHydrant nchar(10) NULL,
 DistancetoFireDepartment nchar(10) NULL,
 FireDistrict nchar(10) NULL,
 RespondingFireDepartment nchar(10) NULL,
 CentralStationAlarm nchar(10) NULL,
 AutomaticSprinklers nchar(10) NULL,
 Claims nchar(10) NULL,
 LocationWindSpeed nchar(10) NULL,
 DesignWindSpeed nchar(10) NULL,
 InternalPressureDesign nchar(10) NULL,
 WindborneDebrisRegion nchar(10) NULL,
 Terrain nchar(10) NULL,
 RoofDeckAttachment nchar(10) NULL,
 RoofCover nchar(10) NULL,
 RooftoWallconnection nchar(10) NULL,
 SecondaryWaterResistance nchar(10) NULL,
 OpeningProtection nchar(10) NULL,
 RoofShape nvarchar(50) NULL,
 DesignExposure nchar(10) NULL,
 ValueofHome numeric(12, 0) NULL,
 UnattachedStructure nchar(10) NULL,
 NoPriorInsurance nchar(10) NULL,
 Condemned nchar(10) NULL,
 FarmsNRanches nchar(10) NULL,
 BusinessExposure nchar(10) NULL,
 FraternityorSorority nchar(10) NULL,
 Vacant varchar(100) NULL,
 FloodZone nchar(10) NULL,
 ConstructedOverWater nchar(10) NULL,
 BuiltonLandfills nchar(10) NULL,
 HomeDayCare varchar(100) NULL,
 Pool bit NULL,
 ParcelSize numeric(12, 0) NULL,
 ImprovementQuality nvarchar(50) NULL,
 ImprovementQualityDate nvarchar(4) NULL,
 NumberOfBuildings numeric(4, 0) NULL,
 NumberOfUnits numeric(4, 0) NULL,
 Crime nchar(10) NULL,
 PoliceID numeric(3, 0) NULL,
 FireID numeric(3, 0) NULL,
 Id bigint NOT NULL primary key,
 CountyName nvarchar(40) NULL,
 PropertyState nvarchar(2) NULL,
 CentroidLatitude decimal(10, 5) NULL,
 CentroidLongitude decimal(10, 5) NULL,
 PlaTerritory int NULL,
 PlaTerritoryName varchar(100) NULL,
 WindpoolTerritory int NULL,
 WindpoolTerritoryName varchar(100) NULL,
 Geometry varchar(8000) NULL);



Create PROCEDURE `usp_GetIGDbyKeyAndPaging`
 (
 IN KeyVal nvarchar(50)
 ,IN CurrentPageNo int
 ,IN PageSize int
)
BEGIN
declare pageindex int;

set pageindex=0;
set pageindex=CurrentPageNo  * PageSize;

IF KeyVal != '' then

  select * FROM IGD LIMIT pageindex,PageSize;

ELSE
  select  * FROM IGD;

END if;


END ;
