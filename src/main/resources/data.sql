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
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('harry', 'HarrpPws', 'Harry Stain', 'harry@relevel.com', '8454123697', 'Plot No 47/A, Main Road, Madhuranagar, Hyderabad');
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('sukesh', 'SukeshPwd', 'Sukesh Kumar', 'sukesh@relevel.com', '8897456217', 'House No 85-24-5/5/A, Main Road, Sanath Nagar, Hyderabad');
   
CREATE TABLE Vendors (
    vendor_id varchar(255) PRIMARY KEY,
    password varchar(255),
    brand_name varchar(255),
    email varchar(255),
    phone varchar(255)
);

INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
   VALUES ('mudramark', 'mud@rml', 'Mudramark', 'info.mudramark@relevel.com', '8457459857');
INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
	VALUES ('hometown', 'home&twn', 'HomeTown', 'info.hometown@relevel.com', '8454758740');
INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
	VALUES ('mintwud', 'mintWUD', 'Mintwud', 'info.mintwud@relevel.com', '9954715695');
INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
	VALUES ('casacraft', 'casa$crft', 'CasaCraft', 'info.casacraft@relevel.com', '8845769312');
INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
	VALUES ('dreamzzfurnityre', 'dreamzzfurnityre$$$', 'Dreamzz Furnityre', 'info.dreamzzfurnityre@relevel.com', '8842632117');
INSERT INTO Vendors (vendor_id, password, brand_name, email, phone)  
	VALUES ('arra', 'arra@1234', 'ARRA', 'info.arra@relevel.com', '7845987849');


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
    brand_name varchar(255) references Vendors(brand_name),
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
   VALUES ('beds', 'queen size beds', 'Starlight Queene Bed with Storage', 'HomeTown', 41895);
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
   order_status varchar(255),
   delivered_date DATE
);
     
INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status, delivered_date)
values ('ram123', '2021-06-28', 'Delivered', '2021-07-15');

INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status, delivered_date)
values ('harry', '2022-01-25', 'Return', '2022-01-29');

INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status)
values ('ram123', '2022-01-22', 'Pending');

INSERT INTO ORDER_DETAILS (user_id, order_created_date, order_status, delivered_date)
values ('sukesh', '2021-12-28', 'Delivered', '2022-01-15');


CREATE TABLE ORDER_ITEMS (
   order_items_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   order_id INTEGER references ORDER_DETAILS(order_id),
   furniture_id varchar(255) references Inventory(furniture_id)
);

INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (1, 2);

INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (2, 1);
   
INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (3, 5);

 INSERT INTO ORDER_ITEMS (order_id, furniture_id)  
   VALUES (4, 3); 
   
 
CREATE TABLE ServiceRequests (
   service_request_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   order_id INTEGER references ORDER_DETAILS(order_id),
   user_id varchar(255) references Users(user_id),
   request_description varchar(255),
   status varchar(255),
   technation_name varchar(255),
   technation_mobile varchar(255)
);

INSERT INTO ServiceRequests (order_id, user_id, request_description, status)  
   VALUES (4, 'sukesh', 'The bed is making a cracking sound and the fittings are loose', 'pending');
 

