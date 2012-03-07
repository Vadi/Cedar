using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IGD.Client
{
    public class IGDDTO
    {
        
        public long? Id { get; set; }
        public string ParcelID { get; set; }
        public string PropertyLocationStreet1 { get; set; }
        public string PropertyLocationStreet2 { get; set; }
        public string PropertyCity { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public decimal? County { get; set; }
        public decimal? PropertyZip { get; set; }
        public string OwnerName { get; set; }
        public string OwnerMailAdrress1 { get; set; }
        public string OwnerMailAdrress2 { get; set; }
        public string OwnerCity { get; set; }
        public string OwnerState { get; set; }
        public decimal? OwnerZip { get; set; }
        public string CitizensTerritory { get; set; }
        public string ConstructionType { get; set; }
        public decimal? NumberOfStories { get; set; }
        public string Families { get; set; }
        public decimal? YearBuilt { get; set; }
        public DateTime? YearofRoof { get; set; }
        public bool? YearofRoofVerified { get; set; }
        public string RoofMaterial { get; set; }
        public decimal? LivingArea { get; set; }
        public string Occupancy { get; set; }
        public string MonthsUnoccupied { get; set; }
        public string PPC { get; set; }
        public string BCEG { get; set; }
        public string TypeOfResidence { get; set; }
        public decimal? FloorOfResidence { get; set; }
        public string FloridaWindpool { get; set; }
        public string DistancetoCoast { get; set; }
        public string DistancetoSinkhole { get; set; }
        public string DistancetoHydrant { get; set; }
        public string DistancetoFireDepartment { get; set; }
        public string FireDistrict { get; set; }
        public string RespondingFireDepartment { get; set; }
        public string CentralStationAlarm { get; set; }
        public string AutomaticSprinklers { get; set; }
        public string Claims { get; set; }
        public string LocationWindSpeed { get; set; }
        public string DesignWindSpeed { get; set; }
        public string InternalPressureDesign { get; set; }
        public string WindborneDebrisRegion { get; set; }
        public string Terrain { get; set; }
        public string RoofDeckAttachment { get; set; }
        public string RoofCover { get; set; }
        public string RooftoWallconnection { get; set; }
        public string SecondaryWaterResistance { get; set; }
        public string OpeningProtection { get; set; }
        public string RoofShape { get; set; }
        public string DesignExposure { get; set; }
        public decimal? ValueofHome { get; set; }
        public string UnattachedStructure { get; set; }
        public string NoPriorInsurance { get; set; }
        public string Condemned { get; set; }
        public string FarmsNRanches { get; set; }
        public string BusinessExposure { get; set; }
        public string FraternityorSorority { get; set; }
        public string Vacant { get; set; }
        public string FloodZone { get; set; }
        public string ConstructedOverWater { get; set; }
        public string BuiltonLandfills { get; set; }
        public string HomeDayCare { get; set; }
        public bool? Pool { get; set; }
        public decimal? ParcelSize { get; set; }
        public string ImprovementQuality { get; set; }
        public string ImprovementQualityDate { get; set; }
        public decimal? NumberOfBuildings { get; set; }
        public decimal? NumberOfUnits { get; set; }
        public string Crime { get; set; }
        public decimal? PoliceID { get; set; }
        public decimal? FireID { get; set; }
        public string CountyName { get; set; }
        public double X { get; set; }
        public double Y { get; set; }
        public string PropertyState { get; set; }
        public decimal? CentroidLatitude { get; set; }
        public decimal? CentroidLongitude { get; set; }
        public decimal? PlaTerritory { get; set; }
        public decimal? WindpoolTerritory { get; set; }
        public string PlaTerritoryName { get; set; }
        public string WindpoolTerritoryName { get; set; }
        public string Geometry { get; set; }  
 

    }
}
