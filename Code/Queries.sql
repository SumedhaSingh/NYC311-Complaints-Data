 CREATE TABLE "NYC_COMPLAINTS_2014" 
   (	
    "CREATED_DATE" VARCHAR2(100 BYTE) primary key, 
	"AGENCY" VARCHAR2(50 BYTE), 
	"COMPLAINT_TYPE" VARCHAR2(100 BYTE), 
	"DESCRIPTOR" VARCHAR2(200 BYTE), 
	"LOCATION_TYPE" VARCHAR2(100 BYTE), 
	"INCIDENT_ZIP" VARCHAR2(10 BYTE), 
	"INCIDENT_ADDRESS" VARCHAR2(100 BYTE), 
	"CITY" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(100 BYTE), 
	"BOROUGH" VARCHAR2(100 BYTE), 
	"DAY_TYPE" VARCHAR2(100 BYTE)
   ) ;
   
   
    CREATE TABLE "NYC_WEATHER" 
   (	
    "BOROUGH" VARCHAR2(50 BYTE) primary key, 
	"EST" VARCHAR2(50 BYTE) primary key, 
	"MAX_TEMPERATUREF" VARCHAR2(50 BYTE), 
	"MEAN_TEMPERATUREF" VARCHAR2(50 BYTE), 
	"MIN_TEMPERATUREF" VARCHAR2(50 BYTE), 
	"MAX_DEW_POINTF" VARCHAR2(50 BYTE), 
	"MEANDEW_POINTF" VARCHAR2(50 BYTE), 
	"MIN_DEWPOINTF" VARCHAR2(50 BYTE), 
	"MAX_HUMIDITY" VARCHAR2(50 BYTE), 
	"MEAN_HUMIDITY" VARCHAR2(50 BYTE), 
	"MIN_HUMIDITY" VARCHAR2(50 BYTE), 
	"MAX_SEA_LEVEL_PRESSUREIN" VARCHAR2(50 BYTE), 
	"MEAN_SEA_LEVEL_PRESSUREIN" VARCHAR2(50 BYTE), 
	"MIN_SEA_LEVEL_PRESSUREIN" VARCHAR2(50 BYTE), 
	"MAX_VISIBILITYMILES" VARCHAR2(50 BYTE), 
	"MEAN_VISIBILITYMILES" VARCHAR2(50 BYTE), 
	"MIN_VISIBILITYMILES" VARCHAR2(50 BYTE), 
	"MAX_WIND_SPEEDMPH" VARCHAR2(50 BYTE), 
	"MEAN_WIND_SPEEDMPH" VARCHAR2(50 BYTE), 
	"MAX_GUST_SPEEDMPH" VARCHAR2(50 BYTE), 
	"PRECIPITATIONIN" VARCHAR2(50 BYTE), 
	"CLOUDCOVER" VARCHAR2(50 BYTE), 
	"EVENTS" VARCHAR2(50 BYTE), 
	"WINDDIRDEGREES" VARCHAR2(50 BYTE)
   ) ;
   
   
   
   CREATE TABLE "SYSTEM"."NYC_PLUTO" 
   (	"BOROUGH" VARCHAR2(100 BYTE), 
	"BLOCK_ID" VARCHAR2(100 BYTE), 
	"LOT" VARCHAR2(100 BYTE), 
	"CD" VARCHAR2(100 BYTE), 
	"CT2010" VARCHAR2(100 BYTE), 
	"CB2010" VARCHAR2(100 BYTE), 
	"SCHOOLDIST" VARCHAR2(100 BYTE), 
	"COUNCIL" VARCHAR2(100 BYTE), 
	"ZIPCODE" VARCHAR2(100 BYTE), 
	"FIRECOMP" VARCHAR2(100 BYTE), 
	"POLICEPRCT" VARCHAR2(100 BYTE), 
	"HEALTHAREA" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"ZONEDIST1" VARCHAR2(100 BYTE), 
	"ZONEDIST2" VARCHAR2(100 BYTE), 
	"ZONEDIST3" VARCHAR2(100 BYTE), 
	"ZONEDIST4" VARCHAR2(100 BYTE), 
	"OVERLAY1" VARCHAR2(100 BYTE), 
	"OVERLAY2" VARCHAR2(100 BYTE), 
	"SPDIST1" VARCHAR2(100 BYTE), 
	"SPDIST2" VARCHAR2(100 BYTE), 
	"LTDHEIGHT" VARCHAR2(100 BYTE), 
	"ALLZONING1" VARCHAR2(100 BYTE), 
	"ALLZONING2" VARCHAR2(100 BYTE), 
	"SPLITZONE" VARCHAR2(100 BYTE), 
	"BLDGCLASS" VARCHAR2(100 BYTE), 
	"LANDUSE" VARCHAR2(100 BYTE), 
	"EASEMENTS" VARCHAR2(100 BYTE), 
	"OWNERTYPE" VARCHAR2(100 BYTE), 
	"OWNERNAME" VARCHAR2(100 BYTE), 
	"LOTAREA" VARCHAR2(100 BYTE), 
	"BLDGAREA" VARCHAR2(100 BYTE), 
	"COMAREA" VARCHAR2(100 BYTE), 
	"RESAREA" VARCHAR2(100 BYTE), 
	"OFFICEAREA" VARCHAR2(100 BYTE), 
	"RETAILAREA" VARCHAR2(100 BYTE), 
	"GARAGEAREA" VARCHAR2(100 BYTE), 
	"STRGEAREA" VARCHAR2(100 BYTE), 
	"FACTRYAREA" VARCHAR2(100 BYTE), 
	"OTHERAREA" VARCHAR2(100 BYTE), 
	"AREASOURCE" VARCHAR2(100 BYTE), 
	"NUMBLDGS" VARCHAR2(100 BYTE), 
	"NUMFLOORS" VARCHAR2(100 BYTE), 
	"UNITSRES" VARCHAR2(100 BYTE), 
	"UNITSTOTAL" VARCHAR2(100 BYTE), 
	"LOTFRONT" VARCHAR2(100 BYTE), 
	"LOTDEPTH" VARCHAR2(100 BYTE), 
	"BLDGFRONT" VARCHAR2(100 BYTE), 
	"BLDGDEPTH" VARCHAR2(100 BYTE), 
	"EXT" VARCHAR2(100 BYTE), 
	"PROXCODE" VARCHAR2(100 BYTE), 
	"IRRLOTCODE" VARCHAR2(100 BYTE), 
	"LOTTYPE" VARCHAR2(100 BYTE), 
	"BSMTCODE" VARCHAR2(100 BYTE), 
	"ASSESSLAND" VARCHAR2(100 BYTE), 
	"ASSESSTOT" VARCHAR2(100 BYTE), 
	"EXEMPTLAND" VARCHAR2(100 BYTE), 
	"EXEMPTTOT" VARCHAR2(100 BYTE), 
	"YEARBUILT" VARCHAR2(100 BYTE), 
	"BUILTCODE" VARCHAR2(100 BYTE), 
	"YEARALTER1" VARCHAR2(100 BYTE), 
	"YEARALTER2" VARCHAR2(100 BYTE), 
	"HISTDIST" VARCHAR2(100 BYTE), 
	"LANDMARK" VARCHAR2(100 BYTE), 
	"BUILTFAR" VARCHAR2(100 BYTE), 
	"RESIDFAR" VARCHAR2(100 BYTE), 
	"COMMFAR" VARCHAR2(100 BYTE), 
	"FACILFAR" VARCHAR2(100 BYTE), 
	"BOROCODE" VARCHAR2(100 BYTE), 
	"BBL" VARCHAR2(100 BYTE), 
	"CONDONO" VARCHAR2(100 BYTE), 
	"TRACT2010" VARCHAR2(100 BYTE), 
	"XCOORD" VARCHAR2(100 BYTE), 
	"YCOORD" VARCHAR2(100 BYTE), 
	"ZONEMAP" VARCHAR2(100 BYTE), 
	"ZMCODE" VARCHAR2(100 BYTE), 
	"SANBORN" VARCHAR2(100 BYTE), 
	"TAXMAP" VARCHAR2(100 BYTE), 
	"EDESIGNUM" VARCHAR2(100 BYTE), 
	"APPBBL" VARCHAR2(100 BYTE), 
	"APPDATE" VARCHAR2(100 BYTE), 
	"PLUTOMAPID" VARCHAR2(100 BYTE), 
	"VERSION_NO" VARCHAR2(100 BYTE), 
	"COLUMN1" VARCHAR2(100 BYTE), 
	"COLUMN2" VARCHAR2(100 BYTE), 
	"COLUMN3" VARCHAR2(100 BYTE)
   );
   
   
