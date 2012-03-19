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

CREATE TABLE IGD(
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
	Geometry varchar(8000) NULL
) ;

CREATE PROCEDURE `insert_county`
(
	IN ter_id varchar(10),
	IN ter_country varchar(100),
	IN x_county varchar(50),
	IN y_county varchar(50)
)
begin

	insert into pinellas_county(ter_id,ter_country,x_county,y_county) values(ter_id,ter_country,x_county,y_county);

END;

CREATE  PROCEDURE `usp_GetIGD`(IN Id BIGINT)
BEGIN
	 SELECT * FROM IGD  WHERE Id = Id;
END ;
CREATE  PROCEDURE `usp_GetIGDByParcelId`(IN ParcelID NVARCHAR(26))
BEGIN
    SELECT 	*  FROM IGD  WHERE ParcelID = ParcelID;
END;

CREATE PROCEDURE `usp_UpdateIGD`(
  IN Id bigint,
	IN ParcelID nvarchar(26) ,
	IN PropertyLocationStreet1 nvarchar(40) ,
	IN PropertyLocationStreet2 nvarchar(40) ,
	IN PropertyCity nvarchar(40) ,
	IN Latitude decimal(10, 5) ,
	IN Longitude decimal(10, 5) ,
	IN County numeric(2, 0) ,
	IN PropertyZip numeric(5, 0) ,
	IN OwnerName nvarchar(30) ,
	IN OwnerMailAdrress1 nvarchar(40) ,
	IN OwnerMailAdrress2 nvarchar(40) ,
	IN OwnerCity nvarchar(40) ,
	IN OwnerState nvarchar(30) ,
	IN OwnerZip numeric(5, 0) ,
	IN CitizensTerritory nvarchar(50) ,
	IN ConstructionType nvarchar(50) ,
	IN NumberOfStories numeric(2, 0) ,
	IN Families nchar(10) ,
	IN YearBuilt numeric(4, 0) ,
	IN YearofRoof date ,
	IN YearofRoofVerified bit ,
	IN RoofMaterial nvarchar(50) ,
	IN LivingArea numeric(12, 0) ,
	IN Occupancy nchar(10) ,
	IN MonthsUnoccupied nchar(10) ,
	IN PPC nchar(10) ,
	IN BCEG nchar(10) ,
	IN TypeOfResidence nvarchar(50) ,
	IN FloorOfResidence numeric(4, 0) ,
	IN FloridaWindpool nchar(10) ,
	IN DistancetoCoast decimal(10,10) ,
	IN DistancetoSinkhole nchar(10) ,
	IN DistancetoHydrant nchar(10) ,
	IN DistancetoFireDepartment nchar(10) ,
	IN FireDistrict nchar(10) ,
	IN RespondingFireDepartment nchar(10) ,
	IN CentralStationAlarm nchar(10) ,
	IN AutomaticSprinklers nchar(10) ,
	IN Claims nchar(10) ,
	IN LocationWindSpeed nchar(10) ,
	IN DesignWindSpeed nchar(10) ,
	IN InternalPressureDesign nchar(10) ,
	IN WindborneDebrisRegion nchar(10) ,
	IN Terrain nchar(10) ,
	IN RoofDeckAttachment nchar(10) ,
	IN RoofCover nchar(10) ,
	IN RooftoWallconnection nchar(10) ,
	IN SecondaryWaterResistance nchar(10) ,
	IN OpeningProtection nchar(10) ,
	IN RoofShape nvarchar(50) ,
	IN DesignExposure nchar(10) ,
	IN ValueofHome numeric(12, 0) ,
	IN UnattachedStructure nchar(10) ,
	IN NoPriorInsurance nchar(10) ,
	IN Condemned nchar(10) ,
	IN FarmsNRanches nchar(10) ,
	IN BusinessExposure nchar(10) ,
	IN FraternityorSorority nchar(10) ,
	IN Vacant nchar(10) ,
	IN FloodZone nchar(10) ,
	IN ConstructedOverWater nchar(10) ,
	IN BuiltonLandfills nchar(10) ,
	IN HomeDayCare nchar(10) ,
	IN Pool bit ,
	IN ParcelSize numeric(12, 0) ,
	IN ImprovementQuality nvarchar(50) ,
	IN ImprovementQualityDate nvarchar(4) ,
	IN NumberOfBuildings numeric(4, 0) ,
	IN NumberOfUnits numeric(4, 0) ,
	IN Crime nchar(10) ,
	IN PoliceID numeric(3, 0) ,
	IN FireID numeric(3, 0) ,
	IN CountyName nvarchar(40) ,
	IN PropertyState nvarchar(2) ,
	IN CentroidLatitude decimal(10, 5) ,
	IN CentroidLongitude decimal(10, 5) ,
	IN PlaTerritory int ,
	IN PlaTerritoryName varchar(100) ,
	IN WindpoolTerritory int ,
	IN WindpoolTerritoryName varchar(100) ,
	IN Geometry Varchar(8000) 
)
BEGIN
	
   	UPDATE IGD
	   SET 
			
			IGD.PropertyLocationStreet1  = COALESCE(PropertyLocationStreet1,IGD.PropertyLocationStreet1)
			,IGD.PropertyLocationStreet2  = COALESCE(PropertyLocationStreet2,IGD.PropertyLocationStreet2)
			,IGD.PropertyCity  = COALESCE(PropertyCity,IGD.PropertyCity)
			,IGD.Latitude  = COALESCE(Latitude,IGD.Latitude)
			,IGD.Longitude  = COALESCE(Longitude,IGD.Longitude)
			,IGD.County  = COALESCE(County,IGD.County)
			,IGD.PropertyZip  = COALESCE(PropertyZip,IGD.PropertyZip)
			,IGD.OwnerName  = COALESCE(OwnerName,IGD.OwnerName)
			,IGD.OwnerMailAdrress1  = COALESCE(OwnerMailAdrress1,IGD.OwnerMailAdrress1)
			,IGD.OwnerMailAdrress2  = COALESCE(OwnerMailAdrress2,IGD.OwnerMailAdrress2)
			,IGD.OwnerCity  = COALESCE(OwnerCity,IGD.OwnerCity)
			,IGD.OwnerState  = COALESCE(OwnerState,IGD.OwnerState)
			,IGD.OwnerZip  = COALESCE(OwnerZip,IGD.OwnerZip)
			,IGD.CitizensTerritory  = COALESCE(CitizensTerritory,IGD.CitizensTerritory)
			,IGD.ConstructionType  = COALESCE(ConstructionType,IGD.ConstructionType)
			,IGD.NumberOfStories  = COALESCE(NumberOfStories,IGD.NumberOfStories)
			,IGD.Families  = COALESCE(Families,IGD.Families)
			,IGD.YearBuilt  = COALESCE(YearBuilt,IGD.YearBuilt)
			,IGD.YearofRoof  = COALESCE(YearofRoof,IGD.YearofRoof)
			,IGD.YearofRoofVerified  = COALESCE(YearofRoofVerified,IGD.YearofRoofVerified)
			,IGD.RoofMaterial  = COALESCE(RoofMaterial,IGD.RoofMaterial)
			,IGD.LivingArea  = COALESCE(LivingArea,IGD.LivingArea)
			,IGD.Occupancy  = COALESCE(Occupancy,IGD.Occupancy)
			,IGD.MonthsUnoccupied  = COALESCE(MonthsUnoccupied,IGD.MonthsUnoccupied)
			,IGD.PPC  = COALESCE(PPC,IGD.PPC)
			,IGD.BCEG  = COALESCE(BCEG,IGD.BCEG)
			,IGD.TypeOfResidence  = COALESCE(TypeOfResidence,IGD.TypeOfResidence)
			,IGD.FloorOfResidence  = COALESCE(FloorOfResidence,IGD.FloorOfResidence)
			,IGD.FloridaWindpool  = COALESCE(FloridaWindpool,IGD.FloridaWindpool)
			,IGD.DistancetoCoast  = COALESCE(DistancetoCoast,IGD.DistancetoCoast)
			,IGD.DistancetoSinkhole  = COALESCE(DistancetoSinkhole,IGD.DistancetoSinkhole)
			,IGD.DistancetoHydrant  = COALESCE(DistancetoHydrant,IGD.DistancetoHydrant)
			,IGD.DistancetoFireDepartment  = COALESCE(DistancetoFireDepartment,IGD.DistancetoFireDepartment)
			,IGD.FireDistrict  = COALESCE(FireDistrict,IGD.FireDistrict)
			,IGD.RespondingFireDepartment  = COALESCE(RespondingFireDepartment,IGD.RespondingFireDepartment)
			,IGD.CentralStationAlarm  = COALESCE(CentralStationAlarm,IGD.CentralStationAlarm)
			,IGD.AutomaticSprinklers  = COALESCE(AutomaticSprinklers,IGD.AutomaticSprinklers)
			,IGD.Claims  = COALESCE(Claims,IGD.Claims)
			,IGD.LocationWindSpeed  = COALESCE(LocationWindSpeed,IGD.LocationWindSpeed)
			,IGD.DesignWindSpeed  = COALESCE(DesignWindSpeed,IGD.DesignWindSpeed)
			,IGD.InternalPressureDesign  = COALESCE(InternalPressureDesign,IGD.InternalPressureDesign)
			,IGD.WindborneDebrisRegion  = COALESCE(WindborneDebrisRegion,IGD.WindborneDebrisRegion)
			,IGD.Terrain  = COALESCE(Terrain,IGD.Terrain)
			,IGD.RoofDeckAttachment  = COALESCE(RoofDeckAttachment,IGD.RoofDeckAttachment)
			,IGD.RoofCover  = COALESCE(RoofCover,IGD.RoofCover)
			,IGD.RooftoWallconnection  = COALESCE(RooftoWallconnection,IGD.RooftoWallconnection)
			,IGD.SecondaryWaterResistance  = COALESCE(SecondaryWaterResistance,IGD.SecondaryWaterResistance)
			,IGD.OpeningProtection  = COALESCE(OpeningProtection,IGD.OpeningProtection)
			,IGD.RoofShape  = COALESCE(RoofShape,IGD.RoofShape)
			,IGD.DesignExposure  = COALESCE(DesignExposure,IGD.DesignExposure)
			,IGD.ValueofHome  = COALESCE(ValueofHome,IGD.ValueofHome)
			,IGD.UnattachedStructure  = COALESCE(UnattachedStructure,IGD.UnattachedStructure)
			,IGD.NoPriorInsurance  = COALESCE(NoPriorInsurance,IGD.NoPriorInsurance)
			,IGD.Condemned  = COALESCE(Condemned,IGD.Condemned)
			,IGD.FarmsNRanches  = COALESCE(FarmsNRanches,IGD.FarmsNRanches)
			,IGD.BusinessExposure  = COALESCE(BusinessExposure,IGD.BusinessExposure)
			,IGD.FraternityorSorority  = COALESCE(FraternityorSorority,IGD.FraternityorSorority)
			,IGD.Vacant  = COALESCE(Vacant,IGD.Vacant)
			,IGD.FloodZone  = COALESCE(FloodZone,IGD.FloodZone)
			,IGD.ConstructedOverWater  = COALESCE(ConstructedOverWater,IGD.ConstructedOverWater)
			,IGD.BuiltonLandfills  = COALESCE(BuiltonLandfills,IGD.BuiltonLandfills)
			,IGD.HomeDayCare  = COALESCE(HomeDayCare,IGD.HomeDayCare)
			,IGD.Pool  = COALESCE(Pool,IGD.Pool)
			,IGD.ParcelSize  = COALESCE(ParcelSize,IGD.ParcelSize)
			,IGD.ImprovementQuality  = COALESCE(ImprovementQuality,IGD.ImprovementQuality)
			,IGD.ImprovementQualityDate  = COALESCE(ImprovementQualityDate,IGD.ImprovementQualityDate)
			,IGD.NumberOfBuildings  = COALESCE(NumberOfBuildings,IGD.NumberOfBuildings)
			,IGD.NumberOfUnits  = COALESCE(NumberOfUnits,IGD.NumberOfUnits)
			,IGD.Crime  = COALESCE(Crime,IGD.Crime)
			,IGD.PoliceID  = COALESCE(PoliceID,IGD.PoliceID)
			,IGD.FireID  = COALESCE(FireID,IGD.FireID)
			,IGD.Id  = COALESCE(Id,IGD.Id)
			,IGD.CountyName  = COALESCE(CountyName,IGD.CountyName)
			,IGD.PropertyState  = COALESCE(PropertyState,IGD.PropertyState)
			,IGD.CentroidLatitude  = COALESCE(CentroidLatitude,IGD.CentroidLatitude)
			,IGD.CentroidLongitude  = COALESCE(CentroidLongitude,IGD.CentroidLongitude)
			,IGD.PlaTerritory  = COALESCE(PlaTerritory,IGD.PlaTerritory)
			,IGD.PlaTerritoryName  = COALESCE(PlaTerritoryName,IGD.PlaTerritoryName)
			,IGD.WindpoolTerritory  = COALESCE(WindpoolTerritory,IGD.WindpoolTerritory)
			,IGD.WindpoolTerritoryName  = COALESCE(WindpoolTerritoryName,IGD.WindpoolTerritoryName)
			,IGD.Geometry  = COALESCE(Geometry,IGD.Geometry)
	 WHERE ParcelID= ParcelID;
	    
