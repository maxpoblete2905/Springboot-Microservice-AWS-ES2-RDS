-- Eliminar tablas si existen
DROP TABLE IF EXISTS `reservation`;
DROP TABLE IF EXISTS `rooms`;
DROP TABLE IF EXISTS `customers`;

-- Crear tabla `rooms`
CREATE TABLE `rooms` (
                         `room_id` int NOT NULL AUTO_INCREMENT,
                         `room_number` varchar(10) NOT NULL,
                         `room_type` varchar(50) NOT NULL,
                         PRIMARY KEY (`room_id`)
);

-- Crear tabla `customers`
CREATE TABLE `customers` (
                             `customer_id` int NOT NULL AUTO_INCREMENT,
                             `first_name` varchar(50) NOT NULL,
                             `last_name` varchar(50) NOT NULL,
                             `email` varchar(100) NOT NULL,
                             PRIMARY KEY (`customer_id`)
);

-- Crear tabla `reservation`
CREATE TABLE `reservation` (
                               `reservation_id` int NOT NULL AUTO_INCREMENT,
                               `room_id` int NOT NULL,
                               `customer_id` int NOT NULL,
                               `start_dt` date NOT NULL,
                               `finish_dt` date NOT NULL,
                               `status` varchar(20) NOT NULL DEFAULT 'Pending',
                               `num_people` int NOT NULL,
                               `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               PRIMARY KEY (`reservation_id`),
                               FOREIGN KEY (`room_id`) REFERENCES `rooms`(`room_id`),
                               FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`)
);

-- Insertar datos en `rooms`
INSERT INTO `rooms` (`room_number`, `room_type`)
VALUES
    ('101', 'Single'),
    ('102', 'Double'),
    ('103', 'Suite'),
    ('104', 'Single'),
    ('105', 'Double'),
    ('106', 'Suite'),
    ('107', 'Single'),
    ('108', 'Double'),
    ('109', 'Suite');

-- Insertar datos en `customers`
INSERT INTO `customers` (`first_name`, `last_name`, `email`)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Alice', 'Johnson', 'alice.johnson@example.com'),
    ('Bob', 'Williams', 'bob.williams@example.com'),
    ('Charlie', 'Brown', 'charlie.brown@example.com'),
    ('Diana', 'Clark', 'diana.clark@example.com'),
    ('Evan', 'Lopez', 'evan.lopez@example.com'),
    ('Fiona', 'Martinez', 'fiona.martinez@example.com');

-- Insertar datos en `reservation`
INSERT INTO `reservation` (`room_id`, `customer_id`, `start_dt`, `finish_dt`, `status`, `num_people`)
VALUES
    (1, 1, '2023-04-21', '2023-04-25', 'Confirmed', 2),
    (1, 2, '2023-05-01', '2023-05-04', 'Pending', 3),
    (2, 3, '2023-06-01', '2023-06-05', 'Confirmed', 1),
    (3, 4, '2023-06-10', '2023-06-15', 'Cancelled', 4),
    (4, 5, '2023-07-01', '2023-07-07', 'Confirmed', 2),
    (5, 6, '2023-07-15', '2023-07-20', 'Pending', 3),
    (6, 1, '2023-08-01', '2023-08-05', 'Confirmed', 1),
    (7, 2, '2023-08-10', '2023-08-15', 'Confirmed', 2),
    (8, 3, '2023-09-01', '2023-09-05', 'Cancelled', 4),
    (9, 4, '2023-09-10', '2023-09-15', 'Confirmed', 3);
