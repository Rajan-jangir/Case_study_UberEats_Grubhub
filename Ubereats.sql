-- Checking all fields
SELECT *
FROM `arboreal-vision-339901.take_home_v2.virtual_kitchen_ubereats_hours`
LIMIT 5;

-- Checking relavant fields
 SELECT
   slug AS ue_slug,
   JSON_VALUE(response, '$.data.menus."26bd579e-5664-4f0a-8465-2f5eb5fbe705".sections[0].regularHours[0].startTime') AS Ubereats_starttime,
   JSON_VALUE(response, '$.data.menus."26bd579e-5664-4f0a-8465-2f5eb5fbe705".sections[0].regularHours[0].endTime') AS Ubereats_endtime,
   STRUCT(
     b_name AS b_name,
     vb_name AS vb_name
   ) AS restaurant_info
 FROM
   `arboreal-vision-339901.take_home_v2.virtual_kitchen_ubereats_hours`;
