-- Drop table if exists
DROP TABLE IF EXISTS Electric_Vehicle_Population_Data;

DROP TABLE IF EXISTS EV_Alternative_Fuel_Charging_Stat;

DROP TABLE IF EXISTS ghgp_data_carbon_2022;


-- Create new tables to import data
CREATE TABLE  ghgp_data_carbon_2022 (
	Facility_Id	VARCHAR NOT NULL PRIMARY KEY, 
	City VARCHAR NOT NULL,
	States VARCHAR NOT NULL,
	Zip_Code VARCHAR NOT NULL,
	Address VARCHAR NOT NULL,
	County VARCHAR NOT NULL,
	Industry_Type_Sectors VARCHAR NOT NULL,
	Total_reported_direct_emissions DECIMAL NOT NULL,
	CO2_emissions_nonbiogenic DECIMAL NOT NULL,
	Methane_CH4_emissions DECIMAL NOT NULL
);

-- Create new tables to import data
CREATE TABLE Electric_Vehicle_Population_Data (
	VIN	VARCHAR NOT NULL PRIMARY KEY, 
	County VARCHAR NOT NULL,
	City VARCHAR NOT NULL,
	States VARCHAR NOT NULL,
	Zip_Code VARCHAR NOT NULL,
	Model_Year INT NOT NULL,
	Make VARCHAR NOT NULL,
	Model VARCHAR NOT NULL,
	Electric_Vehicle_Type VARCHAR NOT NULL,
	CAFV_Eligibility VARCHAR NOT NULL,
	Electric_Range INT NOT NULL,
	Base_MSRP INT NOT NULL,
	Electric_Utility VARCHAR NOT NULL
);

-- Create new tables to import data
CREATE TABLE   EV_Alternative_Fuel_Charging_Stat (
	Unique_id INT Not NULL PRIMARY KEY,
	Station_Name VARCHAR NOT NULL, 
	Street_Address VARCHAR NOT NULL,
	City VARCHAR NOT NULL,
	States VARCHAR NOT NULL,
	Zip_Code VARCHAR NOT NULL,
	Groups_With_Access_Code VARCHAR NOT NULL,
	Access_Days_Time VARCHAR NOT NULL,
	Geocode_Status VARCHAR NOT NULL,
	Latitude VARCHAR NOT NULL,
	Longitude VARCHAR NOT NULL,
	Date_Last_Confirmed DATE NOT NULL,
	Updated_At VARCHAR NOT NULL,
	Open_Date DATE NOT NULL
);
