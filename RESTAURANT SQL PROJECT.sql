use restaurants;

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    contact_number VARCHAR(15),
    rating DECIMAL(3, 2),
    opening_hours VARCHAR(50)
);
INSERT INTO Restaurants (restaurant_id, name, location, contact_number, rating, opening_hours) VALUES
(1, 'Pizza Palace', 'Downtown', '555-1011', 4.5, '9 AM - 10 PM'),
(2, 'Burger Bonanza', 'Midtown', '555-1012', 4.2, '10 AM - 11 PM'),
(3, 'Sushi Central', 'Uptown', '555-1013', 4.8, '11 AM - 10 PM'),
(4, 'Taco Town', 'Eastside', '555-1014', 4.3, '9 AM - 9 PM'),
(5, 'Pasta Place', 'Westside', '555-1015', 4.4, '11 AM - 11 PM'),
(6, 'Steak House', 'Downtown', '555-1016', 4.6, '12 PM - 10 PM'),
(7, 'Curry Corner', 'Midtown', '555-1017', 4.7, '10 AM - 9 PM'),
(8, 'Noodle Nook', 'Uptown', '555-1018', 4.1, '11 AM - 10 PM'),
(9, 'Kebab King', 'Eastside', '555-1019', 4.9, '10 AM - 11 PM'),
(10, 'Veggie Delight', 'Westside', '555-1020', 4.0, '9 AM - 10 PM'),
(11, 'BBQ Barn', 'Downtown', '555-1021', 4.5, '12 PM - 11 PM'),
(12, 'Smoothie Spot', 'Midtown', '555-1022', 4.3, '8 AM - 8 PM'),
(13, 'Deli Central', 'Uptown', '555-1023', 4.4, '7 AM - 9 PM'),
(14, 'Hot Dog Haven', 'Eastside', '555-1024', 4.2, '10 AM - 10 PM'),
(15, 'Donut Den', 'Westside', '555-1025', 4.6, '6 AM - 6 PM');

CREATE TABLE Menu_Items (
    menu_item_id INT PRIMARY KEY,
    restaurant_id INT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(5, 2),
    is_available BOOLEAN,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);
INSERT INTO Menu_Items (menu_item_id, restaurant_id, name, description, price, is_available) VALUES
(1, 1, 'Margherita Pizza', 'Classic cheese pizza with tomato sauce and mozzarella', 7.99, TRUE),
(2, 1, 'Pepperoni Pizza', 'Pepperoni slices with mozzarella cheese on a tomato base', 8.99, TRUE),
(3, 2, 'Classic Cheeseburger', 'Grilled beef patty with cheese, lettuce, and tomato', 5.49, TRUE),
(4, 2, 'Veggie Burger', 'Grilled veggie patty with fresh lettuce and tomato', 4.99, TRUE),
(5, 3, 'California Roll', 'Sushi roll with crab, avocado, and cucumber', 9.99, TRUE),
(6, 3, 'Spicy Tuna Roll', 'Sushi roll with spicy tuna and avocado', 10.99, TRUE),
(7, 4, 'Chicken Tacos', 'Soft tortillas with grilled chicken, lettuce, and cheese', 3.99, TRUE),
(8, 4, 'Beef Tacos', 'Soft tortillas with seasoned beef, lettuce, and cheese', 4.49, TRUE),
(9, 5, 'Spaghetti Carbonara', 'Pasta with creamy sauce, bacon, and cheese', 11.99, TRUE),
(10, 5, 'Fettuccine Alfredo', 'Pasta with creamy Alfredo sauce and Parmesan', 12.49, TRUE),
(11, 6, 'Grilled Ribeye Steak', 'Juicy ribeye steak served with mashed potatoes', 19.99, TRUE),
(12, 6, 'BBQ Pork Ribs', 'Tender pork ribs with BBQ sauce', 18.99, TRUE),
(13, 7, 'Chicken Curry', 'Traditional chicken curry with rice', 9.49, TRUE),
(14, 7, 'Vegetable Curry', 'Spicy vegetable curry with rice', 8.99, TRUE),
(15, 8, 'Chicken Noodle Soup', 'Warm noodle soup with chicken and vegetables', 6.99, TRUE);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255),
    email VARCHAR(100),
    signup_date DATE
);
INSERT INTO Customers (customer_id, name, phone, address, email, signup_date) VALUES
(1, 'Alice Johnson', '555-1010', '123 Maple St, Downtown', 'alice.j@gmail.com', '2023-10-01'),
(2, 'Bob Smith', '555-2020', '456 Oak St, Midtown', 'bob.s@gmail.com', '2023-10-02'),
(3, 'Charlie Davis', '555-3030', '789 Pine St, Uptown', 'charlie.d@gmail.com', '2023-10-03'),
(4, 'Diana Evans', '555-4040', '101 Birch St, Eastside', 'diana.e@gmail.com', '2023-10-04'),
(5, 'Ethan Wilson', '555-5050', '202 Cedar St, Westside', 'ethan.w@gmail.com', '2023-10-05'),
(6, 'Fiona Brown', '555-6060', '303 Elm St, Downtown', 'fiona.b@gmail.com', '2023-10-06'),
(7, 'George White', '555-7070', '404 Spruce St, Midtown', 'george.w@gmail.com', '2023-10-07'),
(8, 'Hannah Green', '555-8080', '505 Willow St, Uptown', 'hannah.g@gmail.com', '2023-10-08'),
(9, 'Ian Black', '555-9090', '606 Aspen St, Eastside', 'ian.b@gmail.com', '2023-10-09'),
(10, 'Jane Miller', '555-1111', '707 Redwood St, Westside', 'jane.m@gmail.com', '2023-10-10'),
(11, 'Kyle Martin', '555-2222', '808 Fir St, Downtown', 'kyle.m@gmail.com', '2023-10-11'),
(12, 'Laura Scott', '555-3333', '909 Hemlock St, Midtown', 'laura.s@gmail.com', '2023-10-12'),
(13, 'Mark Turner', '555-4444', '101 Pinecone Ave, Uptown', 'mark.t@gmail.com', '2023-10-13'),
(14, 'Nina Price', '555-5555', '202 Chestnut St, Eastside', 'nina.p@gmail.com', '2023-10-14'),
(15, 'Owen Reed', '555-6666', '303 Maplewood Ave, Westside', 'owen.r@gmail.com', '2023-10-15');

