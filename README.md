# Rats Sightings in NYC: Data Analysis 
Eliza Buffington, Luke Gates, Tom Leonard, and Ana Moreira

![pizza-rat](https://user-images.githubusercontent.com/102329557/186464022-6beb59dc-43e6-4ab1-b51f-3a1c1c83b1c5.gif)


## GitHub Organization & Communication 
### GitHub Organization
**Main Branch** 


**Other Branches**
* Eliza Buffington: 
* Luke Gates: 
* Tom Leonard:
* Ana Moreira: 

### Communication Protocols 
The main line of communication is our #rats-of-nyc slack channel. We also have a folder on google drive that holds a google doc for our collective notes and a google slides for the draft presentation. 

## Overview of Project
### Purpose of Project
In a Gothamist news article, [Rodents on the rise: How NYC is losing the rat battle](https://gothamist.com/news/rodents-on-the-rise-how-nyc-is-losing-the-rat-battle?fbclid=IwAR0pbcNAk-yfgqFUHerhvtJKHcjrvVLESGORmzxSIhFQwtooGSHg9uG7dXU), Jake Offenhartz asserts that complaints of rat sightings in 2021 increased by more than two-thirds compared to the same period in 2019. Offenhartz suggests that a citywide temporary halt of pest control inspections at the start of the pandemic may be a significant factor of this increase in reported rat sightings more than two years after the start of the COVID-19 pandemic. 

The COVID-19 pandemic also coincided with a racial reckoning which left many wondering how the City would grapple with structural racism. As New York City tackles its rat problems, what role do the socioeconomic factors the of its residents play? The Gothamist article goes on to quoute Sandy Nurse, the chair of the City Council’s Sanitation Committee, who called for “a more aggressive rat mitigation strategy, particularly in areas with high complaints, like public housing areas.” 

Is Nurse's claim that areas with high complaints are coming from areas like public housing or are wealthier zip codes more likely to file a complaint? To improve the city’s rat mitigation efforts in an equitable way, we must first understand the relationship between reported rat sightings and socioeconomic factors.  

### Questions Project Hopes to Answer 
* Is there a socioeconomic relationship between rat sightings and boroughs? zip codes? 
* Is there a socioeconomic relationship between rat sightings and neighborhood income? cost of rent? (OTHER FACTORS EVALUATED) 

 
### Data Sources
#### [Rat Sightings](https://data.cityofnewyork.us/Social-Services/Rat-Sightings/3q43-55fe)
This database contains over 200,000 rows of data from all 311 Service Requests from 2010 to present and is automatically updated daily on NYC Open Data. NYC Open Data, a hub of analytics in New York City, is a partnership between the Mayor’s Office of Data Analytics and the Department of Information Technology and Telecommunications which contains information that is collected and maintained by the City government. 

#### [Socioeconomic Factors ](https://furmancenter.org/stateofthecity/view/citywide-and-borough-data)
The State of New York City’s Housing and Neighborhoods report, published annually by the NYU Furman Center, provides a compendium of data and analysis about New York City’s housing, land use, demographics, and quality of life for each borough and each of the city’s 59 community districts.


---
## Machine Learning Model 
The final machine learning model will be a regression model.  This model will take in the reported rat sightings and socioecnomic factors from the database and output an increase or decrease in reported rat sightings based on the socioecnomic factors. 
Type of Factors: 
* trash tonage data
* income 
* cost of rent


---
## Database Integration
Merge Zipcode or borough 
target : Sum of reports 
features: socioeconomic factors (income, rent, etc)

Team members will be expected to present a provisional database that stands in for the final database and accomplishes the following:

Sample data that mimics the expected final database structure or schema
Draft machine learning model is connected to the provisional database
In a SQL database we will 

The team members are expected to present a fully integrated database, including the following:
Database stores static data for use during the project
Database interfaces with the project in some format (e.g., scraping updates the database)
Includes at least two tables (or collections, if using MongoDB)
Includes at least one join using the database language (not including any joins in Pandas)
Includes at least one connection string (using SQLAlchemy or PyMongo)

