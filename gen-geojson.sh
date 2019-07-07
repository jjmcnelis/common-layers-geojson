
#############################################################################
# US 

# # boundary
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_20m.zip

# # city
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_09_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_13_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_18_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_20_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_21_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_30_concity_500k.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_47_concity_500k.zip

# # county
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_500k.zip

# # division
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_500k.zip

# # region
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_500k.zip

# # state
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_500k.zip


#############################################################################################
# make geojsons

# boundary
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_nation_5m.json /vsizip/cb_2018_us_nation_5m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_nation_20m.json /vsizip/cb_2018_us_nation_20m.zip

# city
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_09_concity_500k.json /vsizip/cb_2018_09_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_13_concity_500k.json /vsizip/cb_2018_13_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_18_concity_500k.json /vsizip/cb_2018_18_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_20_concity_500k.json /vsizip/cb_2018_20_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_21_concity_500k.json /vsizip/cb_2018_21_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_30_concity_500k.json /vsizip/cb_2018_30_concity_500k.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_47_concity_500k.json /vsizip/cb_2018_47_concity_500k.zip

# county
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_county_5m.json /vsizip/cb_2018_us_county_5m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_county_20m.json /vsizip/cb_2018_us_county_20m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_county_500k.json /vsizip/cb_2018_us_county_500k.zip

# division
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_division_5m.json /vsizip/cb_2018_us_division_5m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_division_20m.json /vsizip/cb_2018_us_division_20m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_division_500k.json /vsizip/cb_2018_us_division_500k.zip

# region
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_region_5m.json /vsizip/cb_2018_us_region_5m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_region_20m.json /vsizip/cb_2018_us_region_20m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_region_500k.json /vsizip/cb_2018_us_region_500k.zip

# state
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_state_5m.json /vsizip/cb_2018_us_state_5m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_state_20m.json /vsizip/cb_2018_us_state_20m.zip
ogr2ogr -f geojson -t_srs EPSG:4326 cb_2018_us_state_500k.json /vsizip/cb_2018_us_state_500k.zip

