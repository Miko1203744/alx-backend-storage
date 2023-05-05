--  a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
SELECT band_name,IFNULL(split,2020)-formed as lifespan
from metal_bands where FIND_IN_SET('Glam rock', style)
ORDER BY lifespan DESC;
