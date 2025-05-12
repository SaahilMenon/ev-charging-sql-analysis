-- Busiest station by number of sessions
SELECT station_id, COUNT(*) AS session_count
FROM usage_logs
GROUP BY station_id
ORDER BY session_count DESC
LIMIT 1;

-- Average energy used per session
SELECT AVG(energy_used_kWh) AS avg_energy_kWh
FROM usage_logs;

-- Peak usage times
SELECT HOUR(start_time) AS hour, COUNT(*) AS usage_count
FROM usage_logs
GROUP BY HOUR(start_time)
ORDER BY usage_count DESC;

-- Station usage by city
SELECT c.city_name, s.station_id, COUNT(*) AS sessions
FROM usage_logs u
JOIN stations s ON u.station_id = s.station_id
JOIN cities c ON s.city_id = c.city_id
GROUP BY c.city_name, s.station_id;