--preapare data to classify on day type

create table US_Holidays
(
id varchar(100),
holiday_date varchar(100),
holiday_name varchar(100)
);


Insert into US_Holidays values(1,'01-01-2014','New Years Day');
Insert into US_Holidays values(2,'01-20-2014','Dr. Martin Luther King Jr. Day');
Insert into US_Holidays values(3,'02-12-2014','Lincolns Birthday');
Insert into US_Holidays values(4,'02-17-2014','Washingtons Birthday');
Insert into US_Holidays values(5,'05-26-2014','Memorial Day');
Insert into US_Holidays values(6,'07-04-2014','Independence Day');
Insert into US_Holidays values(7,'09-01-2014','Labor Day');
Insert into US_Holidays values(8,'10-13-2014','Columbus Day');
Insert into US_Holidays values(9,'11-04-2014','Election Day');
Insert into US_Holidays values(10,'11-11-2014','Veterans Day');
Insert into US_Holidays values(11,'11-27-2014','Thanksgiving Day');
Insert into US_Holidays values(12,'12-25-2014','Christmas Day');



update complaints_2014 set day_type= case 
when convert(date,created_date) in (select convert(date,holiday_date) from US_Holidays) then 'Holiday'
when created_day in ('Monday','Tuesday','Wednesday','Thursday','Friday') then 'Weekday'
when created_day in ('Saturday','Sunday') then 'Weekend'
end




--to correlate with weather
select n.created_date, n.complaint_type, w.est, w.mean_temperaturef from nyc_complaints_2014 n , nyc_weather w 
where to_date(n.created_date,'MM/DD/YYYY HH:MI:SS AM')= to_date(w.est,'YYYY-MM-DD')  
and n.borough= w.borough order by w.mean_temperaturef desc

select n.complaint_type, w.mean_temperaturef, count(*) from nyc_complaints_2014 n , nyc_weather w 
where to_date(n.created_date,'MM/DD/YYYY HH:MI:SS AM')= to_date(w.est,'YYYY-MM-DD')  
and n.borough= w.borough group by n.complaint_type, w.mean_temperaturef order by w.mean_temperaturef desc , count(*) desc


--To classify data according to  severity

select distinct n.complaint_type,s.severity from nyc_complaints_2014 n, complaint_severity s 
where s.complaint_type=n.complaint_type and to_char(to_date(n.created_date,'MM/DD/YYYY HH:MI:SS AM'),'MM')= to_char(sysdate,'MM') 
order by s.severity desc