END ;

CREATE PROCEDURE `usp_InsertIGD`
	(IN Id bigint,
	IN ParcelID nvarchar(26) ,
	IN PropertyLocationStreet1 nvarchar(40) ,
	IN PropertyLocationStreet2 nvarchar(40) ,
	IN PropertyCity nvarchar(40) ,
	IN Latitude decimal(10, 5) ,
	IN Longitude decimal(10, 5) ,
	IN County numeric(2, 0) ,
	IN PropertyZip numeric(5, 0) ,
	IN OwnerName nvarchar(30) ,
	IN OwnerMailAdrress1 nvarchar(40) ,
	IN OwnerMailAdrress2 nvarchar(40) ,
	IN OwnerCity nvarchar(40) ,
	IN OwnerState nvarchar(30) ,
	IN OwnerZip numeric(5, 0) ,
	IN CitizensTerritory nvarchar(50) ,
	IN ConstructionType nvarchar(50) ,
	IN NumberOfStories numeric(2, 0) ,
	IN Families nchar(10) ,
	IN YearBuilt numeric(4, 0) ,
	IN YearofRoof date ,
	IN YearofRoofVerified bit ,
	IN RoofMaterial nvarchar(50) ,
	IN LivingArea numeric(12, 0) ,
	IN Occupancy nchar(10) ,
	IN MonthsUnoccupied nchar(10) ,
	IN PPC nchar(10) ,
	IN BCEG nchar(10) ,
	IN TypeOfResidence nvarchar(50) ,
	IN FloorOfResidence numeric(4, 0) ,
	IN FloridaWindpool nchar(10) ,
	IN DistancetoCoast decimal(10,10) ,
	IN DistancetoSinkhole nchar(10) ,
	IN DistancetoHydrant nchar(10) ,
	IN DistancetoFireDepartment nchar(10) ,
	IN FireDistrict nchar(10) ,
	IN RespondingFireDepartment nchar(10) ,
	IN CentralStationAlarm nchar(10) ,
	IN AutomaticSprinklers nchar(10) ,
	IN Claims nchar(10) ,
	IN LocationWindSpeed nchar(10) ,
	IN DesignWindSpeed nchar(10) ,
	IN InternalPressureDesign nchar(10) ,
	IN WindborneDebrisRegion nchar(10) ,
	IN Terrain nchar(10) ,
	IN RoofDeckAttachment nchar(10) ,
	IN RoofCover nchar(10) ,
	IN RooftoWallconnection nchar(10) ,
	IN SecondaryWaterResistance nchar(10) ,
	IN OpeningProtection nchar(10) ,
	IN RoofShape nvarchar(50) ,
	IN DesignExposure nchar(10) ,
	IN ValueofHome numeric(12, 0) ,
	IN UnattachedStructure nchar(10) ,
	IN NoPriorInsurance nchar(10) ,
	IN Condemned nchar(10) ,
	IN FarmsNRanches nchar(10) ,
	IN BusinessExposure nchar(10) ,
	IN FraternityorSorority nchar(10) ,
	IN Vacant nchar(10) ,
	IN FloodZone nchar(10) ,
	IN ConstructedOverWater nchar(10) ,
	IN BuiltonLandfills nchar(10) ,
	IN HomeDayCare nchar(10) ,
	IN Pool bit ,
	IN ParcelSize numeric(12, 0) ,
	IN ImprovementQuality nvarchar(50) ,
	IN ImprovementQualityDate nvarchar(4) ,
	IN NumberOfBuildings numeric(4, 0) ,
	IN NumberOfUnits numeric(4, 0) ,
	IN Crime nchar(10) ,
	IN PoliceID numeric(3, 0) ,
	IN FireID numeric(3, 0) ,
	IN CountyName nvarchar(40) ,
	IN PropertyState nvarchar(2) ,
	IN CentroidLatitude decimal(10, 5) ,
	IN CentroidLongitude decimal(10, 5) ,
	IN PlaTerritory int ,
	IN PlaTerritoryName varchar(100) ,
	IN WindpoolTerritory int ,
	IN WindpoolTerritoryName varchar(100) ,
	IN Geometry Varchar(8000) 
)
BEGIN
    
    INSERT INTO IGD
           (Id
           ,ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
           ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName
           ,Geometry
           )
     VALUES
           (Id
           	,ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
           ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName
           ,Geometry
           );
