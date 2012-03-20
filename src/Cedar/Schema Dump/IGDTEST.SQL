CREATE TABLE IGD_Dummy(
	ParcelID varchar(26) NOT NULL,
	PropertyLocationStreet1 varchar(40) NULL,
	PropertyLocationStreet2 varchar(40) NULL,
	PropertyCity varchar(40) NULL,
	Latitude decimal(10, 5) NULL,
	Longitude decimal(10, 5) NULL,
	County decimal(2, 0) NULL,
	PropertyZip decimal(5, 0) NULL,
	OwnerName varchar(30) NULL,
	OwnerMailAdrress1 varchar(40) NULL,
	OwnerMailAdrress2 varchar(40) NULL,
	OwnerCity varchar(40) NULL,
	OwnerState varchar(30) NULL,
	OwnerZip decimal(5, 0) NULL,
	CitizensTerritory varchar(50) NULL,
	ConstructionType varchar(50) NULL,
	NumberOfStories decimal(2, 0) NULL,
	Families char(10) NULL,
	YearBuilt decimal(4, 0) NULL,
	YearofRoof date NULL,
	YearofRoofVerified bit NULL,
	RoofMaterial varchar(50) NULL,
	LivingArea decimal(12, 0) NULL,
	Occupancy char(10) NULL,
	MonthsUnoccupied char(10) NULL,
	PPC char(10) NULL,
	BCEG char(10) NULL,
	TypeOfResidence varchar(50) NULL,
	FloorOfResidence decimal(4, 0) NULL,
	FloridaWindpool char(10) NULL,
	DistancetoCoast varchar(20) NULL,
	DistancetoSinkhole char(10) NULL,
	DistancetoHydrant char(10) NULL,
	DistancetoFireDepartment char(10) NULL,
	FireDistrict char(10) NULL,
	RespondingFireDepartment char(10) NULL,
	CentralStationAlarm char(10) NULL,
	AutomaticSprinklers char(10) NULL,
	Claims char(10) NULL,
	LocationWindSpeed char(10) NULL,
	DesignWindSpeed char(10) NULL,
	InternalPressureDesign char(10) NULL,
	WindborneDebrisRegion char(10) NULL,
	Terrain char(10) NULL,
	RoofDeckAttachment char(10) NULL,
	RoofCover char(10) NULL,
	RooftoWallconnection char(10) NULL,
	SecondaryWaterResistance char(10) NULL,
	OpeningProtection char(10) NULL,
	RoofShape varchar(50) NULL,
	DesignExposure char(10) NULL,
	ValueofHome decimal(12, 0) NULL,
	UnattachedStructure char(10) NULL,
	NoPriorInsurance char(10) NULL,
	Condemned char(10) NULL,
	FarmsNRanches char(10) NULL,
	BusinessExposure char(10) NULL,
	FraternityorSorority char(10) NULL,
	Vacant varchar(100) NULL,
	FloodZone char(10) NULL,
	ConstructedOverWater char(10) NULL,
	BuiltonLandfills char(10) NULL,
	HomeDayCare varchar(100) NULL,
	Pool bit NULL,
	ParcelSize decimal(12, 0) NULL,
	ImprovementQuality varchar(50) NULL,
	ImprovementQualityDate varchar(4) NULL,
	NumberOfBuildings decimal(4, 0) NULL,
	NumberOfUnits decimal(4, 0) NULL,
	Crime char(10) NULL,
	PoliceID decimal(3, 0) NULL,
	FireID decimal(3, 0) NULL,
	Id bigint NOT NULL primary key,
	CountyName varchar(40) NULL,
	PropertyState varchar(2) NULL,
	CentroidLatitude decimal(10, 5) NULL,
	CentroidLongitude decimal(10, 5) NULL,
	PlaTerritory int NULL,
	PlaTerritoryName varchar(100) NULL,
	WindpoolTerritory int NULL,
	WindpoolTerritoryName varchar(100) NULL,
	Geometry varchar(8000) NULL);

