CREATE TABLE city (
    city_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    waste_type VARCHAR(50) NOT NULL,
    location INTEGER NOT NULL
);

INSERT INTO items (name, category, waste_type, 2) VALUES ('Tennis Shoe', 'Footwear', 'Recyclable');


INSERT INTO items (name, category, waste_type, 2) VALUES ('Plastic Bottle', 'Plastic', 'Recyclable');
INSERT INTO items (name, category, waste_type, 2) VALUES ('Newspaper', 'Paper', 'Recyclable');
INSERT INTO items (name, category, waste_type, 2) VALUES ('Aluminum Can', 'Metal', 'Recyclable');
INSERT INTO items (name, category, waste_type, 2 ) VALUES ('Cardboard Box', 'Paper', 'Recyclable');

INSERT INTO items (name, category, waste_type, 2) VALUES ('Apple Core', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type, 2) VALUES ('Banana Peel', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type, 2) VALUES ('Coffee Grounds', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type, 2) VALUES ('Eggshells', 'Food', 'Compostable');

INSERT INTO items (name, category, waste_type, 1) VALUES ('Plastic Wrap', 'Plastic', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Styrofoam Cup', 'Plastic', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Cigarette Butt', 'Other', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Broken Glass', 'Other', 'Normal Trash');

-- Recyclable Items
INSERT INTO items (name, category, waste_type, 3) VALUES ('Glass Bottle', 'Glass', 'Recyclable');
INSERT INTO items (name, category, waste_type, 3) VALUES ('Plastic Bag', 'Plastic', 'Recyclable');
INSERT INTO items (name, category, waste_type, 3) VALUES ('Tin Can', 'Metal', 'Recyclable');
INSERT INTO items (name, category, waste_type, 3) VALUES ('Magazines', 'Paper', 'Recyclable');

-- Compostable Items
INSERT INTO items (name, category, waste_type, 1) VALUES ('Vegetable Scraps', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Tea Bags', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Fruit Peelings', 'Food', 'Compostable');
INSERT INTO items (name, category, waste_type,1 ) VALUES ('Paper Towels', 'Paper', 'Compostable');

-- Normal Trash Items
INSERT INTO items (name, category, waste_type, 1) VALUES ('Plastic Cutlery', 'Plastic', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Candy Wrappers', 'Other', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Disposable Diapers', 'Other', 'Normal Trash');
INSERT INTO items (name, category, waste_type, 1) VALUES ('Broken Ceramics', 'Other', 'Normal Trash');


-- Washington, D.C.
INSERT INTO city (name, zip_code) VALUES ('Washington, D.C.', '20001');

INSERT INTO city (name, zip_code) VALUES ('Brookings', '57006');

-- Montgomery, Alabama
INSERT INTO city (name, zip_code) VALUES ('Montgomery', '36104');

-- Juneau, Alaska
INSERT INTO city (name, zip_code) VALUES ('Juneau', '99801');

-- Phoenix, Arizona
INSERT INTO city (name, zip_code) VALUES ('Phoenix', '85001');

-- Little Rock, Arkansas
INSERT INTO city (name, zip_code) VALUES ('Little Rock', '72201');

-- Sacramento, California
INSERT INTO city (name, zip_code) VALUES ('Sacramento', '95814');

-- Denver, Colorado
INSERT INTO city (name, zip_code) VALUES ('Denver', '80202');

-- Hartford, Connecticut
INSERT INTO city (name, zip_code) VALUES ('Hartford', '06103');

-- Dover, Delaware
INSERT INTO city (name, zip_code) VALUES ('Dover', '19901');

-- Tallahassee, Florida
INSERT INTO city (name, zip_code) VALUES ('Tallahassee', '32301');

-- Atlanta, Georgia
INSERT INTO city (name, zip_code) VALUES ('Atlanta', '30301');

-- Honolulu, Hawaii
INSERT INTO city (name, zip_code) VALUES ('Honolulu', '96801');

-- Boise, Idaho
INSERT INTO city (name, zip_code) VALUES ('Boise', '83702');

-- Springfield, Illinois
INSERT INTO city (name, zip_code) VALUES ('Springfield', '62701');

-- Indianapolis, Indiana
INSERT INTO city (name, zip_code) VALUES ('Indianapolis', '46201');

-- Des Moines, Iowa
INSERT INTO city (name, zip_code) VALUES ('Des Moines', '50301');

-- Topeka, Kansas
INSERT INTO city (name, zip_code) VALUES ('Topeka', '66601');

-- Frankfort, Kentucky
INSERT INTO city (name, zip_code) VALUES ('Frankfort', '40601');

-- Baton Rouge, Louisiana
INSERT INTO city (name, zip_code) VALUES ('Baton Rouge', '70801');

-- Augusta, Maine
INSERT INTO city (name, zip_code) VALUES ('Augusta', '04330');

-- Annapolis, Maryland
INSERT INTO city (name, zip_code) VALUES ('Annapolis', '21401');

-- Boston, Massachusetts
INSERT INTO city (name, zip_code) VALUES ('Boston', '02108');

-- Lansing, Michigan
INSERT INTO city (name, zip_code) VALUES ('Lansing', '48901');

-- St. Paul, Minnesota
INSERT INTO city (name, zip_code) VALUES ('St. Paul', '55101');

-- Jackson, Mississippi
INSERT INTO city (name, zip_code) VALUES ('Jackson', '39201');

-- Jefferson City, Missouri
INSERT INTO city (name, zip_code) VALUES ('Jefferson City', '65101');

-- Helena, Montana
INSERT INTO city (name, zip_code) VALUES ('Helena', '59601');

-- Lincoln, Nebraska
INSERT INTO city (name, zip_code) VALUES ('Lincoln', '68501');

-- Carson City, Nevada
INSERT INTO city (name, zip_code) VALUES ('Carson City', '89701');

-- Concord, New Hampshire
INSERT INTO city (name, zip_code) VALUES ('Concord', '03301');

-- Trenton, New Jersey
INSERT INTO city (name, zip_code) VALUES ('Trenton', '08601');

-- Santa Fe, New Mexico
INSERT INTO city (name, zip_code) VALUES ('Santa Fe', '87501');

-- Albany, New York
INSERT INTO city (name, zip_code) VALUES ('Albany', '12201');

-- Raleigh, North Carolina
INSERT INTO city (name, zip_code) VALUES ('Raleigh', '27601');

-- Bismarck, North Dakota
INSERT INTO city (name, zip_code) VALUES ('Bismarck', '58501');

-- Columbus, Ohio
INSERT INTO city (name, zip_code) VALUES ('Columbus', '43201');

-- Oklahoma City, Oklahoma
INSERT INTO city (name, zip_code) VALUES ('Oklahoma City', '73101');

-- Salem, Oregon
INSERT INTO city (name, zip_code) VALUES ('Salem', '97301');

-- Harrisburg, Pennsylvania
INSERT INTO city (name, zip_code) VALUES ('Harrisburg', '17101');

-- Providence, Rhode Island
INSERT INTO city (name, zip_code) VALUES ('Providence', '02903');

-- Columbia, South Carolina
INSERT INTO city (name, zip_code) VALUES ('Columbia', '29201');

-- Pierre, South Dakota
INSERT INTO city (name, zip_code) VALUES ('Pierre', '57501');

-- Nashville, Tennessee
INSERT INTO city (name, zip_code) VALUES ('Nashville', '37201');

-- Austin, Texas
INSERT INTO city (name, zip_code) VALUES ('Austin', '78701');

-- Salt Lake City, Utah
INSERT INTO city (name, zip_code) VALUES ('Salt Lake City', '84101');

-- Montpelier, Vermont
INSERT INTO city (name, zip_code) VALUES ('Montpelier', '05601');

-- Richmond, Virginia
INSERT INTO city (name, zip_code) VALUES ('Richmond', '23218');

-- Olympia, Washington
INSERT INTO city (name, zip_code) VALUES ('Olympia', '98501');

-- Charleston, West Virginia
INSERT INTO city (name, zip_code) VALUES ('Charleston', '25301');

-- Madison, Wisconsin
INSERT INTO city (name, zip_code) VALUES ('Madison', '53703');

-- Cheyenne, Wyoming
INSERT INTO city (name, zip_code) VALUES ('Cheyenne', '82001');
