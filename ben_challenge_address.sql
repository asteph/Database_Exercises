CREATE TABLE addresses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  street VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state CHAR(2) NOT NULL,
  zipcode CHAR(5) NOT NULL,
  PRIMARY KEY (id)
  );

CREATE TABLE tenants (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  address_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (address_id) REFERENCES addresses (id)
);

INSERT INTO addresses (street, city, state, zipcode) VALUES
('234 west oak dr.', 'Mustang', 'OK', '73025'),
('369 elm st.', 'Nowhere', 'TX', '54235'),
('234 castle rock rd.', 'Edmond', 'OK', '23867'),
('107 e. poplar', 'Bethany', 'OK', '73933');

INSERT INTO tenants (first_name, last_name, address_id) VALUES
('bob', 'barker', 1),
('joe', 'fibiani', 2),
('sally', 'sue', 3),
('adam', 'sandler', 3),
('jane', 'doe', 4),
('mike', 'wasouski', 4);

SELECT t.first_name, t.last_name, a.street, a.city, a.state, a.zipcode
FROM tenants t
JOIN addresses a ON t.address_id = a.id
WHERE a.state = 'OK'
	ORDER BY a.city;
