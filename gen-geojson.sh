#!/bin/bash

echo ##### US #####

echo -- downloading

# echo boundary
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_20m.zip

# echo county
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_county_500k.zip

# echo division
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_division_500k.zip

# echo region
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_region_500k.zip

# echo state
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_5m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_20m.zip
# curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_state_500k.zip

echo -- making geojsons

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