END ;


CREATE PROCEDURE `usp_SaveIGD`( IN Id bigint,
                IN ParcelID nvarchar(26) ,
                IN PropertyLocationStreet1 nvarchar(40) ,
                IN PropertyLocationStreet2 nvarchar(40) ,
                IN PropertyCity nvarchar(40) ,
                IN Latitude decimal(10, 5) ,
                IN Longitude decimal(10, 5) ,
                IN County numeric(2, 0) ,
                IN PropertyZip numeric(5, 0) ,
                IN OwnerName nvarchar(30) ,
                IN OwnerMailAdrress1 nvarchar(40) ,
                IN OwnerMailAdrress2 nvarchar(40) ,
                IN OwnerCity nvarchar(40) ,
                IN OwnerState nvarchar(30) ,
                IN OwnerZip numeric(5, 0) ,
                IN CitizensTerritory nvarchar(50) ,
                IN ConstructionType nvarchar(50) ,
                IN NumberOfStories numeric(2, 0) ,
                IN Families nchar(10) ,
                IN YearBuilt numeric(4, 0) ,
                IN YearofRoof date ,
                IN YearofRoofVerified bit ,
                IN RoofMaterial nvarchar(50) ,
                IN LivingArea numeric(12, 0) ,
                IN Occupancy nchar(10) ,
                IN MonthsUnoccupied nchar(10) ,
                IN PPC nchar(10) ,
                IN BCEG nchar(10) ,
                IN TypeOfResidence nvarchar(50) ,
                IN FloorOfResidence numeric(4, 0) ,
                IN FloridaWindpool nchar(10) ,
                IN DistancetoCoast nchar(10) ,
                IN DistancetoSinkhole nchar(10) ,
                IN DistancetoHydrant nchar(10) ,
                IN DistancetoFireDepartment nchar(10) ,
                IN FireDistrict nchar(10) ,
                IN RespondingFireDepartment nchar(10) ,
                IN CentralStationAlarm nchar(10) ,
                IN AutomaticSprinklers nchar(10) ,
                IN Claims nchar(10) ,
                IN LocationWindSpeed nchar(10) ,
                IN DesignWindSpeed nchar(10) ,
                IN InternalPressureDesign nchar(10) ,
                IN WindborneDebrisRegion nchar(10) ,
                IN Terrain nchar(10) ,
                IN RoofDeckAttachment nchar(10) ,
                IN RoofCover nchar(10) ,
                IN RooftoWallconnection nchar(10) ,
                IN SecondaryWaterResistance nchar(10) ,
                IN OpeningProtection nchar(10) ,
                IN RoofShape nvarchar(50) ,
                IN DesignExposure nchar(10) ,
                IN ValueofHome numeric(12, 0) ,
                IN UnattachedStructure nchar(10) ,
                IN NoPriorInsurance nchar(10) ,
                IN Condemned nchar(10) ,
                IN FarmsNRanches nchar(10) ,
                IN BusinessExposure nchar(10) ,
                IN FraternityorSorority nchar(10) ,
                IN Vacant nchar(10) ,
                IN FloodZone nchar(10) ,
                IN ConstructedOverWater nchar(10) ,
                IN BuiltonLandfills nchar(10) ,
                IN HomeDayCare nchar(10) ,
                IN Pool bit ,
                IN ParcelSize numeric(12, 0) ,
                IN ImprovementQuality nvarchar(50) ,
                IN ImprovementQualityDate nvarchar(4) ,
                IN NumberOfBuildings numeric(4, 0) ,
                IN NumberOfUnits numeric(4, 0) ,
                IN Crime nchar(10) ,
                IN PoliceID numeric(3, 0) ,
                IN FireID numeric(3, 0) ,
                IN CountyName nvarchar(40) ,
                IN PropertyState nvarchar(2) ,
                IN CentroidLatitude decimal(10, 5) ,
                IN CentroidLongitude decimal(10, 5) ,
                IN PlaTerritory int ,
                IN PlaTerritoryName varchar(100) ,
                IN WindpoolTerritory int ,
                IN WindpoolTerritoryName varchar(100)

)
BEGIN
    Declare rowcount int;
    Declare rowCountDummy int;


    SELECT count(*) into rowcount FROM IGD WHERE ParcelID = ParcelID;

    SELECT count(*) into rowCountDummy FROM IGD_Dummy WHERE ParcelID = ParcelID;



    IF rowcount>0 then
       UPDATE IGD
                                   SET
                                                ParcelID = COALESCE(ParcelID,ParcelID)
                                                ,PropertyLocationStreet1 = COALESCE(PropertyLocationStreet1,PropertyLocationStreet1)
                                                ,PropertyLocationStreet2 = COALESCE(PropertyLocationStreet2,PropertyLocationStreet2)
                                                ,PropertyCity = COALESCE(PropertyCity,PropertyCity)
                                                ,Latitude = COALESCE(Latitude,Latitude)
                                                ,Longitude = COALESCE(Longitude,Longitude)
                                                ,County = COALESCE(County,County)
                                                ,PropertyZip = COALESCE(PropertyZip,PropertyZip)
                                                ,OwnerName = COALESCE(OwnerName,OwnerName)
                                                ,OwnerMailAdrress1 = COALESCE(OwnerMailAdrress1,OwnerMailAdrress1)
                                                ,OwnerMailAdrress2 = COALESCE(OwnerMailAdrress2,OwnerMailAdrress2)
                                                ,OwnerCity = COALESCE(OwnerCity,OwnerCity)
                                                ,OwnerState = COALESCE(OwnerState,OwnerState)
                                                ,OwnerZip = COALESCE(OwnerZip,OwnerZip)
                                                ,CitizensTerritory = COALESCE(CitizensTerritory,CitizensTerritory)
                                                ,ConstructionType = COALESCE(ConstructionType,ConstructionType)
                                                ,NumberOfStories = COALESCE(NumberOfStories,NumberOfStories)
                                                ,Families = COALESCE(Families,Families)
                                                ,YearBuilt = COALESCE(YearBuilt,YearBuilt)
                                                ,YearofRoof = COALESCE(YearofRoof,YearofRoof)
                                                ,YearofRoofVerified = COALESCE(YearofRoofVerified,YearofRoofVerified)
                                                ,RoofMaterial = COALESCE(RoofMaterial,RoofMaterial)
                                                ,LivingArea = COALESCE(LivingArea,LivingArea)
                                                ,Occupancy = COALESCE(Occupancy,Occupancy)
                                                ,MonthsUnoccupied = COALESCE(MonthsUnoccupied,MonthsUnoccupied)
                                                ,PPC = COALESCE(PPC,PPC)
                                                ,BCEG = COALESCE(BCEG,BCEG)
                                                ,TypeOfResidence = COALESCE(TypeOfResidence,TypeOfResidence)
                                                ,FloorOfResidence = COALESCE(FloorOfResidence,FloorOfResidence)
                                                ,FloridaWindpool = COALESCE(FloridaWindpool,FloridaWindpool)
                                                ,DistancetoCoast = COALESCE(DistancetoCoast,DistancetoCoast)
                                                ,DistancetoSinkhole = COALESCE(DistancetoSinkhole,DistancetoSinkhole)
                                                ,DistancetoHydrant = COALESCE(DistancetoHydrant,DistancetoHydrant)
                                                ,DistancetoFireDepartment = COALESCE(DistancetoFireDepartment,DistancetoFireDepartment)
                                                ,FireDistrict = COALESCE(FireDistrict,FireDistrict)
                                                ,RespondingFireDepartment = COALESCE(RespondingFireDepartment,RespondingFireDepartment)
                                                ,CentralStationAlarm = COALESCE(CentralStationAlarm,CentralStationAlarm)
                                                ,AutomaticSprinklers = COALESCE(AutomaticSprinklers,AutomaticSprinklers)
                                                ,Claims = COALESCE(Claims,Claims)
                                                ,LocationWindSpeed = COALESCE(LocationWindSpeed,LocationWindSpeed)
                                                ,DesignWindSpeed = COALESCE(DesignWindSpeed,DesignWindSpeed)
                                                ,InternalPressureDesign = COALESCE(InternalPressureDesign,InternalPressureDesign)
                                                ,WindborneDebrisRegion = COALESCE(WindborneDebrisRegion,WindborneDebrisRegion)
                                                ,Terrain = COALESCE(Terrain,Terrain)
                                                ,RoofDeckAttachment = COALESCE(RoofDeckAttachment,RoofDeckAttachment)
                                                ,RoofCover = COALESCE(RoofCover,RoofCover)
                                                ,RooftoWallconnection = COALESCE(RooftoWallconnection,RooftoWallconnection)
                                                ,SecondaryWaterResistance = COALESCE(SecondaryWaterResistance,SecondaryWaterResistance)
                                                ,OpeningProtection = COALESCE(OpeningProtection,OpeningProtection)
                                                ,RoofShape = COALESCE(RoofShape,RoofShape)
                                                ,DesignExposure = COALESCE(DesignExposure,DesignExposure)
                                                ,ValueofHome = COALESCE(ValueofHome,ValueofHome)
                                                ,UnattachedStructure = COALESCE(UnattachedStructure,UnattachedStructure)
                                                ,NoPriorInsurance = COALESCE(NoPriorInsurance,NoPriorInsurance)
                                                ,Condemned = COALESCE(Condemned,Condemned)
                                                ,FarmsNRanches = COALESCE(FarmsNRanches,FarmsNRanches)
                                                ,BusinessExposure = COALESCE(BusinessExposure,BusinessExposure)
                                                ,FraternityorSorority = COALESCE(FraternityorSorority,FraternityorSorority)
                                                ,Vacant = COALESCE(Vacant,Vacant)
                                                ,FloodZone = COALESCE(FloodZone,FloodZone)
                                                ,ConstructedOverWater = COALESCE(ConstructedOverWater,ConstructedOverWater)
                                                ,BuiltonLandfills = COALESCE(BuiltonLandfills,BuiltonLandfills)
                                                ,HomeDayCare = COALESCE(HomeDayCare,HomeDayCare)
                                                ,Pool = COALESCE(Pool,Pool)
                                                ,ParcelSize = COALESCE(ParcelSize,ParcelSize)
                                                ,ImprovementQuality = COALESCE(ImprovementQuality,ImprovementQuality)
                                                ,ImprovementQualityDate = COALESCE(ImprovementQualityDate,ImprovementQualityDate)
                                                ,NumberOfBuildings = COALESCE(NumberOfBuildings,NumberOfBuildings)
                                                ,NumberOfUnits = COALESCE(NumberOfUnits,NumberOfUnits)
                                                ,Crime = COALESCE(Crime,Crime)
                                                ,PoliceID = COALESCE(PoliceID,PoliceID)
                                                ,FireID = COALESCE(FireID,FireID)
                                                ,CountyName = COALESCE(CountyName,CountyName)
                                                ,PropertyState = COALESCE(PropertyState,PropertyState)
                                                ,CentroidLatitude = COALESCE(CentroidLatitude,CentroidLatitude)
                                                ,CentroidLongitude = COALESCE(CentroidLongitude,CentroidLongitude)
                                                ,PlaTerritory = COALESCE(PlaTerritory,PlaTerritory)
                                                ,PlaTerritoryName = COALESCE(PlaTerritoryName,PlaTerritoryName)
                                                ,WindpoolTerritory = COALESCE(WindpoolTerritory,WindpoolTerritory)
                                                ,WindpoolTerritoryName = COALESCE(WindpoolTerritoryName,WindpoolTerritoryName)
                                    WHERE ParcelID = ParcelID;

    ELSEIF rowCountDummy>0 then

           UPDATE IGD_Dummy
           SET

                  ParcelID = COALESCE(ParcelID,ParcelID)
                  ,PropertyLocationStreet1 = COALESCE(PropertyLocationStreet1,PropertyLocationStreet1)
                  ,PropertyLocationStreet2 = COALESCE(PropertyLocationStreet2,PropertyLocationStreet2)
                  ,PropertyCity = COALESCE(PropertyCity,PropertyCity)
                  ,Latitude = COALESCE(Latitude,Latitude)
                  ,Longitude = COALESCE(Longitude,Longitude)
                  ,County = COALESCE(County,County)
                  ,PropertyZip = COALESCE(PropertyZip,PropertyZip)
                  ,OwnerName = COALESCE(OwnerName,OwnerName)
                  ,OwnerMailAdrress1 = COALESCE(OwnerMailAdrress1,OwnerMailAdrress1)
                  ,OwnerMailAdrress2 = COALESCE(OwnerMailAdrress2,OwnerMailAdrress2)
                  ,OwnerCity = COALESCE(OwnerCity,OwnerCity)
                  ,OwnerState = COALESCE(OwnerState,OwnerState)
                  ,OwnerZip = COALESCE(OwnerZip,OwnerZip)
                  ,CitizensTerritory = COALESCE(CitizensTerritory,CitizensTerritory)
                  ,ConstructionType = COALESCE(ConstructionType,ConstructionType)
                  ,NumberOfStories = COALESCE(NumberOfStories,NumberOfStories)
                  ,Families = COALESCE(Families,Families)
                  ,YearBuilt = COALESCE(YearBuilt,YearBuilt)
                  ,YearofRoof = COALESCE(YearofRoof,YearofRoof)
                  ,YearofRoofVerified = COALESCE(YearofRoofVerified,YearofRoofVerified)
                  ,RoofMaterial = COALESCE(RoofMaterial,RoofMaterial)
                  ,LivingArea = COALESCE(LivingArea,LivingArea)
                  ,Occupancy = COALESCE(Occupancy,Occupancy)
                  ,MonthsUnoccupied = COALESCE(MonthsUnoccupied,MonthsUnoccupied)
                  ,PPC = COALESCE(PPC,PPC)
                  ,BCEG = COALESCE(BCEG,BCEG)
                  ,TypeOfResidence = COALESCE(TypeOfResidence,TypeOfResidence)
                  ,FloorOfResidence = COALESCE(FloorOfResidence,FloorOfResidence)
                  ,FloridaWindpool = COALESCE(FloridaWindpool,FloridaWindpool)
                  ,DistancetoCoast = COALESCE(DistancetoCoast,DistancetoCoast)
                  ,DistancetoSinkhole = COALESCE(DistancetoSinkhole,DistancetoSinkhole)
                  ,DistancetoHydrant = COALESCE(DistancetoHydrant,DistancetoHydrant)
                  ,DistancetoFireDepartment = COALESCE(DistancetoFireDepartment,DistancetoFireDepartment)
                  ,FireDistrict = COALESCE(FireDistrict,FireDistrict)
                  ,RespondingFireDepartment = COALESCE(RespondingFireDepartment,RespondingFireDepartment)
                  ,CentralStationAlarm = COALESCE(CentralStationAlarm,CentralStationAlarm)
                  ,AutomaticSprinklers = COALESCE(AutomaticSprinklers,AutomaticSprinklers)
                  ,Claims = COALESCE(Claims,Claims)
                  ,LocationWindSpeed = COALESCE(LocationWindSpeed,LocationWindSpeed)
                  ,DesignWindSpeed = COALESCE(DesignWindSpeed,DesignWindSpeed)
                  ,InternalPressureDesign = COALESCE(InternalPressureDesign,InternalPressureDesign)
                  ,WindborneDebrisRegion = COALESCE(WindborneDebrisRegion,WindborneDebrisRegion)
                  ,Terrain = COALESCE(Terrain,Terrain)
                  ,RoofDeckAttachment = COALESCE(RoofDeckAttachment,RoofDeckAttachment)
                  ,RoofCover = COALESCE(RoofCover,RoofCover)
                  ,RooftoWallconnection = COALESCE(RooftoWallconnection,RooftoWallconnection)
                  ,SecondaryWaterResistance = COALESCE(SecondaryWaterResistance,SecondaryWaterResistance)
                  ,OpeningProtection = COALESCE(OpeningProtection,OpeningProtection)
                  ,RoofShape = COALESCE(RoofShape,RoofShape)
                  ,DesignExposure = COALESCE(DesignExposure,DesignExposure)
                  ,ValueofHome = COALESCE(ValueofHome,ValueofHome)
                  ,UnattachedStructure = COALESCE(UnattachedStructure,UnattachedStructure)
                  ,NoPriorInsurance = COALESCE(NoPriorInsurance,NoPriorInsurance)
                  ,Condemned = COALESCE(Condemned,Condemned)
                  ,FarmsNRanches = COALESCE(FarmsNRanches,FarmsNRanches)
                  ,BusinessExposure = COALESCE(BusinessExposure,BusinessExposure)
                  ,FraternityorSorority = COALESCE(FraternityorSorority,FraternityorSorority)
                  ,Vacant = COALESCE(Vacant,Vacant)
                  ,FloodZone = COALESCE(FloodZone,FloodZone)
                  ,ConstructedOverWater = COALESCE(ConstructedOverWater,ConstructedOverWater)
                  ,BuiltonLandfills = COALESCE(BuiltonLandfills,BuiltonLandfills)
                  ,HomeDayCare = COALESCE(HomeDayCare,HomeDayCare)
                  ,Pool = COALESCE(Pool,Pool)
                  ,ParcelSize = COALESCE(ParcelSize,ParcelSize)
                  ,ImprovementQuality = COALESCE(ImprovementQuality,ImprovementQuality)
                  ,ImprovementQualityDate = COALESCE(ImprovementQualityDate,ImprovementQualityDate)
                  ,NumberOfBuildings = COALESCE(NumberOfBuildings,NumberOfBuildings)
                  ,NumberOfUnits = COALESCE(NumberOfUnits,NumberOfUnits)
                  ,Crime = COALESCE(Crime,Crime)
                  ,PoliceID = COALESCE(PoliceID,PoliceID)
                  ,FireID = COALESCE(FireID,FireID)
                  ,CountyName = COALESCE(CountyName,CountyName)
                  ,PropertyState = COALESCE(PropertyState,PropertyState)
                  ,CentroidLatitude = COALESCE(CentroidLatitude,CentroidLatitude)
                  ,CentroidLongitude = COALESCE(CentroidLongitude,CentroidLongitude)
                  ,PlaTerritory = COALESCE(PlaTerritory,PlaTerritory)
                  ,PlaTerritoryName = COALESCE(PlaTerritoryName,PlaTerritoryName)
                  ,WindpoolTerritory = COALESCE(WindpoolTerritory,WindpoolTerritory)
                  ,WindpoolTerritoryName = COALESCE(WindpoolTerritoryName,WindpoolTerritoryName)

                  WHERE ParcelID = ParcelID;

    ELSEIF rowcount = 0 then
          INSERT INTO IGD(
            Id,ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
           ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName)
            VALUES(Id,ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
           ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName);


    ELSEIF rowCountDummy=0 then

           INSERT INTO IGD_Dummy
           (ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
          ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,Id
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName)
     VALUES
           (ParcelID
           ,PropertyLocationStreet1
           ,PropertyLocationStreet2
           ,PropertyCity
           ,Latitude
           ,Longitude
           ,County
           ,PropertyZip
           ,OwnerName
           ,OwnerMailAdrress1
           ,OwnerMailAdrress2
           ,OwnerCity
           ,OwnerState
           ,OwnerZip
           ,CitizensTerritory
           ,ConstructionType
           ,NumberOfStories
           ,Families
           ,YearBuilt
           ,YearofRoof
           ,YearofRoofVerified
           ,RoofMaterial
           ,LivingArea
           ,Occupancy
           ,MonthsUnoccupied
           ,PPC
           ,BCEG
           ,TypeOfResidence
           ,FloorOfResidence
           ,FloridaWindpool
           ,DistancetoCoast
           ,DistancetoSinkhole
           ,DistancetoHydrant
           ,DistancetoFireDepartment
           ,FireDistrict
           ,RespondingFireDepartment
           ,CentralStationAlarm
           ,AutomaticSprinklers
           ,Claims
           ,LocationWindSpeed
           ,DesignWindSpeed
           ,InternalPressureDesign
           ,WindborneDebrisRegion
           ,Terrain
           ,RoofDeckAttachment
           ,RoofCover
           ,RooftoWallconnection
           ,SecondaryWaterResistance
           ,OpeningProtection
           ,RoofShape
           ,DesignExposure
           ,ValueofHome
           ,UnattachedStructure
           ,NoPriorInsurance
           ,Condemned
           ,FarmsNRanches
           ,BusinessExposure
           ,FraternityorSorority
           ,Vacant
           ,FloodZone
           ,ConstructedOverWater
           ,BuiltonLandfills
           ,HomeDayCare
           ,Pool
           ,ParcelSize
           ,ImprovementQuality
           ,ImprovementQualityDate
           ,NumberOfBuildings
           ,NumberOfUnits
           ,Crime
           ,PoliceID
           ,FireID
           ,Id
           ,CountyName
           ,PropertyState
           ,CentroidLatitude
           ,CentroidLongitude
           ,PlaTerritory
           ,PlaTerritoryName
           ,WindpoolTerritory
           ,WindpoolTerritoryName);

    END if;