CREATE TABLE Delivery_Personnel (
    delivery_person_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    vehicle_details VARCHAR(50),
    availability_status BOOLEAN
);
INSERT INTO Delivery_Personnel 
 VALUES
(1, 'Alex Green', '555-1010', 'Bike - Honda CBR', TRUE),
(2, 'Brian Black', '555-2020', 'Scooter - Yamaha Fascino', TRUE),
(3, 'Cathy White', '555-3030', 'Car - Toyota Corolla', FALSE),
(4, 'David Blue', '555-4040', 'Bike - Bajaj Pulsar', TRUE),
(5, 'Emma Grey', '555-5050', 'Scooter - Honda Activa', FALSE),
(6, 'Frank Yellow', '555-6060', 'Bike - Royal Enfield', TRUE),
(7, 'Gina Red', '555-7070', 'Scooter - Vespa SXL', TRUE),
(8, 'Harry Brown', '555-8080', 'Car - Maruti Suzuki Alto', TRUE),
(9, 'Isla Purple', '555-9090', 'Bike - KTM Duke', FALSE),
(10, 'Jack Orange', '555-1111', 'Scooter - TVS Jupiter', TRUE),
(11, 'Kara Violet', '555-2222', 'Car - Hyundai i10', FALSE),
(12, 'Leo Pink', '555-3333', 'Bike - Yamaha R15', TRUE),
(13, 'Mona Lime', '555-4444', 'Scooter - Suzuki Access', TRUE),
(14, 'Nina Aqua', '555-5555', 'Car - Tata Nano', FALSE),
(15, 'Oscar Cyan', '555-6666', 'Bike - Hero Splendor', TRUE);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    delivery_person_id INT,
    menu_item_id int,
    order_time TIMESTAMP,
    delivery_time TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (delivery_person_id) REFERENCES Delivery_Personnel(delivery_person_id),
	foreign key (menu_item_id) REFERENCES Menu_Items (menu_item_id)
);

INSERT INTO Orders (order_id, customer_id, restaurant_id, delivery_person_id, order_time, delivery_time) VALUES
(1, 1, 2, 1, '2024-10-01 10:15:00', '2024-10-01 10:45:00'),
(2, 3, 1, 2, '2024-10-02 11:00:00', '2024-10-02 11:35:00'),
(3, 4, 3, 3, '2024-10-02 13:20:00', '2024-10-02 14:00:00'),
(4, 2, 5, 4, '2024-10-03 09:10:00', '2024-10-03 09:45:00'),
(5, 5, 4, 5, '2024-10-04 18:30:00', '2024-10-04 19:00:00'),
(6, 6, 6, 2, '2024-10-05 12:45:00', '2024-10-05 13:20:00'),
(7, 3, 2, 3, '2024-10-06 19:00:00', '2024-10-06 19:35:00'),3
(8, 4, 1, 1, '2024-10-07 15:10:00', '2024-10-07 15:50:00'),
(9, 7, 3, 4, '2024-10-08 08:15:00', '2024-10-08 08:50:00'),
(10, 8, 4, 5, '2024-10-08 20:00:00', '2024-10-08 20:30:00'),
(11, 9, 5, 2, '2024-10-09 14:30:00', '2024-10-09 15:10:00'),
(12, 10, 6, 3, '2024-10-10 17:20:00', '2024-10-10 18:00:00'),
(13, 1, 3, 4, '2024-10-11 10:40:00', '2024-10-11 11:15:00'),
(14, 5, 2, 1, '2024-10-12 09:00:00', '2024-10-12 09:35:00'),
(15, 7, 4, 5, '2024-10-13 16:25:00', '2024-10-13 17:05:00');

#1.	Basic Query: Write an SQL query to fetch all restaurant names along with their location and rating.
select name as Restaurant_name,rating, location from restaurants;

