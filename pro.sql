create database FDS;

use FDS;


-- table creation and value insertion

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    password VARCHAR(150) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    UNIQUE (email)
);


INSERT INTO customer (customer_name, email, password, phone) 
VALUES 
('Alice Johnson', 'alice.johnson@example.com', 'password123', '1234567890'),
('Bob Smith', 'bob.smith@example.com', 'securepass', '9876543210'),
('Charlie Brown', 'charlie.brown@example.com', 'abc123', '5551234567'),
('David Lee', 'david.lee@example.com', 'dlee', '5559876543'),
('Emma White', 'emma.white@example.com', 'pass123', '1112223333'),
('Franklin Garcia', 'franklin.garcia@example.com', 'password456', '9998887777'),
('Grace Miller', 'grace.miller@example.com', 'gracem', '4445556666'),
('Henry Taylor', 'henry.taylor@example.com', 'henryt', '2223334444'),
('Isabella Martinez', 'isabella.martinez@example.com', 'isabella123', '6667778888'),
('Jack Davis', 'jack.davis@example.com', 'jdavis', '8889990000'),
('Katherine Clark', 'katherine.clark@example.com', 'kclark', '7776665555'),
('Liam Rodriguez', 'liam.rodriguez@example.com', 'liamr', '1212121212'),
('Mia Hernandez', 'mia.hernandez@example.com', 'miah', '3434343434'),
('Noah Wilson', 'noah.wilson@example.com', 'wilson123', '5656565656'),
('Olivia Lopez', 'olivia.lopez@example.com', 'olopez', '7878787878'),
('Peter Young', 'peter.young@example.com', 'youngpeter', '8989898989'),
('Quinn Nguyen', 'quinn.nguyen@example.com', 'quinnn', '2323232323'),
('Rachel Kim', 'rachel.kim@example.com', 'rkim', '4545454545'),
('Samuel King', 'samuel.king@example.com', 'king123', '6767676767'),
('Taylor Nguyen', 'taylor.nguyen@example.com', 'taylor123', '7878787878');




CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    catg_id INT NOT NULL,
    restaurant_name VARCHAR(100) NOT NULL,
    address VARCHAR(300) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    FOREIGN KEY (catg_id) REFERENCES rest_catogries(catg_id)
);



INSERT INTO restaurants (catg_id, restaurant_name, address, phone)
VALUES 
(1, 'Grill Master', '123 Main St, Cityville, ABC', '123-456-7890'),
(2, 'Taco Haven', '456 Elm St, Townsville, XYZ', '987-654-3210'),
(3, 'Sushi Garden', '789 Oak St, Villageton, DEF', '555-123-4567'),
(4, 'Pasta Paradise', '321 Pine St, Hamletown, GHI', '555-987-6543'),
(5, 'Green Leaf Café', '567 Maple St, Suburbia, JKL', '111-222-3333'),
(6, 'Seafood Delight', '890 Cedar St, Countryside, MNO', '999-888-7777'),
(7, 'Bistro Central', '234 Walnut St, Riverside, PQR', '444-555-6666'),
(8, 'Steakhouse Supreme', '678 Birch St, Hilltop, STU', '222-333-4444'),
(9, 'French Affair', '901 Cherry St, Lakeside, VWX', '666-777-8888'),
(10, 'Spice Avenue', '345 Oakwood St, Seaside, YZA', '888-999-0000'),
(1, 'Burger Barn', '567 Magnolia St, Uptown, BCD', '777-666-5555'),
(2, 'Burrito Bar', '789 Pineapple St, Downtown, EFG', '121-212-1212'),
(3, 'Tempura House', '123 Coconut St, Beachside, HIJ', '343-434-3434'),
(4, 'Pizzeria Italia', '456 Mango St, Farmland, KLM', '565-656-5656'),
(5, 'Veggie Delight', '789 Apple St, Greenfield, NOP', '787-878-7878'),
(6, 'Fisherman''s Wharf', '901 Olive St, Hillcrest, QRS', '898-989-8989'),
(7, 'Café Paris', '234 Pine St, Downtown, TUV', '232-323-2323'),
(8, 'Prime Cuts', '567 Papaya St, Tropicalia, WXY', '454-545-4545'),
(9, 'Namaste Indian', '890 Fig St, Orchardville, YZA', '676-767-6767'),
(10, 'Ramen House', '123 Cherry Blossom St, Zenville, BCD', '787-878-7878'),
(1, 'Diner Classic', '345 Elm St, Cityville, ABC', '123-456-7890'),
(2, 'Enchilada Express', '567 Oak St, Townsville, XYZ', '987-654-3210'),
(3, 'Sashimi Sushi', '789 Maple St, Villageton, DEF', '555-123-4567'),
(4, 'Alfredo''s Trattoria', '901 Pine St, Hamletown, GHI', '555-987-6543'),
(5, 'Salad Stop', '234 Cedar St, Suburbia, JKL', '111-222-3333'),
(6, 'Shrimp Shack', '678 Walnut St, Countryside, MNO', '999-888-7777'),
(7, 'Croissant Corner', '890 Birch St, Riverside, PQR', '444-555-6666'),
(8, 'Filet & Fries', '123 Cherry St, Hilltop, STU', '222-333-4444'),
(9, 'Bistro Provence', '456 Olive St, Lakeside, VWX', '666-777-8888'),
(10, 'Curry House', '901 Coconut St, Seaside, YZA', '888-999-0000');



-- orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    order_amount DECIMAL(10,2) NOT NULL,
    delivery_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);
ALTER TABLE orders
ADD COLUMN order_date DATE;




INSERT INTO orders (customer_id, restaurant_id, order_amount, delivery_status)
VALUES 
(2, 2, 28.50, 'In Progress'),
(3, 3, 35.75, 'Pending'),
(4, 4, 50.25, 'Delivered'),
(5, 5, 22.99, 'Delivered'),
(6, 6, 18.00, 'In Progress'),
(7, 7, 40.00, 'Pending'),
(8, 8, 30.75, 'Delivered'),
(9, 9, 55.50, 'Delivered'),
(10, 10, 27.45, 'Pending'),
(11, 1, 48.00, 'Delivered'),
(12, 2, 32.25, 'Delivered'),
(13, 3, 60.75, 'In Progress'),
(14, 4, 42.60, 'Pending'),
(15, 5, 34.80, 'Delivered'),
(16, 6, 27.90, 'In Progress'),
(17, 7, 65.25, 'Delivered'),
(18, 8, 37.50, 'Delivered'),
(19, 9, 70.00, 'In Progress'),
(20, 10, 40.75, 'Delivered'),
(1, 1, 55.20, 'Pending'),
(2, 2, 38.50, 'Delivered'),
(3, 3, 68.75, 'In Progress'),
(4, 4, 54.90, 'Delivered'),
(5, 5, 46.25, 'Pending'),
(6, 6, 35.00, 'Delivered'),
(7, 7, 80.00, 'In Progress'),
(8, 8, 49.75, 'Delivered'),
(9, 9, 85.30, 'Pending'),
(10, 10, 52.45, 'Delivered');





CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    payment_method VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    pay_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO Payment (order_id, payment_method, amount, pay_status)
VALUES 
(1, 'Credit Card', 45.00, 'Paid'),
(2, 'Cash', 28.50, 'Pending'),
(3, 'PayPal', 35.75, 'Paid'),
(4, 'Credit Card', 50.25, 'Pending'),
(5, 'Cash', 22.99, 'Paid'),
(6, 'Credit Card', 18.00, 'Paid'),
(7, 'Cash', 40.00, 'Pending'),
(8, 'PayPal', 30.75, 'Paid'),
(9, 'Credit Card', 55.50, 'Paid'),
(10, 'Cash', 27.45, 'Pending'),
(11, 'Credit Card', 48.00, 'Paid'),
(12, 'Cash', 32.25, 'Pending'),
(13, 'PayPal', 60.75, 'Paid'),
(14, 'Credit Card', 42.60, 'Paid'),
(15, 'Cash', 34.80, 'Pending'),
(16, 'Credit Card', 27.90, 'Paid'),
(17, 'PayPal', 65.25, 'Paid'),
(18, 'Cash', 37.50, 'Pending'),
(19, 'Credit Card', 70.00, 'Paid'),
(20, 'Cash', 40.75, 'Paid'),
(21, 'PayPal', 55.20, 'Pending'),
(22, 'Credit Card', 38.50, 'Paid'),
(23, 'Cash', 68.75, 'Paid'),
(24, 'Credit Card', 54.90, 'Pending'),
(25, 'PayPal', 46.25, 'Paid'),
(26, 'Cash', 35.00, 'Pending'),
(27, 'Credit Card', 80.00, 'Paid'),
(28, 'PayPal', 49.75, 'Paid'),
(29, 'Cash', 85.30, 'Pending'),
(30, 'Credit Card', 52.45, 'Paid');




