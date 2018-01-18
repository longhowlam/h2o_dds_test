
## install dataiku api node
dataiku-dss-4.1.2/installer.sh -t api -d dataikuapu -p 11000 -l dataiku.lic

## start api node
dataikuapu/bin/dss start

## aanmaken van een api enpoint
./dataikuapu/bin/apinode-admin service-create boostedhouse

## deleten van een api
./dataikuapu/bin/apinode-admin service-delete boostedhouse

## importeerd het package dat gemaakt is in DSS
./dataikuapu/bin/apinode-admin service-import-generation boostedhouse /home/longhowlam/dataiku_packages/boostedhouse_v1.zip

## activate api
./dataikuapu/bin/apinode-admin service-switch-to-newest boostedhouse


./dataikuapu/bin/apinode-admin services-list
./dataikuapu/bin/apinode-admin metrics-get --help

./dataikuapu/bin/apinode-admin -h



### aanroep van een apicall
http://145.131.21.163:11000/public/api/v1/huisprijs/huisprijs_endpoint/predict-simple?PC2=45&Oppervlakte=149

https://doc.dataiku.com/dss/api/4.1/apinode-user/

http://145.131.21.163:11000/public/api/v1/huisprijs/huisprijs_endpoint/predict


### via curl aanroep van dataiku api model
curl -d '
{
   "features": {
      "prijs": 247500,
      "PC2": "11",
      "kamers": 6,
      "type": "Tussenwoning",
      "oppervlakte": 190,
      "bouwjaar": 1999,
      "perceel_oppervlakte": 185
   }
}' -H "Content-Type: application/json" -X POST http://145.131.21.163:11000/public/api/v1/boostedhouse/huis_endpoint/predict


http://145.131.21.163:11000/public/api/v1/gradienthouse/huis_endpoint/predict-simple?PC2=45&oppervlakte=149&kamers=6&bouwjaar=1999

### via curl aanroep van dataiku api model
curl -d '
{
   "features": {
      "PC2": "16",
      "kamers": 6,
      "type": "Tussenwoning",
      "oppervlakte": 115,
      "bouwjaar": 2011,
      "qqperceel_oppervlakte": 85
   }
}' -H "Content-Type: application/json" -X POST http://5.100.228.219:48254/public/api/v1/boostedhouse/huis_endpoint/predict


