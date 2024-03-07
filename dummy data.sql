use ecommercedb;

-- VendorAuthentication
INSERT INTO VendorAuthentication (vendor_email, password_hash) VALUES
('john.doe@shopify.com', 'password1'),
('emma.smith@amazon.com', 'password2'),
('michael.johnson@ebay.com', 'password3'),
('sarah.wilson@etsy.com', 'password4'),
('james.brown@alibaba.com', 'password5'),
('nancy.jones@walmart.com', 'password6'),
('adam.smith@tesla.com', 'password7'),
('lisa.jackson@target.com', 'password8'),
('mark.white@nike.com', 'password9'),
('mary.brown@adidas.com', 'password10'),
('alex.wilson@hm.com', 'password11'),
('william.smith@bestbuy.com', 'password12'),
('olivia.johnson@microsoft.com', 'password13'),
('david.davis@costco.com', 'password14'),
('sophia.brown@target.com', 'password15'),
('ethan.jones@walmart.com', 'password16'),
('ava.miller@amazon.com', 'password17'),
('noah.wilson@ebay.com', 'password18'),
('mia.garcia@etsy.com', 'password19'),
('logan.brown@alibaba.com', 'password20');



-- Vendor
INSERT INTO Vendor (vendor_email, First_Name, Last_Name, Status, Mobile, City, State, Zipcode, register_timestamp)
VALUES
('john.doe@shopify.com', 'John', 'Doe', 1, '{"primary": "1234567890", "secondary": "9876543210"}', 'New York', 'NY', '10001', '2021-03-15 10:30:00'),
('emma.smith@amazon.com', 'Emma', 'Smith', 1, '{"primary": "2345678901", "secondary": "8901234567"}', 'Los Angeles', 'CA', '90001', '2022-06-20 14:45:00'),
('michael.johnson@ebay.com', 'Michael', 'Johnson', 0, '{"primary": "3456789012", "secondary": "9012345678"}', 'Chicago', 'IL', '60601', '2023-09-12 08:20:00'),
('sarah.wilson@etsy.com', 'Sarah', 'Wilson', 1, '{"primary": "4567890123", "secondary": "0123456789"}', 'Houston', 'TX', '77001', '2024-01-05 18:00:00'),
('james.brown@alibaba.com', 'James', 'Brown', 0, '{"primary": "5678901234", "secondary": "1234567890"}', 'Miami', 'FL', '33101', '2021-01-01 22:10:00'),
('nancy.jones@walmart.com', 'Nancy', 'Jones', 1, '{"primary": "6789012345", "secondary": "2345678901"}', 'Dallas', 'TX', '75201', '2023-03-25 11:30:00'),
('adam.smith@tesla.com', 'Adam', 'Smith', 0, '{"primary": "7890123456", "secondary": "3456789012"}', 'San Francisco', 'CA', '94101', '2022-11-15 09:45:00'),
('lisa.jackson@target.com', 'Lisa', 'Jackson', 1, '{"primary": "8901234567", "secondary": "4567890123"}', 'Minneapolis', 'MN', '55401', '2021-08-05 16:20:00'),
('mark.white@nike.com', 'Mark', 'White', 1, '{"primary": "9012345678", "secondary": "5678901234"}', 'Portland', 'OR', '97201', '2024-03-03 09:30:00'),
('mary.brown@adidas.com', 'Mary', 'Brown', 1, '{"primary": "0123456789", "secondary": "6789012345"}', 'Portland', 'OR', '97201', '2024-03-03 10:45:00'),
('alex.wilson@hm.com', 'Alex', 'Wilson', 0, '{"primary": "1234567890", "secondary": "7890123456"}', 'Stockholm', 'Stockholm', '11120', '2024-03-03 12:15:00'),
('william.smith@bestbuy.com', 'William', 'Smith', 1, '{"primary": "2345678901", "secondary": "8901234567"}', 'Richfield', 'MN', '55423', '2023-05-10 14:00:00'),
('olivia.johnson@microsoft.com', 'Olivia', 'Johnson', 0, '{"primary": "3456789012", "secondary": "9012345678"}', 'Redmond', 'WA', '98052', '2022-07-18 17:30:00'),
('david.davis@costco.com', 'David', 'Davis', 1, '{"primary": "4567890123", "secondary": "0123456789"}', 'Issaquah', 'WA', '98027', '2021-10-22 19:20:00'),
('sophia.brown@target.com', 'Sophia', 'Brown', 1, '{"primary": "5678901234", "secondary": "1234567890"}', 'Minneapolis', 'MN', '55401', '2024-02-14 20:45:00'),
('ethan.jones@walmart.com', 'Ethan', 'Jones', 0, '{"primary": "6789012345", "secondary": "2345678901"}', 'Dallas', 'TX', '75201', '2022-09-08 22:10:00'),
('ava.miller@amazon.com', 'Ava', 'Miller', 1, '{"primary": "7890123456", "secondary": "3456789012"}', 'Los Angeles', 'CA', '90001', '2023-12-05 23:55:00'),
('noah.wilson@ebay.com', 'Noah', 'Wilson', 1, '{"primary": "8901234567", "secondary": "4567890123"}', 'San Jose', 'CA', '95101', '2021-11-28 05:25:00'),
('mia.garcia@etsy.com', 'Mia', 'Garcia', 0, '{"primary": "9012345678", "secondary": "5678901234"}', 'Brooklyn', 'NY', '11201', '2023-04-02 07:40:00'),
('logan.brown@alibaba.com', 'Logan', 'Brown', 1, '{"primary": "0123456789", "secondary": "6789012345"}', 'Hangzhou', 'Zhejiang', '310000', '2022-08-16 08:55:00');


