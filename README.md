# get common vector data

run the shell script `gen-geojson.sh` to make new json files from [US census](#) and [natural earth](#) data:
```shell
./gen-geojson.sh
```

must have gdal/ogr binary tools installed. if you're on ubuntu:
```
sudo apt-get install gdal-bin
``` 
---
The script does the following:

1. downloads tiger shapefiles from census.gov 

```shell
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_5m.zip
```

2. converts to geojson in `-t_srs EPSG:4326` with `ogr2ogr`, reducing vertices (douglas-peucker) by factor `-simplify 0.001`

```shell
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_nation_5m.json /vsizip/cb_2018_us_nation_5m.zip
```