CREATE TABLE review (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    rating INT NOT NULL,
    reviews_discription varchar(500) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);


INSERT INTO review (customer_id, restaurant_id, rating, reviews_discription)
VALUES 
(1, 1, 4, 'Great food and service, will definitely come back!'),
(2, 2, 5, 'Amazing pizza, loved the crust!'),
(3, 3, 3, 'Decent sushi, but the service was slow.'),
(4, 4, 4, 'Delicious pasta, highly recommend!'),
(5, 5, 5, 'Fantastic seafood dishes, fresh and flavorful!'),
(6, 6, 3, 'Average fish and chips, nothing special.'),
(7, 7, 4, 'Love the croissants, perfect for breakfast!'),
(8, 8, 5, 'Exceptional filet mignon, cooked to perfection.'),
(9, 9, 4, 'Authentic French cuisine, delightful experience.'),
(10, 10, 4, 'Great Indian food, especially the chicken curry!'),
(11, 1, 5, 'Best burger in town, juicy and flavorful!'),
(12, 2, 4, 'Solid pizza, good value for money.'),
(13, 3, 2, 'Disappointing sushi, rice was overcooked.'),
(14, 4, 4, 'Tasty spaghetti, generous portions.'),
(15, 5, 5, 'Top-notch seafood paella, highly recommended!'),
(16, 6, 3, 'Average clam chowder, lacked flavor.'),
(17, 7, 4, 'Fresh croissants, excellent with coffee.'),
(18, 8, 5, 'Amazing steak, worth every penny.'),
(19, 9, 4, 'Lovely atmosphere, felt like dining in Paris.'),
(20, 10, 4, 'Delicious biryani, flavorful and aromatic!'),
(1, 1, 4, 'Consistently good food and service.'),
(2, 2, 5, 'Excellent pizza, perfectly cooked!'),
(3, 3, 3, 'Decent sushi, but not the best in town.'),
(4, 4, 4, 'Yummy pasta dishes, always a pleasure.'),
(5, 5, 5, 'Outstanding seafood selection, fresh and tasty!'),
(6, 6, 3, 'Average fish and chips, nothing extraordinary.'),
(7, 7, 4, 'Amazing croissants, great with a cup of tea.'),
(8, 8, 5, 'Delicious steak, cooked to perfection.'),
(9, 9, 4, 'Wonderful French cuisine, authentic flavors.'),
(10, 10, 4, 'Satisfying Indian dishes, loved the spices!');




CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    state VARCHAR(255) NOT NULL,
    city  VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