CREATE TABLE IGD(
	ParcelID varchar(26) NOT NULL,
	PropertyLocationStreet1 varchar(40) NULL,
	PropertyLocationStreet2 varchar(40) NULL,
	PropertyCity varchar(40) NULL,
	Latitude decimal(10, 5) NULL,
	Longitude decimal(10, 5) NULL,
	County decimal(2, 0) NULL,
	PropertyZip decimal(5, 0) NULL,
	OwnerName varchar(30) NULL,
	OwnerMailAdrress1 varchar(40) NULL,
	OwnerMailAdrress2 varchar(40) NULL,
	OwnerCity varchar(40) NULL,
	OwnerState varchar(30) NULL,
	OwnerZip decimal(5, 0) NULL,
	CitizensTerritory varchar(50) NULL,
	ConstructionType varchar(50) NULL,
	NumberOfStories decimal(2, 0) NULL,
	Families char(10) NULL,
	YearBuilt decimal(4, 0) NULL,
	YearofRoof date NULL,
	YearofRoofVerified bit NULL,
	RoofMaterial varchar(50) NULL,
	LivingArea decimal(12, 0) NULL,
	Occupancy char(10) NULL,
	MonthsUnoccupied char(10) NULL,
	PPC char(10) NULL,
	BCEG char(10) NULL,
	TypeOfResidence varchar(50) NULL,
	FloorOfResidence decimal(4, 0) NULL,
	FloridaWindpool char(10) NULL,
	DistancetoCoast varchar(20) NULL,
	DistancetoSinkhole char(10) NULL,
	DistancetoHydrant char(10) NULL,
	DistancetoFireDepartment char(10) NULL,
	FireDistrict char(10) NULL,
	RespondingFireDepartment char(10) NULL,
	CentralStationAlarm char(10) NULL,
	AutomaticSprinklers char(10) NULL,
	Claims char(10) NULL,
	LocationWindSpeed char(10) NULL,
	DesignWindSpeed char(10) NULL,
	InternalPressureDesign char(10) NULL,
	WindborneDebrisRegion char(10) NULL,
	Terrain char(10) NULL,
	RoofDeckAttachment char(10) NULL,
	RoofCover char(10) NULL,
	RooftoWallconnection char(10) NULL,
	SecondaryWaterResistance char(10) NULL,
	OpeningProtection char(10) NULL,
	RoofShape varchar(50) NULL,
	DesignExposure char(10) NULL,
	ValueofHome decimal(12, 0) NULL,
	UnattachedStructure char(10) NULL,
	NoPriorInsurance char(10) NULL,
	Condemned char(10) NULL,
	FarmsNRanches char(10) NULL,
	BusinessExposure char(10) NULL,
	FraternityorSorority char(10) NULL,
	Vacant varchar(100) NULL,
	FloodZone char(10) NULL,
	ConstructedOverWater char(10) NULL,
	BuiltonLandfills char(10) NULL,
	HomeDayCare varchar(100) NULL,
	Pool bit NULL,
	ParcelSize decimal(12, 0) NULL,
	ImprovementQuality varchar(50) NULL,
	ImprovementQualityDate varchar(4) NULL,
	NumberOfBuildings decimal(4, 0) NULL,
	NumberOfUnits decimal(4, 0) NULL,
	Crime char(10) NULL,
	PoliceID decimal(3, 0) NULL,
	FireID decimal(3, 0) NULL,
	Id bigint NOT NULL primary key,
	CountyName varchar(40) NULL,
	PropertyState varchar(2) NULL,
	CentroidLatitude decimal(10, 5) NULL,
	CentroidLongitude decimal(10, 5) NULL,
	PlaTerritory int NULL,
	PlaTerritoryName varchar(100) NULL,
	WindpoolTerritory int NULL,
	WindpoolTerritoryName varchar(100) NULL,
	Geometry varchar(8000) NULL
) ;

CREATE PROCEDURE insert_county
(
	IN ter_id varchar(10),
	IN ter_country varchar(100),
	IN x_county varchar(50),
	IN y_county varchar(50)
)
begin

	insert into pinellas_county(ter_id,ter_country,x_county,y_county) values(ter_id,ter_country,x_county,y_county);

END;

CREATE  PROCEDURE usp_GetIGD(IN Id BIGINT)
BEGIN
	 SELECT * FROM IGD  WHERE Id = Id;
END ;
CREATE  PROCEDURE usp_GetIGDByParcelId(IN ParcelID varchar(26))
BEGIN
    SELECT 	*  FROM IGD  WHERE ParcelID = ParcelID;
END;