-- Insert into CustomerAuthentication table with Gmail addresses and realistic customer names for 10 customers
INSERT INTO CustomerAuthentication (customer_email, password_hash) VALUES
('rahul.sharma@gmail.com', 'password1'),
('priya.patel@gmail.com', 'password2'),
('akash.singh@gmail.com', 'password3'),
('neha.jain@gmail.com', 'password4'),
('ananya.gupta@gmail.com', 'password5'),
('rohit.verma@gmail.com', 'password6'),
('tanvi.shah@gmail.com', 'password7'),
('vikram.das@gmail.com', 'password8'),
('shreya.mishra@gmail.com', 'password9'),
('arjun.chopra@gmail.com', 'password10'),
('mohit.gupta@gmail.com', 'password11'),
('anushka.singh@gmail.com', 'password12'),
('rishabh.patel@gmail.com', 'password13'),
('divya.sharma@gmail.com', 'password14'),
('kunal.jain@gmail.com', 'password15'),
('aakash.patel@gmail.com', 'password16'),
('priyanka.shah@gmail.com', 'password17'),
('ankita.mishra@gmail.com', 'password18'),
('tanmay.sharma@gmail.com', 'password19'),
('arpan.mittal@gmail.com', 'password20');

-- Insert into Customer table with realistic customer data matching email addresses from CustomerAuthentication
INSERT INTO Customer (cust_email, First_name, Last_name, Mobile, City, State, Zipcode, register_timestamp)
VALUES
('rahul.sharma@gmail.com', 'Rahul', 'Sharma', '{"primary": "1234567890", "secondary": "9876543210"}', 'Mumbai', 'Maharashtra', '400001', '2021-01-01 10:30:00'),
('priya.patel@gmail.com', 'Priya', 'Patel', '{"primary": "2345678901", "secondary": "8901234567"}', 'Ahmedabad', 'Gujarat', '380001', '2021-01-01 14:45:00'),
('akash.singh@gmail.com', 'Akash', 'Singh', '{"primary": "3456789012", "secondary": "9012345678"}', 'Delhi', 'Delhi', '110001', '2021-02-20 08:20:00'),
('neha.jain@gmail.com', 'Neha', 'Jain', '{"primary": "4567890123", "secondary": "0123456789"}', 'Bangalore', 'Karnataka', '560001', '2021-05-12 18:00:00'),
('ananya.gupta@gmail.com', 'Ananya', 'Gupta', '{"primary": "5678901234", "secondary": "1234567890"}', 'Kolkata', 'West Bengal', '700001', '2022-07-30 22:10:00'),
('rohit.verma@gmail.com', 'Rohit', 'Verma', '{"primary": "6789012345", "secondary": "2345678901"}', 'Chennai', 'Tamil Nadu', '600001', '2023-09-01 15:30:00'),
('tanvi.shah@gmail.com', 'Tanvi', 'Shah', '{"primary": "7890123456", "secondary": "3456789012"}', 'Pune', 'Maharashtra', '411001', '2024-01-05 12:45:00'),
('vikram.das@gmail.com', 'Vikram', 'Das', '{"primary": "8901234567", "secondary": "4567890123"}', 'Hyderabad', 'Telangana', '500001', '2024-02-10 08:00:00'),
('shreya.mishra@gmail.com', 'Shreya', 'Mishra', '{"primary": "9012345678", "secondary": "5678901234"}', 'Jaipur', 'Rajasthan', '302001', '2022-03-15 18:20:00'),
('arjun.chopra@gmail.com', 'Arjun', 'Chopra', '{"primary": "0123456789", "secondary": "6789012345"}', 'Chandigarh', 'Chandigarh', '160001', '2023-04-20 09:30:00'),
('mohit.gupta@gmail.com', 'Mohit', 'Gupta', '{"primary": "1111222233", "secondary": "4444555566"}', 'Lucknow', 'Uttar Pradesh', '226001', '2024-06-25 16:40:00'),
('anushka.singh@gmail.com', 'Anushka', 'Singh', '{"primary": "2222333344", "secondary": "5555666777"}', 'Indore', 'Madhya Pradesh', '452001', '2023-08-05 14:50:00'),
('rishabh.patel@gmail.com', 'Rishabh', 'Patel', '{"primary": "3333444455", "secondary": "6666777788"}', 'Surat', 'Gujarat', '395001', '2022-10-10 13:00:00'),
('divya.sharma@gmail.com', 'Divya', 'Sharma', '{"primary": "4444555566", "secondary": "7777888899"}', 'Agra', 'Uttar Pradesh', '282001', '2022-11-15 11:20:00'),
('kunal.jain@gmail.com', 'Kunal', 'Jain', '{"primary": "5555666777", "secondary": "8888999900"}', 'Nagpur', 'Maharashtra', '440001', '2021-12-20 10:10:00'),
('aakash.patel@gmail.com', 'Aakash', 'Patel', '{"primary": "6666777788", "secondary": "9999000011"}', 'Vadodara', 'Gujarat', '390001', '2022-08-25 15:45:00'),
('priyanka.shah@gmail.com', 'Priyanka', 'Shah', '{"primary": "7777888899", "secondary": "0000111122"}', 'Bhopal', 'Madhya Pradesh', '462001', '2023-03-01 17:00:00'),
('ankita.mishra@gmail.com', 'Ankita', 'Mishra', '{"primary": "8888999900", "secondary": "1111222233"}', 'Patna', 'Bihar', '800001', '2024-04-09 18:00:00'),
('tanmay.sharma@gmail.com', 'Tanmay', 'Sharma', '{"primary": "0011223344", "secondary": "5566778899"}', 'Varanasi', 'Uttar Pradesh', '221001', '2021-03-15 22:10:00');


