#!/bin/bash

echo ----- DOWNLOADING -----

# echo ---- NATURAL EARTH

# echo countries
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip

# echo details 
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_sovereignty.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_map_units.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_scale_rank.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_tiny_countries.zip

# echo boundary lines
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_pacific_groupings.zip

# echo states, provinces
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_1_states_provinces.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_1_states_provinces_lakes.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_1_states_provinces_lines.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_1_states_provinces_shp_scale_rank.zip

# echo populated places
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_populated_places.zip
# curl -O https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_populated_places_simple.zip

echo --- US TIGER

echo boundary
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_5m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_20m.zip

echo county
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_5m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_20m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_500k.zip

echo division
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_5m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_20m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_500k.zip

echo region
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_5m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_20m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_500k.zip

echo state
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_5m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_20m.zip
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_500k.zip

echo ----- MAKING GEOJSONS -----

# echo --- NATURAL EARTH

# echo countries
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_countries.json /vsizip/ne_110m_admin_0_countries.zip

# echo details
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_sovereignty.json /vsizip/ne_110m_admin_0_sovereignty.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_map_units.json /vsizip/ne_110m_admin_0_map_units.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_scale_rank.json /vsizip/ne_110m_admin_0_scale_rank.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_tiny_countries.json /vsizip/ne_110m_admin_0_tiny_countries.zip

# echo boundary lines
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_boundary_lines_land.json /vsizip/ne_110m_admin_0_boundary_lines_land.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_0_pacific_groupings.json /vsizip/ne_110m_admin_0_pacific_groupings.zip

# echo states, provinces
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_1_states_provinces.json /vsizip/ne_110m_admin_1_states_provinces.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_1_states_provinces_lakes.json /vsizip/ne_110m_admin_1_states_provinces_lakes.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_1_states_provinces_lines.json /vsizip/ne_110m_admin_1_states_provinces_lines.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_admin_1_states_provinces_shp_scale_rank.json /vsizip/ne_110m_admin_1_states_provinces_shp_scale_rank.zip

# echo populated places
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_populated_places.json /vsizip/ne_110m_populated_places.zip
# ogr2ogr -f geojson -t_srs EPSG:4326 ne_110m_populated_places_simple.json /vsizip/ne_110m_populated_places_simple.zip

echo --- US TIGER

echo boundary
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_nation_5m.json /vsizip/cb_2018_us_nation_5m.zip
ogr2ogr -f geojson -simplify 0.01 -t_srs EPSG:4326 cb_2018_us_nation_20m.json /vsizip/cb_2018_us_nation_20m.zip

echo county
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_county_5m.json /vsizip/cb_2018_us_county_5m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_county_20m.json /vsizip/cb_2018_us_county_20m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_county_500k.json /vsizip/cb_2018_us_county_500k.zip

echo division
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_division_5m.json /vsizip/cb_2018_us_division_5m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_division_20m.json /vsizip/cb_2018_us_division_20m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_division_500k.json /vsizip/cb_2018_us_division_500k.zip

echo region
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_region_5m.json /vsizip/cb_2018_us_region_5m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_region_20m.json /vsizip/cb_2018_us_region_20m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_region_500k.json /vsizip/cb_2018_us_region_500k.zip

echo state
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_state_5m.json /vsizip/cb_2018_us_state_5m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_state_20m.json /vsizip/cb_2018_us_state_20m.zip
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_state_500k.json /vsizip/cb_2018_us_state_500k.zip