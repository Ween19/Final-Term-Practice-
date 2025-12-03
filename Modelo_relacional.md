Country (code int, name str, capital str, province str, area float, population int)

Economy(economy_id int, GDP float, agriculture_GDP float, service_GDP float , industry_GDP float , inflation float , unemployment int, FK code int) 

Politics(Politics_id int, independence day, wasdependent text, dependent int, government text, FK  code int)

Population(population_id int, population-growth int, infant-mortality int,  FK  code int )

Countrypops(countrypops_id int, population int, year int, FK  code int )

CountryLocalName(localname text , FK  code int)

Language(name_language str, percentage float, FK  code int )

Religion(name_religion str, percentage float, FK  code int)

EthnicGroup(name_EthnicGroup str, percentage float, FK  code int)

Borders(country1 text  , Country 2 text , length float,  FK  code int)

Continent(name_continent text, area float)

Encompasses(percentage float, FK(code int, name_continent text) )

City(name_city text, population long, elevation float, latitude float, longitude float, FK(code int, province_name text) )

Citypops(population long, year int,  FK(code int, province_name text, name_city text) )

CityLocalName(localname_city text, FK(code int, province_name text, name_city text) )

Province(province_name text, area float, population long, capital str, capprov str, FK  code int)

Provpops(population long, year int,  FK(code int, province_name text) )

ProvinceLocalName(localname_province text, FK(code int, province_name text) )

Organization( abbreviation str, name_organization text, established day , FK(code int, province_name text, name_city text) )

isMember(type text, FK(code int,  abbreviation str)

Lake(name_lake text, area float, depth float, elevation float, river float, type str, coordinates float)

Sea( name_sea text, depth float, area float)

River(name_river text, length float, area float, river_flows float, estuary float, estuaryElevation float, source float, sourceElevation float, FK(name_lake text,  name_sea text, name_mountain text ) )

RiverThrough(FK name_lake text, name_river text )

Mountain(name_mountain text, mountains str, elevation float, type str, coordinates float )

Island(name_island  text, islands str, area float , elevation float, type str, coordinates float )

Desert(name_desert  text, area float , coordinates float )

geo_Mountain(FK name_mountain text, code int, province_name text )

mergesWith(sea1 text , sea2 text , FK name_sea text)

located(FK  code int, province_name text, name_city text, name_river text, name_lake text,  name_sea text)

locatedOn( FK code int, province_name text, name_city text, name_island  text)

islandIn( FK name_island  text,  name_river text, name_lake text,  name_sea text)

MountainOnIsland(FK name_mountain text, name_island  text)

RiverOnIsland(FK name_island  text,  name_river text)

LakeOnIsland(FK name_island  text,   name_lake text)

Airport(name_airport text, type text, elevation float , latitude float , longitude float ,  FK (code int, province_name text, name_city text) )