-- Generate dummy data for Item table
INSERT INTO Item (name, description, price, category)
VALUES
('Teddy Dog', 'Teddy Dog: A medium-sized, red soy wax creation with a delightful vanilla fragrance, capturing the essence of a teddy bear-inspired dog in a charming pose.', 999.99, 'Shaped'),
('Study Buddy Cat', 'Study Buddy Cat: A medium-sized, yellow bee wax candle featuring a charming feline pose and a soothing vanilla fragrance—an ideal companion for your cozy study sessions.', 2399.99, 'Printed'),
('Feline Charm', 'Feline Charm Cat: A small black bee wax candle exuding the delightful fragrance of strawberry, adorned with an enchanting cat pose for a touch of whimsical charm', 199.99, 'Printed'),
('KittyZen', 'KittyZen Cat: A large yellow honey wax candle featuring a calming cat pose, infused with the sweet essence of strawberry, perfect for creating a serene ambiance in your space.', 149.99, 'Shaped'),
('WhiskerGlow', 'WhiskerGlow Dog: A large yellow bee wax candle capturing the essence of a dog pose, accompanied by a delectable chocolate fragrance for a delightful and cozy atmosphere.', 119.99, 'Shaped'),
('PurePup Glow', 'PurePup Glow Dog: A medium-sized pink bee wax candle featuring an endearing dog pose, complemented by a sweet strawberry fragrance for a pure and delightful canine-inspired ambiance', 149.99, 'Shaped'),
('Pink Harmony Glow', 'Pink Harmony Glow Dog: A medium-sized pink bee wax candle with a captivating dog pose, harmonized by a sweet strawberry fragrance for a perfect blend of warmth and tranquility.', 39.99, 'Printed'),
('Pawsome Collection', 'PawsomeGlowCollection Dog Paws: A medium-sized soy wax candle with a delightful strawberry fragrance, featuring an array of adorable dog paw prints for a charming and pawsitively delightful touch to your space.', 99.99, 'Shaped'),
('DarkWhisker Glow', 'DarkWhiskerGlow Cat: A small black soy wax candle capturing the essence of a cat face, infused with the rich aroma of chocolate for a cozy and indulgent feline-inspired experience.', 169.99, 'Printed'),
('Zen Dog', 'Zen Dog: A medium-sized black bee wax candle featuring a tranquil dog pose and the indulgent fragrance of chocolate—a perfect addition to create a calming and cozy atmosphere in your space.', 99.99, 'Shaped'),
('Calm Canine', 'Calm Canine Dog: A medium-sized yellow soy wax candle that captures the essence of a serene dog pose, complemented by a soothing vanilla fragrance—a perfect addition to create a tranquil ambiance in your space.', 29.99, 'Shaped'),
('MintyPup', 'MintyPup Dog: A medium-sized green honey wax candle featuring a delightful dog pose and the soothing fragrance of vanilla—an invigorating addition to create a minty-fresh atmosphere in your space', 79.99, 'Shaped'),
('Maternal Melted Moments', 'Maternal Melted Moments Dog: A large white bee wax candle featuring a heartwarming dog pose, infused with the classic fragrance of vanilla, and adorned with printed details for a timeless and comforting addition to your space.', 119.99, 'Shaped'),
('Antique Countenance Canine', 'Antique Countenance Canine Dog: A large white bee wax candle featuring the distinguished face of a dog, coupled with the classic fragrance of vanilla—a timeless and elegant addition to your decor.', 149.99, 'Shaped'),
('Little Luminary Lick', 'Little Luminary Lick Dog: A small white soy wax candle featuring the endearing face of a dog, radiating the classic fragrance of vanilla—an enchanting addition to illuminate your space with warmth and charm.', 189.99, 'Printed'),
('Little Lollipop Flames', 'Little Lollipop Flames Cat: A small soy wax candle featuring the delightful face of a cat, complemented by the classic fragrance of vanilla—creating a charming and flavorful atmosphere for your space.', 1799.99, 'Printed'),
('Feline Fury Flame', 'Feline Fury Flame Cat: A medium-sized soy wax candle featuring the fierce face of a cat, enhanced with a decadent chocolate fragrance and adorned with printed details—an expressive and flavorful addition to your space.', 39.99, 'Shaped'),
('Mellow Red Purr Pillar', 'Mellow Red Purr Pillar Cat: A large red honey wax candle featuring a serene cat pose, accompanied by the rich fragrance of chocolate—a delightful and comforting addition to your space at an affordable price.', 99.99, 'Shaped'),
('SilverMew', 'ilverMew Cat: A medium-sized silver honey wax candle featuring an elegant cat pose and the soothing fragrance of vanilla—a graceful addition to your space, blending sophistication with a touch of feline charm.', 129.99, 'Printed'),
('Feline Mews', 'Hybrid of both SilverMew and Feline Fury Flame', 179.99, 'Printed');

