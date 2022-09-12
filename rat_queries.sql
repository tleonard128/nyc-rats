DROP TABLE nyc_rats;
--creating table with raw nyc rats data
CREATE TABLE nyc_rats (
    unique_key INT NOT NULL,
    created_date varchar,
    closed_date varchar,
    agency varchar,
    agency_name varchar,
    complaint_type varchar,
    descriptor_ varchar,
    location_type varchar,
    incident_address varchar,
    street_name varchar,
    cross_street varchar,
    cross_street_2 varchar,
    intersection_ varchar,
    intersection_2 varchar,
    address_type varchar,
    city varchar,
    landmark varchar,
    facility_type varchar,
    status varchar,
    due_date varchar,
    resolution_update_date varchar,
    community_district varchar,
    borough varchar,
    x_coordinate INT,
    y_coordinate INT,
    park_facility varchar,
    park_borough varchar,
    incident_zip INT,
    PRIMARY KEY (unique_key)
);

--checking data for rat data import 
SELECT * 
FROM nyc_rats
LIMIT 10;

DROP TABLE trash_tonnage;
--creating table with raw tonnage data
CREATE TABLE trash_tonnage (
    borough_id INT,
    community_district INT,
    month_ varchar,
    refuse_tons_collected DECIMAL,
    paper_tons_collected DECIMAL,
    mgp_tons_collected DECIMAL,
    res_organic_tons_collected DECIMAL,
    school_organic_tons DECIMAL,
    leaves_organic_tons DECIMAL,
    xmas_tree_tons DECIMAL
)

--checking data for trash tonnage import
SELECT * 
FROM trash_tonnage
LIMIT 10;

CREATE TABLE borough_districts(
    community_district varchar ,
    borough_id INT,
    community_district INT,
    PRIMARY KEY (commuity_district),
    FOREIGN KEY (borough_id),
    FOREIGN KEY (community_district)
    )

SELECT * FROM rats_by_community_board
LIMIT 10;

-- Creating a table for rat counts by community district
DROP TABLE rats_by_community_board;
CREATE TABLE rats_by_community_board AS
    SELECT community_district, count(community_district) as rat_count
	FROM nyc_rats
	GROUP BY community_district
	ORDER BY community_district;
    
--checking data for rats by community board
SELECT * FROM rats_by_community_board
LIMIT 10;

--merging the borough_id and community_district to one for a join key in trash_tonnage
SELECT CONCAT(borough_id, community_district) as community_board
FROM trash_tonnage;

-- getting the boroughs to replace
SELECT DISTINCT borough
FROM nyc_rats;

-- replacing the borough name with the corresponding community district number
SELECT community_board REPLACE ('MANHATTAN', 'MANHATTAN', '1'),
REPLACE ('BRONX', 'BRONX', '2'),
REPLACE ('BROOKLYN', 'BROOKLYN', '3'),
REPLACE ('QUEENS', 'QUEENS', '4'),
REPLACE ('STATEN ISLAND', 'STATEN ISLAND', '5')
FROM nyc_rats;

-- grabbing trash data by district
SELECT borough_id, community_district,
SUM (refuse_tons_collected),
SUM(paper_tons_collected),
SUM(mgp_tons_collected),
SUM(res_organic_tons_collected),
SUM(school_organic_tons),
SUM(leaves_organic_tons),
SUM(xmas_tree_tons)
FROM trash_tonnage
GROUP BY borough_id, 
community_district
ORDER BY borough_id, community_district

--NEED TO Create the links to a pivot table, the nyc_rats data will pull out most of w
CREATE TABLE borough_districts(
    community_district varchar ,
    borough_id INT,
    community_board INT,
    PRIMARY KEY (community_district),
    FOREIGN KEY (borough_id) REFERENCES trash_tonnage(borough_id),
    FOREIGN KEY (community_board) REFERENCES trash_tonnage(community_district)
    )

SELECT community_board, count
CASE WHEN count > 2500 then 1
ELSE 0
END
FROM rats_by_community_board;
    
SELECT DISTINCT 
    
UPDATE TABLE nyc_rats
SET rat_sightings =
	CASE
		WHEN rat_sightings > 2300 THEN rat_sightings = 1
		ELSE rat_sightings = 0
		END;

