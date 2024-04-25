-- script that lists all bands with Glam rock.
SELECT band_name,
       YEAR(2022) - YEAR(formed) AS lifespan
FROM metal_bands
ORDER BY lifespan DESC;
