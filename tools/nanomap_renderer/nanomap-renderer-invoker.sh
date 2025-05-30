#!/bin/bash
set -e
# Generate maps
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/Cyberiad/Cyberiad.dmm"
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/Deltastation/DeltaStation2.dmm"
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/IceBoxStation/IceBoxStation.dmm"
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/MetaStation/MetaStation.dmm"
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/tramstation/tramstation.dmm"
tools/nanomap_renderer/nanomap-renderer minimap -w 2040 -h 2040 "./_maps/map_files/Mining/Lavaland.dmm"
# Move and rename files so the game understands them
cd "data/nanomaps"
mv "DeltaStation2_nanomap_z1.png" "Delta Station_nanomap_z1.png"
mv "IceBoxStation_nanomap_z1.png" "Ice Box Station_nanomap_z1.png"
mv "IceBoxStation_nanomap_z2.png" "Ice Box Station_nanomap_z2.png"
mv "IceBoxStation_nanomap_z3.png" "Ice Box Station_nanomap_z3.png"
mv "tramstation_nanomap_z1.png" "Tramstation_nanomap_z1.png"
mv "tramstation_nanomap_z2.png" "Tramstation_nanomap_z2.png"
cd "../../"
cp "data/nanomaps/Cyberiad_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Cyberiad_nanomap_z2.png" "icons/_nanomaps"
cp "data/nanomaps/Delta Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Ice Box Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Ice Box Station_nanomap_z2.png" "icons/_nanomaps"
cp "data/nanomaps/Ice Box Station_nanomap_z3.png" "icons/_nanomaps"
cp "data/nanomaps/MetaStation_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Tramstation_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Tramstation_nanomap_z2.png" "icons/_nanomaps"
cp "data/nanomaps/Lavaland_nanomap_z1.png" "icons/_nanomaps"
