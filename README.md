# common vector datasets

I made this repo to keep copies of geojson datasets that I use frequently for plotting:
* political boundaries
* ...

**Generate new geojsons by running the shell script [`gen-geojson.sh`](gen-geojson.sh):**
```shell
./gen-geojson.sh
```
The script will download the latest copies of some common vector datasets and convert to geojson, reducing vertices (`-simplify <tolerance>` option for `ogr2ogr`) in some cases (check the script).

**You need gdal/ogr binary tools. If you're on ubuntu:**
```
sudo apt-get install gdal-bin
``` 


**The script uses these commands:**

1. Download shapefiles from [census.gov](www.census.gov) and [naturalearth.org](www.naturalearth.org)

```shell
curl -O https://www2.census.gov/geo/tiger/GENZ2018/shp/cb_2018_us_nation_5m.zip
```

2. Convert to geojson with `ogr2ogr` using options to transform to WGS84 (`-t_srs EPSG:4326`) and reduce vertices (douglas-peucker; `-simplify 0.001`)

```shell
ogr2ogr -f geojson -simplify 0.001 -t_srs EPSG:4326 cb_2018_us_nation_5m.json /vsizip/cb_2018_us_nation_5m.zip
```
