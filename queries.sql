CREATE OR REPLACE TABLE `divvy_tripdata.merged_tripdata` AS
SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202312`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL


UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202401`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL


UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202402`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL


UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202403`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202404`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202405`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202406`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202407`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202408`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202409`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202410`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

UNION ALL

SELECT 
    ride_id,
    rideable_type,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
    MOD(EXTRACT(DAYOFWEEK FROM started_at) + 5, 7) + 1 AS day_of_ride, -- Adjust day_of_week to start at Monday
    started_at,
    ended_at
FROM `divvy_tripdata.tripdata_202411`
WHERE ride_id IS NOT NULL AND rideable_type IS NOT NULL

ORDER BY started_at;