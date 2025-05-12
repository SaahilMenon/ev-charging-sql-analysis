CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50)
);

CREATE TABLE stations (
    station_id INT PRIMARY KEY,
    location VARCHAR(100),
    city_id INT,
    capacity INT,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE usage_logs (
    log_id INT PRIMARY KEY,
    station_id INT,
    start_time DATETIME,
    end_time DATETIME,
    energy_used_kWh DECIMAL(5,2),
    FOREIGN KEY (station_id) REFERENCES stations(station_id)
);