END ;

CREATE PROCEDURE `usp_GetIGDbyKeyAndPaging`(
	IN KeyVal nvarchar(50)
	,IN CurrentPageNo int
	,IN PageSize int
)
BEGIN
declare sqlquery varchar(4000);
declare pageindex int;
set pageindex=0;
set pageindex=CurrentPageNo  * PageSize;

IF KeyVal != '' then

		select * FROM IGD LIMIT pageindex,PageSize;

ELSE

 set sqlquery=concat ('select  *
		FROM IGD
		WHERE (PropertyLocationStreet1 IS NOT NULL AND PropertyLocationStreet1 != '''' AND PropertyLocationStreet1 LIKE %',KeyVal,'%)
		OR (PropertyLocationStreet2 IS NOT NULL AND PropertyLocationStreet2 != '''' AND PropertyLocationStreet2 LIKE %',KeyVal,'%)
		OR (CountyName IS NOT NULL AND CountyName!= '''' AND CountyName LIKE %',KeyVal+'%)
		OR (PropertyCity IS NOT NULL AND PropertyCity!= '''' AND PropertyCity LIKE %',KeyVal,'%)
		OR (PropertyState IS NOT NULL AND PropertyState!= '' AND PropertyState LIKE %',KeyVal,'%)
		OR (PropertyState IS NOT NULL AND PropertyState!= '' AND PropertyState LIKE %',KeyVal,'%)
		LIMIT', pageindex,PageSize);
  execute sqlquery;

END if;


END ;

CREATE PROCEDURE `usp_GetIGDbyPaging`
 (
	IN CurrentPageNo int
	,IN PageSize int
  )
BEGIN
declare pageindex int;
set pageindex=0;
set pageindex=CurrentPageNo  * PageSize;

SELECT * FROM IGD 	LIMIT pageindex,PageSize;

END ;