CREATE PROCEDURE usp_UpdateIGD(
  IN Id bigint,
	IN ParcelID varchar(26) ,
	IN PropertyLocationStreet1 varchar(40) ,
	IN PropertyLocationStreet2 varchar(40) ,
	IN PropertyCity varchar(40) ,
	IN Latitude decimal(10, 5) ,
	IN Longitude decimal(10, 5) ,
	IN County decimal(2, 0) ,
	IN PropertyZip decimal(5, 0) ,
	IN OwnerName varchar(30) ,
	IN OwnerMailAdrress1 varchar(40) ,
	IN OwnerMailAdrress2 varchar(40) ,
	IN OwnerCity varchar(40) ,
	IN OwnerState varchar(30) ,
	IN OwnerZip decimal(5, 0) ,
	IN CitizensTerritory varchar(50) ,
	IN ConstructionType varchar(50) ,
	IN NumberOfStories decimal(2, 0) ,
	IN Families char(10) ,
	IN YearBuilt decimal(4, 0) ,
	IN YearofRoof date ,
	IN YearofRoofVerified bit ,
	IN RoofMaterial varchar(50) ,
	IN LivingArea decimal(12, 0) ,
	IN Occupancy char(10) ,
	IN MonthsUnoccupied char(10) ,
	IN PPC char(10) ,
	IN BCEG char(10) ,
	IN TypeOfResidence varchar(50) ,
	IN FloorOfResidence decimal(4, 0) ,
	IN FloridaWindpool char(10) ,
	IN DistancetoCoast decimal(10,10) ,
	IN DistancetoSinkhole char(10) ,
	IN DistancetoHydrant char(10) ,
	IN DistancetoFireDepartment char(10) ,
	IN FireDistrict char(10) ,
	IN RespondingFireDepartment char(10) ,
	IN CentralStationAlarm char(10) ,
	IN AutomaticSprinklers char(10) ,
	IN Claims char(10) ,
	IN LocationWindSpeed char(10) ,
	IN DesignWindSpeed char(10) ,
	IN InternalPressureDesign char(10) ,
	IN WindborneDebrisRegion char(10) ,
	IN Terrain char(10) ,
	IN RoofDeckAttachment char(10) ,
	IN RoofCover char(10) ,
	IN RooftoWallconnection char(10) ,
	IN SecondaryWaterResistance char(10) ,
	IN OpeningProtection char(10) ,
	IN RoofShape varchar(50) ,
	IN DesignExposure char(10) ,
	IN ValueofHome decimal(12, 0) ,
	IN UnattachedStructure char(10) ,
	IN NoPriorInsurance char(10) ,
	IN Condemned char(10) ,
	IN FarmsNRanches char(10) ,
	IN BusinessExposure char(10) ,
	IN FraternityorSorority char(10) ,
	IN Vacant char(10) ,
	IN FloodZone char(10) ,
	IN ConstructedOverWater char(10) ,
	IN BuiltonLandfills char(10) ,
	IN HomeDayCare char(10) ,
	IN Pool bit ,
	IN ParcelSize decimal(12, 0) ,
	IN ImprovementQuality varchar(50) ,
	IN ImprovementQualityDate varchar(4) ,
	IN NumberOfBuildings decimal(4, 0) ,
	IN NumberOfUnits decimal(4, 0) ,
	IN Crime char(10) ,
	IN PoliceID decimal(3, 0) ,
	IN FireID decimal(3, 0) ,
	IN CountyName varchar(40) ,
	IN PropertyState varchar(2) ,
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

CREATE PROCEDURE usp_InsertIGD
	(IN Id bigint,
	IN ParcelID varchar(26) ,
	IN PropertyLocationStreet1 varchar(40) ,
	IN PropertyLocationStreet2 varchar(40) ,
	IN PropertyCity varchar(40) ,
	IN Latitude decimal(10, 5) ,
	IN Longitude decimal(10, 5) ,
	IN County decimal(2, 0) ,
	IN PropertyZip decimal(5, 0) ,
	IN OwnerName varchar(30) ,
	IN OwnerMailAdrress1 varchar(40) ,
	IN OwnerMailAdrress2 varchar(40) ,
	IN OwnerCity varchar(40) ,
	IN OwnerState varchar(30) ,
	IN OwnerZip decimal(5, 0) ,
	IN CitizensTerritory varchar(50) ,
	IN ConstructionType varchar(50) ,
	IN NumberOfStories decimal(2, 0) ,
	IN Families char(10) ,
	IN YearBuilt decimal(4, 0) ,
	IN YearofRoof date ,
	IN YearofRoofVerified bit ,
	IN RoofMaterial varchar(50) ,
	IN LivingArea decimal(12, 0) ,
	IN Occupancy char(10) ,
	IN MonthsUnoccupied char(10) ,
	IN PPC char(10) ,
	IN BCEG char(10) ,
	IN TypeOfResidence varchar(50) ,
	IN FloorOfResidence decimal(4, 0) ,
	IN FloridaWindpool char(10) ,
	IN DistancetoCoast decimal(10,10) ,
	IN DistancetoSinkhole char(10) ,
	IN DistancetoHydrant char(10) ,
	IN DistancetoFireDepartment char(10) ,
	IN FireDistrict char(10) ,
	IN RespondingFireDepartment char(10) ,
	IN CentralStationAlarm char(10) ,
	IN AutomaticSprinklers char(10) ,
	IN Claims char(10) ,
	IN LocationWindSpeed char(10) ,
	IN DesignWindSpeed char(10) ,
	IN InternalPressureDesign char(10) ,
	IN WindborneDebrisRegion char(10) ,
	IN Terrain char(10) ,
	IN RoofDeckAttachment char(10) ,
	IN RoofCover char(10) ,
	IN RooftoWallconnection char(10) ,
	IN SecondaryWaterResistance char(10) ,
	IN OpeningProtection char(10) ,
	IN RoofShape varchar(50) ,
	IN DesignExposure char(10) ,
	IN ValueofHome decimal(12, 0) ,
	IN UnattachedStructure char(10) ,
	IN NoPriorInsurance char(10) ,
	IN Condemned char(10) ,
	IN FarmsNRanches char(10) ,
	IN BusinessExposure char(10) ,
	IN FraternityorSorority char(10) ,
	IN Vacant char(10) ,
	IN FloodZone char(10) ,
	IN ConstructedOverWater char(10) ,
	IN BuiltonLandfills char(10) ,
	IN HomeDayCare char(10) ,
	IN Pool bit ,
	IN ParcelSize decimal(12, 0) ,
	IN ImprovementQuality varchar(50) ,
	IN ImprovementQualityDate varchar(4) ,
	IN NumberOfBuildings decimal(4, 0) ,
	IN NumberOfUnits decimal(4, 0) ,
	IN Crime char(10) ,
	IN PoliceID decimal(3, 0) ,
	IN FireID decimal(3, 0) ,
	IN CountyName varchar(40) ,
	IN PropertyState varchar(2) ,
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

CREATE PROCEDURE usp_SaveIGD(
                IN _Id bigint,
                IN _ParcelID varchar(26),
                IN _PropertyLocationStreet1 varchar(40) ,
                IN _PropertyLocationStreet2 varchar(40) ,
                IN _PropertyCity varchar(40) ,
                IN _Latitude decimal(10, 5) ,
                IN _Longitude decimal(10, 5) ,
                IN _County decimal(2, 0) ,
                IN _PropertyZip decimal(5, 0) ,
                IN _OwnerName varchar(30) ,
                IN _OwnerMailAdrress1 varchar(40) ,
                IN _OwnerMailAdrress2 varchar(40) ,
                IN _OwnerCity varchar(40) ,
                IN _OwnerState varchar(30) ,
                IN _OwnerZip decimal(5, 0) ,
                IN _CitizensTerritory varchar(50) ,
                IN _ConstructionType varchar(50) ,
                IN _NumberOfStories decimal(2, 0) ,
                IN _Families char(10) ,
                IN _YearBuilt decimal(4, 0) ,
                IN _YearofRoof date ,
                IN _YearofRoofVerified bit ,
                IN _RoofMaterial varchar(50) ,
                IN _LivingArea decimal(12, 0) ,
                IN _Occupancy char(10) ,
                IN _MonthsUnoccupied char(10) ,
                IN _PPC char(10) ,
                IN _BCEG char(10) ,
               IN _TypeOfResidence varchar(50) ,
                IN _FloorOfResidence decimal(4, 0) ,
                IN _FloridaWindpool char(10) ,
                IN _DistancetoCoast char(10) ,
                IN _DistancetoSinkhole char(10) ,
                IN _DistancetoHydrant char(10) ,
                IN _DistancetoFireDepartment char(10) ,
                IN _FireDistrict char(10) ,
                IN _RespondingFireDepartment char(10) ,
                IN _CentralStationAlarm char(10) ,
                IN _AutomaticSprinklers char(10) ,
                IN _Claims char(10) ,
                IN _LocationWindSpeed char(10) ,
                IN _DesignWindSpeed char(10) ,
                IN _InternalPressureDesign char(10) ,
                IN _WindborneDebrisRegion char(10) ,
                IN _Terrain char(10) ,
                IN _RoofDeckAttachment char(10) ,
                IN _RoofCover char(10) ,
                IN _RooftoWallconnection char(10) ,
                IN _SecondaryWaterResistance char(10) ,
                IN _OpeningProtection char(10) ,
                IN _RoofShape varchar(50) ,
                IN _DesignExposure char(10) ,
                IN _ValueofHome decimal(12, 0) ,
                IN _UnattachedStructure char(10) ,
                IN _NoPriorInsurance char(10) ,
                IN _Condemned char(10) ,
                IN _FarmsNRanches char(10) ,
                IN _BusinessExposure char(10) ,
                IN _FraternityorSorority char(10) ,
                IN _Vacant char(10) ,
                IN _FloodZone char(10) ,
                IN _ConstructedOverWater char(10) ,
                IN _BuiltonLandfills char(10) ,
                IN _HomeDayCare char(10) ,
                IN _Pool bit ,
                IN _ParcelSize decimal(12, 0) ,
                IN _ImprovementQuality varchar(50) ,
                IN _ImprovementQualityDate varchar(4) ,
                IN _NumberOfBuildings decimal(4, 0) ,
                IN _NumberOfUnits decimal(4, 0) ,
                IN _Crime char(10) ,
                IN _PoliceID decimal(3, 0) ,
                IN _FireID decimal(3, 0) ,
                IN _CountyName varchar(40) ,
                IN _PropertyState varchar(2) ,
                IN _CentroidLatitude decimal(10, 5) ,
                IN _CentroidLongitude decimal(10, 5) ,
                IN _PlaTerritory int ,
                IN _PlaTerritoryName varchar(100) ,
                IN _WindpoolTerritory int ,
                IN _WindpoolTerritoryName varchar(100)

)
BEGIN
    Declare rowcount int;
    Declare rowCountDummy int;


    SELECT count(*) into rowcount FROM IGD WHERE ParcelID = _ParcelID;

    SELECT count(*) into rowCountDummy FROM IGD_Dummy WHERE ParcelID = _ParcelID;



    IF rowcount>0 then

      UPDATE IGD SET

                                                ParcelID = COALESCE(_ParcelID,ParcelID)
                                                ,PropertyLocationStreet1 = COALESCE(_PropertyLocationStreet1,PropertyLocationStreet1)
                                                ,PropertyLocationStreet2 = COALESCE(_PropertyLocationStreet2,PropertyLocationStreet2)
                                                ,PropertyCity = COALESCE(_PropertyCity,PropertyCity)
                                                ,Latitude = COALESCE(_Latitude,Latitude)
                                                ,Longitude = COALESCE(_Longitude,Longitude)
                                                ,County = COALESCE(_County,County)
                                                ,PropertyZip = COALESCE(_PropertyZip,PropertyZip)
                                                ,OwnerName = COALESCE(_OwnerName,OwnerName)
                                                ,OwnerMailAdrress1 = COALESCE(_OwnerMailAdrress1,OwnerMailAdrress1)
                                                ,OwnerMailAdrress2 = COALESCE(_OwnerMailAdrress2,OwnerMailAdrress2)
                                                ,OwnerCity = COALESCE(_OwnerCity,OwnerCity)
                                                ,OwnerState = COALESCE(_OwnerState,OwnerState)
                                                ,OwnerZip = COALESCE(_OwnerZip,OwnerZip)
                                                ,CitizensTerritory = COALESCE(_CitizensTerritory,CitizensTerritory)
                                                ,ConstructionType = COALESCE(_ConstructionType,ConstructionType)
                                                ,NumberOfStories = COALESCE(_NumberOfStories,NumberOfStories)
                                                ,Families = COALESCE(_Families,Families)
                                                ,YearBuilt = COALESCE(_YearBuilt,YearBuilt)
                                                ,YearofRoof = COALESCE(_YearofRoof,YearofRoof)
                                                ,YearofRoofVerified = COALESCE(_YearofRoofVerified,YearofRoofVerified)
                                                ,RoofMaterial = COALESCE(_RoofMaterial,RoofMaterial)
                                                ,LivingArea = COALESCE(_LivingArea,LivingArea)
                                                ,Occupancy = COALESCE(_Occupancy,Occupancy)
                                                ,MonthsUnoccupied = COALESCE(_MonthsUnoccupied,MonthsUnoccupied)
                                                ,PPC = COALESCE(_PPC,PPC)
                                                ,BCEG = COALESCE(_BCEG,BCEG)
                                                ,TypeOfResidence = COALESCE(_TypeOfResidence,TypeOfResidence)
                                                ,FloorOfResidence = COALESCE(_FloorOfResidence,FloorOfResidence)
                                                ,FloridaWindpool = COALESCE(_FloridaWindpool,FloridaWindpool)
                                                ,DistancetoCoast = COALESCE(_DistancetoCoast,DistancetoCoast)
                                                ,DistancetoSinkhole = COALESCE(_DistancetoSinkhole,DistancetoSinkhole)
                                                ,DistancetoHydrant = COALESCE(_DistancetoHydrant,DistancetoHydrant)
                                                ,DistancetoFireDepartment = COALESCE(_DistancetoFireDepartment,DistancetoFireDepartment)
                                                ,FireDistrict = COALESCE(_FireDistrict,FireDistrict)
                                                ,RespondingFireDepartment = COALESCE(_RespondingFireDepartment,RespondingFireDepartment)
                                                ,CentralStationAlarm = COALESCE(_CentralStationAlarm,CentralStationAlarm)
                                                ,AutomaticSprinklers = COALESCE(_AutomaticSprinklers,AutomaticSprinklers)
                                                ,Claims = COALESCE(_Claims,Claims)
                                                ,LocationWindSpeed = COALESCE(_LocationWindSpeed,LocationWindSpeed)
                                                ,DesignWindSpeed = COALESCE(_DesignWindSpeed,DesignWindSpeed)
                                                ,InternalPressureDesign = COALESCE(_InternalPressureDesign,InternalPressureDesign)
                                                ,WindborneDebrisRegion = COALESCE(_WindborneDebrisRegion,WindborneDebrisRegion)
                                                ,Terrain = COALESCE(_Terrain,Terrain)
                                                ,RoofDeckAttachment = COALESCE(_RoofDeckAttachment,RoofDeckAttachment)
                                                ,RoofCover = COALESCE(_RoofCover,RoofCover)
                                                ,RooftoWallconnection = COALESCE(_RooftoWallconnection,RooftoWallconnection)
                                                ,SecondaryWaterResistance = COALESCE(_SecondaryWaterResistance,SecondaryWaterResistance)
                                                ,OpeningProtection = COALESCE(_OpeningProtection,OpeningProtection)
                                                ,RoofShape = COALESCE(_RoofShape,RoofShape)
                                                ,DesignExposure = COALESCE(_DesignExposure,DesignExposure)
                                                ,ValueofHome = COALESCE(_ValueofHome,ValueofHome)
                                                ,UnattachedStructure = COALESCE(_UnattachedStructure,UnattachedStructure)
                                                ,NoPriorInsurance = COALESCE(_NoPriorInsurance,NoPriorInsurance)
                                                ,Condemned = COALESCE(_Condemned,Condemned)
                                                ,FarmsNRanches = COALESCE(_FarmsNRanches,FarmsNRanches)
                                                ,BusinessExposure = COALESCE(_BusinessExposure,BusinessExposure)
                                                ,FraternityorSorority = COALESCE(_FraternityorSorority,FraternityorSorority)
                                                ,Vacant = COALESCE(_Vacant,Vacant)
                                                ,FloodZone = COALESCE(_FloodZone,FloodZone)
                                                ,ConstructedOverWater = COALESCE(_ConstructedOverWater,ConstructedOverWater)
                                                ,BuiltonLandfills = COALESCE(_BuiltonLandfills,BuiltonLandfills)
                                                ,HomeDayCare = COALESCE(_HomeDayCare,HomeDayCare)
                                                ,Pool = COALESCE(_Pool,Pool)
                                                ,ParcelSize = COALESCE(_ParcelSize,ParcelSize)
                                                ,ImprovementQuality = COALESCE(_ImprovementQuality,ImprovementQuality)
                                                ,ImprovementQualityDate = COALESCE(_ImprovementQualityDate,ImprovementQualityDate)
                                                ,NumberOfBuildings = COALESCE(_NumberOfBuildings,NumberOfBuildings)
                                                ,NumberOfUnits = COALESCE(_NumberOfUnits,NumberOfUnits)
                                                ,Crime = COALESCE(_Crime,Crime)
                                                ,PoliceID = COALESCE(_PoliceID,PoliceID)
                                                ,FireID = COALESCE(_FireID,FireID)
                                                ,CountyName = COALESCE(_CountyName,CountyName)
                                                ,PropertyState = COALESCE(_PropertyState,PropertyState)
                                                ,CentroidLatitude = COALESCE(_CentroidLatitude,CentroidLatitude)
                                                ,CentroidLongitude = COALESCE(_CentroidLongitude,CentroidLongitude)
                                                ,PlaTerritory = COALESCE(_PlaTerritory,PlaTerritory)
                                                ,PlaTerritoryName = COALESCE(_PlaTerritoryName,PlaTerritoryName)
                                                ,WindpoolTerritory = COALESCE(_WindpoolTerritory,WindpoolTerritory)
                                                ,WindpoolTerritoryName = COALESCE(_WindpoolTerritoryName,WindpoolTerritoryName)
                                                WHERE ParcelID = _ParcelID ;

    ELSEIF rowCountDummy>0 then

        UPDATE IGD_Dummy SET
        ParcelID = COALESCE(_ParcelID,ParcelID)
                                                  ,PropertyLocationStreet1 = COALESCE(_PropertyLocationStreet1,PropertyLocationStreet1)
                                                  ,PropertyLocationStreet2 = COALESCE(_PropertyLocationStreet2,PropertyLocationStreet2)
                                                  ,PropertyCity = COALESCE(_PropertyCity,PropertyCity)
                                                  ,Latitude = COALESCE(_Latitude,Latitude)
                                                  ,Longitude = COALESCE(_Longitude,Longitude)
                                                  ,County = COALESCE(_County,County)
                                                  ,PropertyZip = COALESCE(_PropertyZip,PropertyZip)
                                                  ,OwnerName = COALESCE(_OwnerName,OwnerName)
                                                  ,OwnerMailAdrress1 = COALESCE(_OwnerMailAdrress1,OwnerMailAdrress1)
                                                  ,OwnerMailAdrress2 = COALESCE(_OwnerMailAdrress2,OwnerMailAdrress2)
                                                  ,OwnerCity = COALESCE(_OwnerCity,OwnerCity)
                                                  ,OwnerState = COALESCE(_OwnerState,OwnerState)
                                                  ,OwnerZip = COALESCE(_OwnerZip,OwnerZip)
                                                  ,CitizensTerritory = COALESCE(_CitizensTerritory,CitizensTerritory)
                                                  ,ConstructionType = COALESCE(_ConstructionType,ConstructionType)
                                                  ,NumberOfStories = COALESCE(_NumberOfStories,NumberOfStories)
                                                  ,Families = COALESCE(_Families,Families)
                                                  ,YearBuilt = COALESCE(_YearBuilt,YearBuilt)
                                                  ,YearofRoof = COALESCE(_YearofRoof,YearofRoof)
                                                  ,YearofRoofVerified = COALESCE(_YearofRoofVerified,YearofRoofVerified)
                                                  ,RoofMaterial = COALESCE(_RoofMaterial,RoofMaterial)
                                                  ,LivingArea = COALESCE(_LivingArea,LivingArea)
                                                  ,Occupancy = COALESCE(_Occupancy,Occupancy)
                                                  ,MonthsUnoccupied = COALESCE(_MonthsUnoccupied,MonthsUnoccupied)
                                                  ,PPC = COALESCE(_PPC,PPC)
                                                  ,BCEG = COALESCE(_BCEG,BCEG)
                                                  ,TypeOfResidence = COALESCE(_TypeOfResidence,TypeOfResidence)
                                                  ,FloorOfResidence = COALESCE(_FloorOfResidence,FloorOfResidence)
                                                  ,FloridaWindpool = COALESCE(_FloridaWindpool,FloridaWindpool)
                                                  ,DistancetoCoast = COALESCE(_DistancetoCoast,DistancetoCoast)
                                                  ,DistancetoSinkhole = COALESCE(_DistancetoSinkhole,DistancetoSinkhole)
                                                  ,DistancetoHydrant = COALESCE(_DistancetoHydrant,DistancetoHydrant)
                                                  ,DistancetoFireDepartment = COALESCE(_DistancetoFireDepartment,DistancetoFireDepartment)
                                                  ,FireDistrict = COALESCE(_FireDistrict,FireDistrict)
                                                  ,RespondingFireDepartment = COALESCE(_RespondingFireDepartment,RespondingFireDepartment)
                                                  ,CentralStationAlarm = COALESCE(_CentralStationAlarm,CentralStationAlarm)
                                                  ,AutomaticSprinklers = COALESCE(_AutomaticSprinklers,AutomaticSprinklers)
                                                  ,Claims = COALESCE(_Claims,Claims)
                                                  ,LocationWindSpeed = COALESCE(_LocationWindSpeed,LocationWindSpeed)
                                                  ,DesignWindSpeed = COALESCE(_DesignWindSpeed,DesignWindSpeed)
                                                  ,InternalPressureDesign = COALESCE(_InternalPressureDesign,InternalPressureDesign)
                                                  ,WindborneDebrisRegion = COALESCE(_WindborneDebrisRegion,WindborneDebrisRegion)
                                                  ,Terrain = COALESCE(_Terrain,Terrain)
                                                  ,RoofDeckAttachment = COALESCE(_RoofDeckAttachment,RoofDeckAttachment)
                                                  ,RoofCover = COALESCE(_RoofCover,RoofCover)
                                                  ,RooftoWallconnection = COALESCE(_RooftoWallconnection,RooftoWallconnection)
                                                  ,SecondaryWaterResistance = COALESCE(_SecondaryWaterResistance,SecondaryWaterResistance)
                                                  ,OpeningProtection = COALESCE(_OpeningProtection,OpeningProtection)
                                                  ,RoofShape = COALESCE(_RoofShape,RoofShape)
                                                  ,DesignExposure = COALESCE(_DesignExposure,DesignExposure)
                                                  ,ValueofHome = COALESCE(_ValueofHome,ValueofHome)
                                                  ,UnattachedStructure = COALESCE(_UnattachedStructure,UnattachedStructure)
                                                  ,NoPriorInsurance = COALESCE(_NoPriorInsurance,NoPriorInsurance)
                                                  ,Condemned = COALESCE(_Condemned,Condemned)
                                                  ,FarmsNRanches = COALESCE(_FarmsNRanches,FarmsNRanches)
                                                  ,BusinessExposure = COALESCE(_BusinessExposure,BusinessExposure)
                                                  ,FraternityorSorority = COALESCE(_FraternityorSorority,FraternityorSorority)
                                                  ,Vacant = COALESCE(_Vacant,Vacant)
                                                  ,FloodZone = COALESCE(_FloodZone,FloodZone)
                                                  ,ConstructedOverWater = COALESCE(_ConstructedOverWater,ConstructedOverWater)
                                                  ,BuiltonLandfills = COALESCE(_BuiltonLandfills,BuiltonLandfills)
                                                  ,HomeDayCare = COALESCE(_HomeDayCare,HomeDayCare)
                                                  ,Pool = COALESCE(_Pool,Pool)
                                                  ,ParcelSize = COALESCE(_ParcelSize,ParcelSize)
                                                  ,ImprovementQuality = COALESCE(_ImprovementQuality,ImprovementQuality)
                                                  ,ImprovementQualityDate = COALESCE(_ImprovementQualityDate,ImprovementQualityDate)
                                                  ,NumberOfBuildings = COALESCE(_NumberOfBuildings,NumberOfBuildings)
                                                  ,NumberOfUnits = COALESCE(_NumberOfUnits,NumberOfUnits)
                                                  ,Crime = COALESCE(_Crime,Crime)
                                                  ,PoliceID = COALESCE(_PoliceID,PoliceID)
                                                  ,FireID = COALESCE(_FireID,FireID)
                                                  ,CountyName = COALESCE(_CountyName,CountyName)
                                                  ,PropertyState = COALESCE(_PropertyState,PropertyState)
                                                  ,CentroidLatitude = COALESCE(_CentroidLatitude,CentroidLatitude)
                                                  ,CentroidLongitude = COALESCE(_CentroidLongitude,CentroidLongitude)
                                                  ,PlaTerritory = COALESCE(_PlaTerritory,PlaTerritory)
                                                  ,PlaTerritoryName = COALESCE(_PlaTerritoryName,PlaTerritoryName)
                                                  ,WindpoolTerritory = COALESCE(_WindpoolTerritory,WindpoolTerritory)
                                                  ,WindpoolTerritoryName = COALESCE(_WindpoolTerritoryName,WindpoolTerritoryName)
                                                  WHERE ParcelID = _ParcelID ;

    ELSEIF rowcount = 0 then

            INSERT INTO IGD
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
           ,WindpoolTerritoryName
          )
     VALUES
           (_ParcelID
           ,_PropertyLocationStreet1
           ,_PropertyLocationStreet2
           ,_PropertyCity
           ,_Latitude
           ,_Longitude
           ,_County
           ,_PropertyZip
           ,_OwnerName
           ,_OwnerMailAdrress1
           ,_OwnerMailAdrress2
           ,_OwnerCity
           ,_OwnerState
           ,_OwnerZip
           ,_CitizensTerritory
           ,_ConstructionType
           ,_NumberOfStories
           ,_Families
           ,_YearBuilt
           ,_YearofRoof
           ,_YearofRoofVerified
           ,_RoofMaterial
           ,_LivingArea
           ,_Occupancy
           ,_MonthsUnoccupied
           ,_PPC
           ,_BCEG
           ,_TypeOfResidence
           ,_FloorOfResidence
           ,_FloridaWindpool
           ,_DistancetoCoast
           ,_DistancetoSinkhole
           ,_DistancetoHydrant
           ,_DistancetoFireDepartment
           ,_FireDistrict
           ,_RespondingFireDepartment
           ,_CentralStationAlarm
           ,_AutomaticSprinklers
           ,_Claims
           ,_LocationWindSpeed
           ,_DesignWindSpeed
           ,_InternalPressureDesign
           ,_WindborneDebrisRegion
           ,_Terrain
           ,_RoofDeckAttachment
           ,_RoofCover
           ,_RooftoWallconnection
           ,_SecondaryWaterResistance
           ,_OpeningProtection
           ,_RoofShape
           ,_DesignExposure
           ,_ValueofHome
           ,_UnattachedStructure
           ,_NoPriorInsurance
           ,_Condemned
           ,_FarmsNRanches
           ,_BusinessExposure
           ,_FraternityorSorority
           ,_Vacant
           ,_FloodZone
           ,_ConstructedOverWater
           ,_BuiltonLandfills
           ,_HomeDayCare
           ,_Pool
           ,_ParcelSize
           ,_ImprovementQuality
           ,_ImprovementQualityDate
           ,_NumberOfBuildings
           ,_NumberOfUnits
           ,_Crime
           ,_PoliceID
           ,_FireID
           ,_Id
           ,_CountyName
           ,_PropertyState
           ,_CentroidLatitude
           ,_CentroidLongitude
           ,_PlaTerritory
           ,_PlaTerritoryName
           ,_WindpoolTerritory
           ,_WindpoolTerritoryName);

    ELSEIF rowCountDummy = 0 then
           INSERT INTO IGD_Dummy
           (
            ParcelID
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
           ,WindpoolTerritoryName
           ,Geometry)
     VALUES
           (_ParcelID
           ,_PropertyLocationStreet1
           ,_PropertyLocationStreet2
           ,_PropertyCity
           ,_Latitude
           ,_Longitude
           ,_County
           ,_PropertyZip
           ,_OwnerName
           ,_OwnerMailAdrress1
           ,_OwnerMailAdrress2
           ,_OwnerCity
           ,_OwnerState
           ,_OwnerZip
           ,_CitizensTerritory
           ,_ConstructionType
           ,_NumberOfStories
           ,_Families
           ,_YearBuilt
           ,_YearofRoof
           ,_YearofRoofVerified
           ,_RoofMaterial
           ,_LivingArea
           ,_Occupancy
           ,_MonthsUnoccupied
           ,_PPC
           ,_BCEG
           ,_TypeOfResidence
           ,_FloorOfResidence
           ,_FloridaWindpool
           ,_DistancetoCoast
           ,_DistancetoSinkhole
           ,_DistancetoHydrant
           ,_DistancetoFireDepartment
           ,_FireDistrict
           ,_RespondingFireDepartment
           ,_CentralStationAlarm
           ,_AutomaticSprinklers
           ,_Claims
           ,_LocationWindSpeed
           ,_DesignWindSpeed
           ,_InternalPressureDesign
           ,_WindborneDebrisRegion
           ,_Terrain
           ,_RoofDeckAttachment
           ,_RoofCover
           ,_RooftoWallconnection
           ,_SecondaryWaterResistance
           ,_OpeningProtection
           ,_RoofShape
           ,_DesignExposure
           ,_ValueofHome
           ,_UnattachedStructure
           ,_NoPriorInsurance
           ,_Condemned
           ,_FarmsNRanches
           ,_BusinessExposure
           ,_FraternityorSorority
           ,_Vacant
           ,_FloodZone
           ,_ConstructedOverWater
           ,_BuiltonLandfills
           ,_HomeDayCare
           ,_Pool
           ,_ParcelSize
           ,_ImprovementQuality
           ,_ImprovementQualityDate
           ,_NumberOfBuildings
           ,_NumberOfUnits
           ,_Crime
           ,_PoliceID
           ,_FireID
           ,_Id
           ,_CountyName
           ,_PropertyState
           ,_CentroidLatitude
           ,_CentroidLongitude
           ,_PlaTerritory
           ,_PlaTerritoryName
           ,_WindpoolTerritory
           ,_WindpoolTerritoryName);

    END if;
END ;
=======

CREATE PROCEDURE usp_SaveIGD( IN Id bigint,
                IN ParcelID varchar(26) ,
                IN PropertyLocationStreet1 varchar(40) ,
                IN PropertyLocationStreet2 varchar(40) ,
                IN PropertyCity varchar(40) ,
                IN Latitude decimal(10, 5) ,
                IN Longitude decimal(10, 5) ,
                IN County decimal(2, 0) ,
                IN PropertyZip decimal(5, 0) ,
                IN OwnerName varchar(30) ,
                IN OwnerMailAdrress1 varchar(40) ,
                IN OwnerMailAdrress2 varchar(40) ,
                IN OwnerCity varchar(40) ,
                IN OwnerState varchar(30) ,
                IN OwnerZip decimal(5, 0) ,
                IN CitizensTerritory varchar(50) ,
                IN ConstructionType varchar(50) ,
                IN NumberOfStories decimal(2, 0) ,
                IN Families char(10) ,
                IN YearBuilt decimal(4, 0) ,
                IN YearofRoof date ,
                IN YearofRoofVerified bit ,
                IN RoofMaterial varchar(50) ,
                IN LivingArea decimal(12, 0) ,
                IN Occupancy char(10) ,
                IN MonthsUnoccupied char(10) ,
                IN PPC char(10) ,
                IN BCEG char(10) ,
                IN TypeOfResidence varchar(50) ,
                IN FloorOfResidence decimal(4, 0) ,
                IN FloridaWindpool char(10) ,
                IN DistancetoCoast char(10) ,
                IN DistancetoSinkhole char(10) ,
                IN DistancetoHydrant char(10) ,
                IN DistancetoFireDepartment char(10) ,
                IN FireDistrict char(10) ,
                IN RespondingFireDepartment char(10) ,
                IN CentralStationAlarm char(10) ,
                IN AutomaticSprinklers char(10) ,
                IN Claims char(10) ,
                IN LocationWindSpeed char(10) ,
                IN DesignWindSpeed char(10) ,
                IN InternalPressureDesign char(10) ,
                IN WindborneDebrisRegion char(10) ,
                IN Terrain char(10) ,
                IN RoofDeckAttachment char(10) ,
                IN RoofCover char(10) ,
                IN RooftoWallconnection char(10) ,
                IN SecondaryWaterResistance char(10) ,
                IN OpeningProtection char(10) ,
                IN RoofShape varchar(50) ,
                IN DesignExposure char(10) ,
                IN ValueofHome decimal(12, 0) ,
                IN UnattachedStructure char(10) ,
                IN NoPriorInsurance char(10) ,
                IN Condemned char(10) ,
                IN FarmsNRanches char(10) ,
                IN BusinessExposure char(10) ,
                IN FraternityorSorority char(10) ,
                IN Vacant char(10) ,
                IN FloodZone char(10) ,
                IN ConstructedOverWater char(10) ,
                IN BuiltonLandfills char(10) ,
                IN HomeDayCare char(10) ,
                IN Pool bit ,
                IN ParcelSize decimal(12, 0) ,
                IN ImprovementQuality varchar(50) ,
                IN ImprovementQualityDate varchar(4) ,
                IN NumberOfBuildings decimal(4, 0) ,
                IN NumberOfUnits decimal(4, 0) ,
                IN Crime char(10) ,
                IN PoliceID decimal(3, 0) ,
                IN FireID decimal(3, 0) ,
                IN CountyName varchar(40) ,
                IN PropertyState varchar(2) ,
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

CREATE PROCEDURE usp_GetIGDbyKeyAndPaging(
	IN KeyVal varchar(50)
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

CREATE PROCEDURE usp_GetIGDbyPaging
 (
	IN CurrentPageNo int
	,IN PageSize int
  )
BEGIN


SELECT * FROM IGD 	LIMIT CurrentPageNo,PageSize;

END ;
