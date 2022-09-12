--MONTH	BOROUGH	BOROUGH_ID	COMMUNITYDISTRICT	REFUSETONSCOLLECTED	PAPERTONSCOLLECTED	MGPTONSCOLLECTED	RESORGANICSTONS	SCHOOLORGANICTONS	LEAVESORGANICTONS	XMASTREETONS

DROP TABLE garbage;

---- creating table for garbage
-----import data from DSNY_Monthly_Tonnage_Data_Tom.csv
CREATE TABLE garbage (
	MONTH text,
	BOROUGH text,
	BOROUGH_ID text,
	CD text,
	REFUSETONSCOLLECTED numeric,
	PAPERTONSCOLLECTED numeric,
	MGPTONSCOLLECTED numeric, 
	RESORGANICSTONS numeric,
	SCHOOLORGANICTONS numeric,
	LEAVESORGANICTONS numeric,
	XMASTREETONS NUMERIC
);

SELECT * FROM garbage;

SELECT *,
	
	LPAD(CD::text,2,'0') as lpad_CD FROM garbage
    ---LPAD(ga.CD::text, 2, '0')  -- Zero-pads to the left up to the length of 1
	---FROM garbage as ga;	

SELECT * FROM garbage;












