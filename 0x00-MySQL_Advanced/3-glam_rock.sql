-- script that lists all bands with Glam rock.
SET @this_year := 2022;

SELECT band_name, IF(split IS NULL, 2022, split) - formed AS lifespan FROM metal_bands WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
