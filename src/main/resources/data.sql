CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    Password varchar(255),
    Name varchar(255),
    Email varchar(255),
    Phone varchar(255),
    Address varchar(255)
);
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('ram123', 'dummyP', 'Ram Charan', 'ram.cherry@relevel.com', '7777000055', 'Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad');

CREATE TABLE Category (
	category varchar(255) PRIMARY KEY
);
INSERT INTO Category(category)
    VALUES ('sofas and recliners');
INSERT INTO Category(category)
    VALUES ('cabinetry');
INSERT INTO Category(category)
    VALUES ('beds');
INSERT INTO Category(category)
    VALUES ('mattresses');
INSERT INTO Category(category)
    VALUES ('modular');
    

CREATE TABLE SubCategory (
	subcategory varchar(255),
	category varchar(255) references Category(category)
);
INSERT INTO SubCategory(subcategory, category)
    VALUES ('3 seater sofas','sofas and recliners');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('2 seater sofas','sofas and recliners');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('1 seater sofas','sofas and recliners');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('recliners','sofas and recliners');   
INSERT INTO SubCategory(subcategory, category)
    VALUES ('sofa cum beds','sofas and recliners');  
INSERT INTO SubCategory(subcategory, category)
    VALUES ('wardrobes','cabinetry');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('shoe racks','cabinetry');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('cabinets and sideboards','cabinetry');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('book shelves','cabinetry');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('queen size beds','beds');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('king size beds','beds');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('single beds','beds');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('foldable mattress','mattresses');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('baby mattress','mattresses');
INSERT INTO SubCategory(subcategory, category)
    VALUES ('kids mattress','mattresses');

CREATE TABLE Inventory (
    furniture_id varchar(255) PRIMARY KEY AUTO_INCREMENT,
    category varchar(255) references Category(category),
    subcategory varchar(255) references SubCategory(subcategory),
    furniture_name varchar(255),
    brand_name varchar(255),
    cost DECIMAL
);

INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('beds', 'king size beds', 'Tishya Solid Wood King Size Bed', 'Mudramark', 56999);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'king size beds', 'Bolton King Size Bed with Storage', 'HomeTown', 24210);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'king size beds', 'Ren King Size Bed with Storage', 'Mintwud', 18499);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'king size beds', 'Daichi King Size Bed with Besside Table', 'Mintwud', 21199);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'queen size beds', 'Waltz Queen Size Bed with Box Storage', 'Mintwud', 13599);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'queen size beds', 'Opus Queen Size Bed with Box Storage', 'Mintwud', 11799);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)    
   VALUES ('beds', 'queen size beds', 'Starlight Queene Bed with Storage', 'Hometown', 41895);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('sofas and recliners', '3 seater sofas', 'Delfina 3 Seater Sofa', 'CasaCraft', 51999);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('sofas and recliners', '3 seater sofas', 'Mid-Century Classic 3 Seater Sofa', 'Dreamzz Furnityre', 39119);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('sofas and recliners', '2 seater sofas', 'Austin 2 Seater Sofa', 'ARRA', 28409);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('sofas and recliners', '2 seater sofas', 'Kaylee 2 Seater Velvet Sofa', 'CasaCraft', 41999);
INSERT INTO Inventory (category, subcategory, furniture_name, brand_name, cost)  
   VALUES ('sofas and recliners', 'recliners', 'Zebulun Leatherette 1 Seater Recliner', 'Mintwud', 25899);
   
CREATE TABLE Cart (
    cart_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    furniture_id varchar(255) references Inventory(furniture_id)
);

INSERT INTO Cart (user_id, furniture_id)  
   VALUES ('ram123', 9);
INSERT INTO Cart (user_id, furniture_id)
   VALUES ('ram123', 11);
INSERT INTO Cart (user_id, furniture_id)  
    VALUES ('ram123', 12);



CREATE TABLE ORDER_DETAILS (
   order_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   user_id varchar(255) references Users(user_id),
   order_created_date DATE,
   order_status varchar2(255)
);
     
INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status)
values ('ram123', '2022-01-22', 'Delivered');

INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status)
values ('ram123', '2021-06-28', 'Pending');

CREATE TABLE ORDER_ITEMS (
   order_items_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   order_id INTEGER references ORDER_DETAILS(order_id),
   furniture_id varchar(255) references Inventory(furniture_id)
);

INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (1, 2);

INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (2, 5);


