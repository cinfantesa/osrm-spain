FROM osrm/osrm-backend

WORKDIR /data

RUN wget http://download.geofabrik.de/europe/spain-latest.osm.pbf
RUN osrm-extract -p /opt/car.lua /data/spain-latest.osm.pbf
RUN osrm-contract /data/spain-latest.osrm

CMD osrm-routed /data/spain-latest.osrm