INSERT INTO location (customer_id, state, city, street)
VALUES 
(1, 'California', 'Los Angeles', '123 Main Street'),
(2, 'New York', 'New York City', '456 Elm Street'),
(3, 'Texas', 'Houston', '789 Oak Avenue'),
(4, 'Florida', 'Miami', '101 Palm Boulevard'),
(5, 'Illinois', 'Chicago', '555 Maple Avenue'),
(6, 'Massachusetts', 'Boston', '777 Pine Street'),
(7, 'Washington', 'Seattle', '999 Cedar Road'),
(8, 'Nevada', 'Las Vegas', '888 Walnut Lane'),
(9, 'Colorado', 'Denver', '222 Cherry Street'),
(10, 'Arizona', 'Phoenix', '444 Birch Drive'),
(11, 'California', 'San Francisco', '333 Ocean Avenue'),
(12, 'New York', 'Brooklyn', '777 Sunset Boulevard'),
(13, 'Texas', 'Austin', '555 River Street'),
(14, 'Florida', 'Orlando', '666 Lakeview Drive'),
(15, 'Illinois', 'Springfield', '999 Forest Lane'),
(16, 'Massachusetts', 'Cambridge', '888 Meadow Road'),
(17, 'Washington', 'Tacoma', '222 Hillside Avenue'),
(18, 'Nevada', 'Reno', '111 Park Street'),
(19, 'Colorado', 'Boulder', '444 Mountain View Drive'),
(20, 'Arizona', 'Tucson', '777 Valley Road'),
(1, 'California', 'San Diego', '123 Beach Avenue'),
(2, 'New York', 'Albany', '456 Riverwalk Drive'),
(3, 'Texas', 'Dallas', '789 Sunset Boulevard'),
(4, 'Florida', 'Tampa', '101 Bay Street'),
(15, 'Illinois', 'Naperville', '555 Oakwood Drive'),
(16, 'Massachusetts', 'Worcester', '777 Elm Street'),
(2, 'Washington', 'Spokane', '999 Pinecone Lane'),
(8, 'Nevada', 'Henderson', '888 Maple Avenue'),
(19, 'Colorado', 'Colorado Springs', '222 Mountain Street'),
(10, 'Arizona', 'Scottsdale', '444 Desert Road');




CREATE TABLE Menu (
    menu_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
    );
    
    INSERT INTO Menu (restaurant_id, item_name, price)
VALUES 
(1, 'Cheeseburger', 9.99),
(1, 'French Fries', 4.50),
(1, 'Soft Drink', 2.25),
(2, 'Pepperoni Pizza', 12.99),
(2, 'Garlic Bread', 5.75),
(2, 'Soda', 2.50),
(3, 'California Roll', 15.50),
(3, 'Miso Soup', 4.25),
(3, 'Green Tea', 3.00),
(4, 'Spaghetti Bolognese', 14.75),
(4, 'Caesar Salad', 8.50),
(4, 'Minestrone Soup', 6.25),
(5, 'Grilled Salmon', 18.99),
(5, 'Seafood Paella', 22.50),
(5, 'Crab Cakes', 16.75),
(6, 'Fish and Chips', 11.25),
(6, 'Clam Chowder', 7.50),
(6, 'Lemonade', 3.25),
(7, 'Croissant', 3.99),
(7, 'Quiche Lorraine', 9.75),
(7, 'Café Latte', 4.50),
(8, 'Filet Mignon', 29.99),
(8, 'Caesar Salad', 8.50),
(8, 'Red Wine', 12.75),
(9, 'Escargot', 16.50),
(9, 'Duck à l''Orange', 24.75),
(9, 'Crème Brûlée', 7.99),
(10, 'Chicken Curry', 13.25),
(10, 'Vegetable Biryani', 11.50),
(10, 'Mango Lassi', 3.75);



    
-- resturant catogries     
CREATE TABLE rest_catogries(
catg_id INT PRIMARY KEY auto_increment,
catg_name varchar(200) NOT NULL,
num_restueant INT NOT NULL,
description varchar(300) NOT NULL
);



INSERT INTO rest_catogries (catg_name, num_restueant, description)
VALUES 
('American Cuisine', 8, 'Classic American dishes like burgers, steaks, and BBQ'),
('Mexican Cuisine', 6, 'Authentic Mexican flavors including tacos, burritos, and enchiladas'),
('Asian Fusion', 5, 'Combining elements of various Asian cuisines for unique flavors'),
('Mediterranean Cuisine', 4, 'Healthy and flavorful dishes from the Mediterranean region'),
('Vegetarian & Vegan', 3, 'Plant-based dishes suitable for vegetarians and vegans'),
('Seafood Specialties', 7, 'Fresh seafood dishes including fish, shrimp, and lobster'),
('Café & Bistro', 6, 'Casual dining with light meals, sandwiches, and coffee'),
('Steakhouse', 4, 'Specializing in high-quality steaks and chops cooked to perfection'),
('French Cuisine', 3, 'Elegant and refined dishes from the culinary traditions of France'),
('Indian Cuisine', 5, 'Spicy and aromatic dishes from India, including curry and tandoori');