#2.	Filter Data: Retrieve the names of restaurants located in "Downtown" that have a rating of 4.5 or higher.
select name as 	RESTAURANT_NAMES from restaurants where location ="Downtown";

#3.	Join Query: Write an SQL query to fetch the names of menu items along with the names of their respective restaurants.
select m.name, m.description from menu_items m
join restaurants r on m.restaurant_id=r.restaurant_id;

#4.	Aggregation: Find the average rating of restaurants located in "Midtown".
select avg(rating) as AVG_RATING from restaurants where location ="Midtown";

#5.	Count Query: Count the number of restaurants with a rating of 4.5 or higher.
select count(*) as rating  from restaurants where rating>=4.5;

#6.	Sort Data: Write an SQL query to list all menu items sorted by price in descending order.
select name,description, price from menu_items order by price desc;

#7.	descriptionForeign Key Usage: Find all menu items available at the restaurant "Burger Bonanza".
select m.name, m.description from menu_items m
join restaurants r on r.restaurant_id = m.restaurant_id
where r.name ="Burger Bonanza";

#8.	Boolean Filter: Retrieve the details of menu items where is_available is TRUE.
select name,description from menu_items where is_available=True;

#9.	Complex Join: Fetch restaurant names, menu item names, and their prices for all menu items priced above 10.
select m.name,m.description,m.price, r.name as RESTAURANT_NAMES from menu_items m
join restaurants r on m.restaurant_id= r.restaurant_id where price>10 ;

#10.Update Query: Increase the price of all menu items at "Pizza Palace" by 10%.
UPDATE Menu_Items
SET price = price * 1.10
WHERE restaurant_id = (SELECT restaurant_id FROM Restaurants WHERE name = 'Pizza Palace');

#11.Delete Query: Delete all menu items belonging to the restaurant "Taco Town".
DELETE FROM Menu_Items WHERE restaurant_id = (SELECT restaurant_id FROM Restaurants WHERE name = 'Taco Town');

# 12.Insert Query: Add a new restaurant "Seafood Shack" located at "Harbor" with contact "555-1030", a rating of 4.8, and opening hours "12 PM - 10 PM".
insert into Restaurants (restaurant_id, name, location, contact_number, rating, opening_hours)
 values (16,"Seafood Shack","Harbor","555-1030",4.5,"12 PM - 10 PM");
 
 #13.	Nested Query: Fetch the names of all restaurants that have menu items priced above 15.
 select m.name, m.price from menu_items m
 join restaurants r on r.restaurant_id = m.restaurant_id
 where price >15;

#14.Group and Filter: Group restaurants by location and find the number of restaurants in each location.
select  count(*), location from restaurants group by location;


#1.	Retrieve all customers who signed up in October 2023.
select name, signup_date from customers where signup_date between '2023-10-01' and '2023-10-15';

#2.	Find the customer(s) whose address contains "Mapleroot."
select * from customers where address like '%Maple%;';

#3.	Get the total number of customers from each city area (Downtown, Midtown, etc.).
select count(*),address from customers group by address;

#4.	Identify customers with email domains (e.g., gmail.com) and count how many have each domain.
select name from customers where email like "%@gmail.com";

#5.	Fetch details of customers who have a phone number starting with 555-2.
select name , phone from customers where phone like "555-2%";

#6.	List the names and contact numbers of delivery personnel who are currently available.
select name, contact_number from Delivery_Personnel where availability_status =True;

#7.	Retrieve all delivery personnel who use bikes.
SELECT * FROM Delivery_Personnel WHERE vehicle_details LIKE '%Bike%';

#8.	Find the delivery personnel whose vehicle details contain "Honda."
select * from Delivery_Personnel where vehicle_details like "%Honda%";

#9.	Count how many delivery personnel are unavailable.
select count(delivery_person_id ) from Delivery_Personnel where availability_status =True; 

#10.	Display the delivery personnel sorted alphabetically by their names.
select * from Delivery_Personnel order by name desc; 

#11.	Write a query to fetch all customers along with the delivery personnel assigned to them (assume a direct relationship, 
#e.g., delivery_person_id can match customer_id for simplicity).
select c.name,c.customer_id,d.name as delevery_person from customers c
left join Delivery_Personnel d on d.delivery_person_id = c.customer_id;

select name , location from restaurants;
select max(rating) from restaurants;
select name ,opening_hours from restaurants where location ='Downtown';
select count(*) from restaurants where rating>=4.5;

select m.name from menu_items m 
join restaurants r on r.restaurant_id =m.restaurant_id where r.name ='Pizza Palace';

select name, price from menu_items order by price desc limit 1;

#Find the names of restaurants that have a rating higher than the average rating of all restaurants.
select name, rating from restaurants where rating >(select avg(rating) from restaurants ); 

#List the menu items and their prices for the restaurant with the name 'Pizza Palace'.
select name,price from menu_items where restaurant_id =(select restaurant_id from restaurants where name ="pizza palace");

#Get the names and contact numbers of customers who have not ordered anything from 'Burger Bonanza'.
select name, phone from customers where customer_id not in (select distinct customer_id from order where restaurant_id 