-- Generate dummy data for Inventory_Item table
INSERT INTO Inventory_Item (item_id, vendor_email, item_qty, item_added_timestamp, item_updated_timestamp)
VALUES
(1, 'john.doe@shopify.com', 100, '2021-03-15 10:30:00', '2021-03-15 10:30:00'),
(2, 'emma.smith@amazon.com', 50, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(3, 'michael.johnson@ebay.com', 75, '2023-09-12 08:20:00', '2023-09-12 08:20:00'),
(4, 'sarah.wilson@etsy.com', 80, '2024-01-05 18:00:00', '2024-01-05 18:00:00'),
(5, 'james.brown@alibaba.com', 60, '2021-01-01 22:10:00', '2021-01-01 22:10:00'),
(6, 'john.doe@shopify.com', 90, '2021-03-15 10:30:00', '2021-03-15 10:30:00'),
(7, 'emma.smith@amazon.com', 70, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(8, 'emma.smith@amazon.com', 65, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(9, 'michael.johnson@ebay.com', 85, '2023-09-12 08:20:00', '2023-09-12 08:20:00'),
(10, 'sarah.wilson@etsy.com', 55, '2024-01-05 18:00:00', '2024-01-05 18:00:00'),
(11, 'john.doe@shopify.com', 120, '2021-03-15 10:30:00', '2021-03-15 10:30:00'),
(12, 'emma.smith@amazon.com', 70, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(13, 'michael.johnson@ebay.com', 100, '2023-09-12 08:20:00', '2023-09-12 08:20:00'),
(14, 'sarah.wilson@etsy.com', 90, '2024-01-05 18:00:00', '2024-01-05 18:00:00'),
(15, 'james.brown@alibaba.com', 80, '2021-01-01 22:10:00', '2021-01-01 22:10:00'),
(16, 'john.doe@shopify.com', 110, '2021-03-15 10:30:00', '2021-03-15 10:30:00'),
(17, 'emma.smith@amazon.com', 95, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(18, 'emma.smith@amazon.com', 75, '2022-06-20 14:45:00', '2022-06-20 14:45:00'),
(19, 'michael.johnson@ebay.com', 105, '2023-09-12 08:20:00', '2023-09-12 08:20:00'),
(20, 'sarah.wilson@etsy.com', 85, '2024-01-05 18:00:00', '2024-01-05 18:00:00');



-- Generate dummy data for Payment_method table
INSERT INTO Payment_method (card_no, card_type, cust_email)
VALUES
('1234567890123456', 'Visa', 'rahul.sharma@gmail.com'),
('2345678901234567', 'Mastercard', 'priya.patel@gmail.com'),
('3456789012345678', 'American Express', 'akash.singh@gmail.com'),
('4567890123456789', 'Visa', 'neha.jain@gmail.com'),
('5678901234567890', 'Mastercard', 'ananya.gupta@gmail.com'),
('6789012345678901', 'American Express', 'rohit.verma@gmail.com'),
('7890123456789012', 'Visa', 'tanvi.shah@gmail.com'),
('8901234567890123', 'Mastercard', 'vikram.das@gmail.com'),
('9012345678901234', 'American Express', 'shreya.mishra@gmail.com'),
('0123456789012345', 'Visa', 'arjun.chopra@gmail.com'),
('1234567890123456', 'Visa', 'mohit.gupta@gmail.com'),
('2345678901234567', 'Mastercard', 'anushka.singh@gmail.com'),
('3456789012345678', 'American Express', 'rishabh.patel@gmail.com'),
('4567890123456789', 'Visa', 'divya.sharma@gmail.com'),
('5678901234567890', 'Mastercard', 'kunal.jain@gmail.com'),
('6789012345678901', 'American Express', 'aakash.patel@gmail.com'),
('7890123456789012', 'Visa', 'priyanka.shah@gmail.com'),
('8901234567890123', 'Mastercard', 'ankita.mishra@gmail.com'),
('9012345678901234', 'American Express', 'tanmay.sharma@gmail.com');

-- Generate dummy data for Order table
INSERT INTO `Order` (payment_method_id, cust_email, Order_Placed_timestamp)
VALUES
(1, 'rahul.sharma@gmail.com', '2022-01-15 10:30:00'),
(2, 'priya.patel@gmail.com', '2023-05-20 14:45:00'),
(1, 'rahul.sharma@gmail.com', '2023-07-12 08:20:00'),
(4, 'neha.jain@gmail.com', '2021-10-05 18:00:00'),
(5, 'ananya.gupta@gmail.com', '2022-08-30 22:10:00'),
(6, 'rohit.verma@gmail.com', '2024-02-01 15:30:00'),
(7, 'tanvi.shah@gmail.com', '2024-02-05 12:45:00'),
(1, 'rahul.sharma@gmail.com', '2024-01-01 09:30:00'),
(2, 'priya.patel@gmail.com', '2023-09-15 14:00:00'),
(10, 'arjun.chopra@gmail.com', '2023-12-20 10:10:00'),
(16, 'aakash.patel@gmail.com', '2023-08-15 10:30:00'),
(17, 'priyanka.shah@gmail.com', '2024-03-12 14:45:00'),
(18, 'ankita.mishra@gmail.com', '2024-05-12 08:20:00'),
(19, 'tanmay.sharma@gmail.com', '2023-02-05 18:00:00'),
(16, 'aakash.patel@gmail.com', '2023-09-30 22:10:00'),
(17, 'priyanka.shah@gmail.com', '2024-06-01 15:30:00'),
(18, 'ankita.mishra@gmail.com', '2024-07-05 12:45:00'),
(19, 'tanmay.sharma@gmail.com', '2023-03-01 09:30:00'),
(16, 'aakash.patel@gmail.com', '2023-10-15 14:00:00'),
(17, 'priyanka.shah@gmail.com', '2024-01-20 10:10:00');


-- Generate dummy data for Cart_Item table
INSERT INTO Cart_Item (item_id, cust_email, cart_item_qty)
VALUES
(11, 'rahul.sharma@gmail.com', 1),
(12, 'priya.patel@gmail.com', 2),
(13, 'akash.singh@gmail.com', 1),
(14, 'neha.jain@gmail.com', 3),
(15, 'ananya.gupta@gmail.com', 2),
(16, 'rohit.verma@gmail.com', 1),
(17, 'tanvi.shah@gmail.com', 2),
(18, 'vikram.das@gmail.com', 1),
(19, 'shreya.mishra@gmail.com', 3),
(20, 'arjun.chopra@gmail.com', 1);


INSERT INTO Order_Details (order_id, item_id, item_qty)
VALUES
-- Order 1
(1, 1, 3),   -- Three items of item_id 1
(1, 5, 2),   -- Two items of item_id 5
(1, 9, 4),   -- Four items of item_id 9
(1, 12, 1),  -- One item of item_id 12
(1, 18, 3),  -- Three items of item_id 18

-- Order 2
(2, 3, 2),   -- Two items of item_id 3
(2, 7, 1),   -- One item of item_id 7
(2, 11, 3),  -- Three items of item_id 11
(2, 14, 4),  -- Four items of item_id 14
(2, 19, 2),  -- Two items of item_id 19

-- Order 3
(3, 2, 4),   -- Four items of item_id 2
(3, 6, 3),   -- Three items of item_id 6
(3, 10, 1),  -- One item of item_id 10
(3, 13, 2),  -- Two items of item_id 13
(3, 20, 4),  -- Four items of item_id 20

-- Order 4
(4, 4, 1),   -- One item of item_id 4
(4, 8, 2),   -- Two items of item_id 8
(4, 12, 3),  -- Three items of item_id 12
(4, 15, 4),  -- Four items of item_id 15
(4, 17, 1),  -- One item of item_id 17

-- Order 5
(5, 1, 2),   -- Two items of item_id 1
(5, 5, 3),   -- Three items of item_id 5
(5, 9, 4),   -- Four items of item_id 9
(5, 14, 1),  -- One item of item_id 14
(5, 20, 2),  -- Two items of item_id 20

 -- Order 6
(6, 2, 1),   -- One item of item_id 2
(6, 6, 4),   -- Four items of item_id 6
(6, 11, 3),  -- Three items of item_id 11
(6, 16, 2),  -- Two items of item_id 16
(6, 19, 1),  -- One item of item_id 19

-- Order 7
(7, 3, 2),   -- Two items of item_id 3
(7, 7, 3),   -- Three items of item_id 7
(7, 12, 4),  -- Four items of item_id 12
(7, 15, 1),  -- One item of item_id 15
(7, 18, 2),  -- Two items of item_id 18

-- Order 8
(8, 1, 3),   -- Three items of item_id 1
(8, 5, 2),   -- Two items of item_id 5
(8, 9, 1),   -- One item of item_id 9
(8, 14, 4),  -- Four items of item_id 14
(8, 20, 3),  -- Three items of item_id 20

-- Order 9
(9, 2, 4),   -- Four items of item_id 2
(9, 6, 3),   -- Three items of item_id 6
(9, 10, 2),  -- Two items of item_id 10
(9, 13, 1),  -- One item of item_id 13
(9, 17, 4),  -- Four items of item_id 17

-- Order 10
(10, 3, 1),   -- One item of item_id 3
(10, 7, 2),   -- Two items of item_id 7
(10, 11, 3),  -- Three items of item_id 11
(10, 15, 4),  -- Four items of item_id 15
(10, 19, 1),  -- One item of item_id 19

-- Order 11
(11, 4, 2),   -- Two items of item_id 4
(11, 8, 3),   -- Three items of item_id 8
(11, 12, 1),  -- One item of item_id 12
(11, 16, 4),  -- Four items of item_id 16
(11, 20, 2),  -- Two items of item_id 20

-- Order 12
(12, 1, 1),   -- One item of item_id 1
(12, 6, 2),   -- Two items of item_id 6
(12, 9, 3),   -- Three items of item_id 9
(12, 13, 4),  -- Four items of item_id 13
(12, 18, 1),  -- One item of item_id 18

-- Order 13
(13, 2, 4),   -- Four items of item_id 2
(13, 7, 3),   -- Three items of item_id 7
(13, 11, 2),  -- Two items of item_id 11
(13, 15, 1),  -- One item of item_id 15
(13, 19, 2),  -- Two items of item_id 19

-- Order 14
(14, 3, 3),   -- Three items of item_id 3
(14, 8, 4),   -- Four items of item_id 8
(14, 12, 1),  -- One item of item_id 12
(14, 16, 2),  -- Two items of item_id 16
(14, 20, 3),  -- Three items of item_id 20

-- Order 15
(15, 1, 2),   -- Two items of item_id 1
(15, 6, 3),   -- Three items of item_id 6
(15, 9, 4),   -- Four items of item_id 9
(15, 13, 1),  -- One item of item_id 13
(15, 18, 2),  -- Two items of item_id 18

-- Order 16
(16, 2, 3),   -- Three items of item_id 2
(16, 7, 4),   -- Four items of item_id 7
(16, 11, 1),  -- One item of item_id 11
(16, 15, 2),  -- Two items of item_id 15
(16, 19, 3),  -- Three items of item_id 19

-- Order 17
(17, 3, 4),   -- Four items of item_id 3
(17, 8, 1),   -- One item of item_id 8
(17, 12, 2),  -- Two items of item_id 12
(17, 16, 3),  -- Three items of item_id 16
(17, 20, 4),  -- Four items of item_id 20

-- Order 18
(18, 4, 1),   -- One item of item_id 4
(18, 9, 2),   -- Two items of item_id 9
(18, 13, 3),  -- Three items of item_id 13
(18, 17, 4),  -- Four items of item_id 17
(18, 19, 1),  -- One item of item_id 19

-- Order 19
(19, 5, 2),   -- Two items of item_id 5
(19, 10, 3),  -- Three items of item_id 10
(19, 14, 4),  -- Four items of item_id 14
(19, 18, 1),  -- One item of item_id 18
(19, 20, 2),  -- Two items of item_id 20

-- Order 20
(20, 6, 3),   -- Three items of item_id 6
(20, 11, 4),  -- Four items of item_id 11
(20, 15, 1),  -- One item of item_id 15
(20, 17, 2),  -- Two items of item_id 17
(20, 19, 3);  -- Three items of item_id 19