-- reservation 
CREATE TABLE reservation( 

Resrv_id INT PRIMARY KEY AUTO_INCREMENT,        
restaurant_id  INT NOT NULL,          
customer_id    INT NOT NULL,
Reservation_date DATE,
 FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO reservation (restaurant_id, customer_id, Reservation_date)
VALUES 
(1, 1, '2024-05-10'),
(2, 2, '2024-05-12'),
(3, 3, '2024-05-15'),
(4, 4, '2024-05-17'),
(5, 5, '2024-05-20'),
(6, 6, '2024-05-22'),
(7, 7, '2024-05-25'),
(8, 8, '2024-05-27'),
(9, 9, '2024-05-30'),
(10, 10, '2024-06-01'),
(1, 11, '2024-06-04'),
(2, 12, '2024-06-07'),
(3, 13, '2024-06-10'),
(4, 14, '2024-06-12'),
(5, 15, '2024-06-15'),
(6, 16, '2024-06-18'),
(7, 17, '2024-06-20'),
(8, 18, '2024-06-23'),
(9, 19, '2024-06-26'),
(10, 20, '2024-06-28'),
(1, 11, '2024-07-01'),
(2, 12, '2024-07-04'),
(3, 3, '2024-07-07'),
(4, 2, '2024-07-10'),
(5, 8, '2024-07-13'),
(6, 16, '2024-07-16'),
(7, 7, '2024-07-18'),
(8, 18, '2024-07-21'),
(9, 9, '2024-07-24'),
(10, 10, '2024-07-27');


-- events 
CREATE TABLE `events` (
    event_id INT PRIMARY KEY auto_increment,
    restaurant_id  INT NOT NULL,
    customer_id    INT NOT NULL,
    event_name VARCHAR(300) NOT NULL,
    description VARCHAR(500),
    event_date DATE,
    event_loc VARCHAR(255),
   FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
   FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO `events` (customer_id,restaurant_id , event_name, description, event_date, event_loc)
VALUES 
(1, 1, 'Birthday Party', 'Celebrating Alices birthday', '2024-05-15', 'Main Hall') ,
(2, 2, 'Anniversary Dinner', 'Bob and Sarahs 5th anniversary', '2024-05-20', 'Private Dining Room'),
(3, 3, 'Corporate Luncheon', 'Business networking event', '2024-05-25', 'Conference Room'),
(4, 4, 'Wedding Reception', 'David and Emilys wedding celebration', '2024-06-01', 'Banquet Hall'),
(5, 5, 'Graduation Party', 'Emmas graduation celebration', '2024-06-05', 'Outdoor Patio'),
(6, 6, 'Family Reunion', 'Garcia Family Reunion', '2024-06-10', 'Garden Area'),
(7, 7, 'Charity Gala', 'Fundraising event for local charity', '2024-06-15', 'Ballroom'),
(8, 8, 'Holiday Party', 'Company holiday party', '2024-06-20', 'Terrace'),
(9, 9, 'Retirement Dinner', 'Celebrating Johns retirement', '2024-06-25', 'Private Lounge'),
(10, 10, 'Community Event', 'Neighborhood block party', '2024-06-30', 'Community Center'),
(1, 11, 'Family Birthday Bash', 'Celebrating Jacobs birthday', '2024-07-05', 'Main Hall'),
(2, 12, 'Engagement Party', 'Celebrating Lisa and Michaels engagement', '2024-07-10', 'Private Dining Room'),
(3, 13, 'Book Launch', 'Book launch event for new novel', '2024-07-15', 'Conference Room'),
(4, 14, 'Baby Shower', 'Celebrating Sarahs baby shower', '2024-07-20', 'Banquet Hall'),
(5, 15, 'Farewell Party', 'Farewell party for departing colleague', '2024-07-25', 'Outdoor Patio'),
(6, 16, 'Surprise Anniversary', 'Surprising parents on their anniversary', '2024-07-30', 'Garden Area'),
(7, 17, 'Art Exhibition', 'Local artist exhibition', '2024-08-05', 'Gallery Space'),
(8, 18, 'Music Concert', 'Live music performance', '2024-08-10', 'Terrace'),
(9, 19, 'Movie Night', 'Outdoor movie screening', '2024-08-15', 'Open Lawn'),
(10, 20, 'Summer Festival', 'Annual summer festival', '2024-08-20', 'Festival Grounds'),
(1, 21, 'Bachelor Party', 'Celebrating groom-to-be', '2024-08-25', 'Main Hall'),
(2, 22, 'Bridal Shower', 'Celebrating bride-to-be', '2024-08-30', 'Private Dining Room'),
(3, 23, 'Business Seminar', 'Industry seminar and networking event', '2024-09-05', 'Conference Room'),
(4, 24, 'Fashion Show', 'Local designer fashion showcase', '2024-09-10', 'Banquet Hall'),
(5, 25, 'Art Workshop', 'Art workshop for aspiring artists', '2024-09-15', 'Art Studio'),
(6, 26, 'Cooking Class', 'Interactive cooking class', '2024-09-20', 'Kitchen Area'),
(7, 27, 'Health Fair', 'Community health and wellness fair', '2024-09-25', 'Event Space'),
(8, 28, 'Wine Tasting', 'Wine tasting event', '2024-09-30', 'Wine Cellar'),
(9, 29, 'Science Fair', 'Local school science fair', '2024-10-05', 'Science Lab'),
(10, 30, 'Tech Conference', 'Technology conference and expo', '2024-10-10', 'Conference Hall');








/*
-- quries 



-- 1. **Select all customers:**
   
   SELECT * FROM customer;
  

-- 2. **Select all restaurants:**
 
   SELECT * FROM restaurants;
  

-- 3. **Select all orders:**
   
   SELECT * FROM orders;
   

-- 4. **Select all payments:**
  
   SELECT * FROM payment;
 

-- 5. **Select all reviews:**
   
   SELECT * FROM review;
  

-- 6. **Select all locations:**
   
   SELECT * FROM location;
   

-- 7. **Select all menu items:**
  
   SELECT * FROM menu;
   

-- 8. **Select all restaurant categories:**
   
   SELECT * FROM rest_catogries;
  

-- 9. **Select all reservations:**
   
   SELECT * FROM reservation;
  

-- 10. **Select all events:**
    
    SELECT * FROM events;
    

-- 11. **Select customers who have placed orders:**
   
    SELECT DISTINCT c.* FROM customer c
    JOIN orders o ON c.customer_id = o.customer_id;
    

-- 12. **Select restaurants with pending orders:**
    
    SELECT DISTINCT r.* FROM restaurants r
    JOIN orders o ON r.restaurant_id = o.restaurant_id
    WHERE o.delivery_status = 'Pending';
    

-- 13. **Select customers who have made payments:**
    
    SELECT DISTINCT c.* FROM customer c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN payment p ON o.order_id = p.order_id;
    

-- 14. **Select restaurants with the highest number of reservations:**
    
    SELECT r.*, COUNT(resrv_id) AS num_reservations FROM restaurants r
    JOIN reservation rv ON r.restaurant_id = rv.restaurant_id
    GROUP BY r.restaurant_id
    ORDER BY num_reservations DESC;
    

-- 15. **Select customers who have made reservations for events:**
   
    SELECT DISTINCT c.* FROM customer c
    JOIN events e ON c.customer_id = e.customer_id;
    

-- 16. **Select customers who have left reviews for restaurants:**
    
    SELECT DISTINCT c.* FROM customer c
    JOIN review rv ON c.customer_id = rv.customer_id;
    

-- 17. **Select restaurants with a specific category:**
    
    SELECT * FROM restaurants r
    JOIN rest_catogries rc ON r.catg_id = rc.catg_id
    WHERE rc.catg_name = 'Asian Fusion';
    

-- 18. **Select events happening on a specific date:**
   
    SELECT * FROM events
    WHERE event_date = '2024-05-20';
   

-- 19. **Select menu items with prices greater than $15:**
    
    SELECT * FROM menu
    WHERE price > 15.00;
    
    
    
   -- 20 Query to get the total amount of each customer's orders:

SELECT c.customer_id, c.customer_name, SUM(o.order_amount) AS total_order_amount
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;


-- 21 Query to get the average rating of each restaurant:

SELECT r.restaurant_id, r.restaurant_name, AVG(rev.rating) AS average_rating
FROM restaurants r
JOIN review rev ON r.restaurant_id = rev.restaurant_id
GROUP BY r.restaurant_id;



-- 22 Query to find the total revenue generated by each restaurant:

SELECT r.restaurant_id, r.restaurant_name, SUM(p.amount) AS total_revenue
FROM restaurants r
JOIN orders o ON r.restaurant_id = o.restaurant_id
JOIN payment p ON o.order_id = p.order_id
GROUP BY r.restaurant_id;



-- 23 Query to count the number of reservations for each restaurant:

SELECT r.restaurant_id, r.restaurant_name, COUNT(rv.Resrv_id) AS num_reservations
FROM restaurants r
JOIN reservation rv ON r.restaurant_id = rv.restaurant_id
GROUP BY r.restaurant_id;


-- 22 Query to find the top 3 restaurants with the highest revenue:

SELECT r.restaurant_id, r.restaurant_name, SUM(p.amount) AS total_revenue
FROM restaurants r
JOIN orders o ON r.restaurant_id = o.restaurant_id
JOIN payment p ON o.order_id = p.order_id
GROUP BY r.restaurant_id
ORDER BY total_revenue DESC
LIMIT 3;


-- 23 Query to get the average order amount for each restaurant:

SELECT r.restaurant_id, r.restaurant_name, AVG(o.order_amount) AS avg_order_amount
FROM restaurants r
JOIN orders o ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id;


-- 24 Query to find the total number of orders placed by each customer in 2024:

SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
WHERE YEAR(o.order_date) = 2024
GROUP BY c.customer_id;


-- 25 Find the customers who have spent more than $1000 in total:
SELECT 
    c.customer_id, 
    c.customer_name, 
    SUM(o.order_amount) AS total_spent
FROM 
    customer c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, 
    c.customer_name
HAVING 
    total_spent > 1000;


-- 26 Find the number of active customers who have placed an order in the last month:

SELECT 
    COUNT(DISTINCT o.customer_id) AS active_customers
FROM 
    orders o
WHERE 
    o.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH);
*/


/*
-- funtions

SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$
CREATE FUNCTION CalculateTotalOrderAmount(customer_id INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total_order_amount DECIMAL(10,2);
    
    SELECT SUM(order_amount) INTO total_order_amount
    FROM orders
    WHERE customer_id = customer_id;
    
    RETURN total_order_amount;
END$$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION calculate_total_revenue(restaurant_id INT) RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total_revenue DECIMAL(10,2);
    SELECT SUM(order_amount) INTO total_revenue
    FROM orders
    WHERE restaurant_id = restaurant_id;
    RETURN total_revenue;
END$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION get_latest_order_date(customer_id INT) RETURNS DATE
BEGIN
    DECLARE latest_date DATE;
    SELECT MAX(order_date) INTO latest_date
    FROM orders
    WHERE customer_id = customer_id;
    RETURN latest_date;
END$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION CalculateAverageOrderAmount(restaurant_id INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE avg_order_amount DECIMAL(10,2);
    
    SELECT AVG(order_amount) INTO avg_order_amount
    FROM orders
    WHERE restaurant_id = restaurant_id;
    
    RETURN avg_order_amount;
END$$
DELIMITER ;
*/






