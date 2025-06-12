INSERT INTO Users (username, password_hash, role, email) VALUES
('cus_arpita', 'hash123', 'customer', 'arpita@gmail.com'),
('cus_rakib', 'hash123', 'customer', 'rakib@gmail.com'),
('owner_jamil', 'hash123', 'owner', 'jamil@shop.com'),
('owner_tanvir', 'hash123', 'owner', 'tanvir@shop.com'),
('admin_1', 'hash123', 'admin', 'admin@badmintonshop.com'),
('cus_rahim', 'hash123', 'customer', 'rahim@gmail.com'),
('cus_nusrat', 'hash123', 'customer', 'nusrat@gmail.com'),
('owner_rubel', 'hash123', 'owner', 'rubel@shop.com'),
('cus_farhan', 'hash123', 'customer', 'farhan@gmail.com'),
('cus_tanisha', 'hash123', 'customer', 'tanisha@gmail.com'),
('cus_mim', 'hash123', 'customer', 'mim@gmail.com'),
('cus_rifat', 'hash123', 'customer', 'rifat@gmail.com'),
('cus_sabila', 'hash123', 'customer', 'sabila@gmail.com'),
('owner_rashed', 'hash123', 'owner', 'rashed@shop.com'),
('cus_joy', 'hash123', 'customer', 'joy@gmail.com');

INSERT INTO Customer (user_id, cus_name, cus_email, cus_mobile, cus_address) VALUES
(1, 'Arpita Roy', 'arpita@gmail.com', '01710000001', 'Sylhet, Bangladesh'),
(2, 'Rakib Hossain', 'rakib@gmail.com', '01710000002', 'Dhaka, Bangladesh'),
(6, 'Rahim Uddin', 'rahim@gmail.com', '01710000003', 'Chittagong, Bangladesh'),
(7, 'Nusrat Jahan', 'nusrat@gmail.com', '01710000004', 'Khulna, Bangladesh'),
(9, 'Farhan Ahmed', 'farhan@gmail.com', '01710000005', 'Barisal, Bangladesh'),
(10, 'Tanisha Akter', 'tanisha@gmail.com', '01710000006', 'Rajshahi, Bangladesh'),
(11, 'Mim Islam', 'mim@gmail.com', '01710000007', 'Comilla, Bangladesh'),
(12, 'Rifat Karim', 'rifat@gmail.com', '01710000008', 'Mymensingh, Bangladesh'),
(13, 'Sabila Rahman', 'sabila@gmail.com', '01710000009', 'Sylhet, Bangladesh'),
(15, 'Joy Das', 'joy@gmail.com', '01710000010', 'Dhaka, Bangladesh');

INSERT INTO Owner (user_id, owner_name, owner_email, owner_mobile) VALUES
(3, 'Jamil Ahmed', 'jamil@shop.com', '01810000001'),
(4, 'Tanvir Hossain', 'tanvir@shop.com', '01810000002'),
(8, 'Rubel Karim', 'rubel@shop.com', '01810000003'),
(14, 'Rashed Khan', 'rashed@shop.com', '01810000004');

INSERT INTO Category (cat_name) VALUES
('Badminton Rackets'),
('Badminton Shuttlecocks'),
('Sports Shoes'),
('Sports Apparel'),
('Grips & Strings'),
('Bags & Covers'),
('Accessories'),
('Training Equipment'),
('Fitness Gear'),
('Nutrition & Health'),
('Headbands & Wristbands'),
('Replacement Parts'),
('Coaching Aids'),
('Lighting & Nets'),
('Outdoor Equipment');

INSERT INTO Product (product_name, available_quantity, selling_price, product_brand, product_image, product_description, cat_id, status) VALUES
('Yonex Astrox 99', 50, 16000.00, 'Yonex', 'astrox99.jpg', 'High performance racket for professionals.', 1, 'active'),
('Li-Ning Turbo Shuttlecock', 200, 120.00, 'Li-Ning', 'turbo_shuttle.jpg', 'Durable feather shuttlecock, pack of 12.', 2, 'active'),
('Yonex Power Cushion Shoes', 30, 7500.00, 'Yonex', 'shoes.jpg', 'Comfortable shoes with excellent grip.', 3, 'active'),
('Victor T-shirt', 100, 800.00, 'Victor', 'victor_tshirt.jpg', 'Lightweight and breathable sportswear.', 4, 'active'),
('Yonex BG65 String', 150, 250.00, 'Yonex', 'bg65string.jpg', 'Durable string for rackets.', 5, 'active'),
('Li-Ning Racket Bag', 40, 3200.00, 'Li-Ning', 'racket_bag.jpg', 'Spacious bag for up to 3 rackets.', 6, 'active'),
('Grip Tape', 500, 150.00, 'Generic', 'grip_tape.jpg', 'Non-slip racket grip tape.', 7, 'active'),
('Agility Ladder', 25, 1200.00, 'Generic', 'agility_ladder.jpg', 'Training ladder for footwork.', 8, 'active'),
('Jump Rope', 60, 500.00, 'Generic', 'jump_rope.jpg', 'Adjustable speed jump rope.', 9, 'active'),
('Energy Bars', 300, 90.00, 'Generic', 'energy_bars.jpg', 'Nutrition bars for athletes.', 10, 'active'),
('Wristbands', 250, 150.00, 'Yonex', 'wristbands.jpg', 'Sweat absorbing wristbands.', 11, 'active'),
('Replacement Grommets', 100, 600.00, 'Yonex', 'grommets.jpg', 'Set of replacement grommets.', 12, 'active'),
('Coach Whistle', 50, 300.00, 'Generic', 'whistle.jpg', 'Loud whistle for coaches.', 13, 'active'),
('Badminton Net', 10, 5500.00, 'Generic', 'net.jpg', 'Durable net for outdoor courts.', 14, 'active'),
('Outdoor Shuttlecock Holder', 15, 1800.00, 'Generic', 'holder.jpg', 'Protective holder for shuttlecocks.', 15, 'active');

INSERT INTO Orders (ord_description, ord_date, ord_total, order_status, cus_id) VALUES
('Order for Yonex racket and shuttlecock', '2025-06-01 10:30:00', 16120.00, 'delivered', 1),
('Order for shoes and apparel', '2025-06-03 12:00:00', 8300.00, 'shipped', 2),
('Order for grip tapes', '2025-06-05 15:45:00', 300.00, 'pending', 7),
('Order for training equipment', '2025-06-07 09:20:00', 1700.00, 'cancelled', 10),
('Order for energy bars and wristbands', '2025-06-08 11:10:00', 240.00, 'delivered', 11),
('Order for racket bag and replacement parts', '2025-06-10 13:30:00', 3800.00, 'pending', 13),
('Order for badminton net', '2025-06-11 08:00:00', 5500.00, 'delivered', 15),
('Order for shuttlecocks', '2025-06-12 14:00:00', 2400.00, 'pending', 9),
('Order for jump ropes', '2025-06-12 17:00:00', 1000.00, 'shipped', 6),
('Order for wristbands', '2025-06-13 10:30:00', 300.00, 'pending', 12),
('Order for coaching aids', '2025-06-14 11:00:00', 300.00, 'delivered', 1),
('Order for sports apparel', '2025-06-14 13:15:00', 800.00, 'shipped', 2),
('Order for shoes', '2025-06-15 09:45:00', 7500.00, 'delivered', 7),
('Order for racket string', '2025-06-15 15:30:00', 500.00, 'pending', 11),
('Order for energy bars', '2025-06-16 12:00:00', 270.00, 'delivered', 10);

INSERT INTO Delivery (ord_id, cus_id, delivery_method, delivery_status, delivery_address, delivery_date) VALUES
(1, 1, 'Home Delivery', 'delivered', 'Sylhet, Bangladesh', '2025-06-02'),
(2, 2, 'Courier (SA Paribahan)', 'shipped', 'Dhaka, Bangladesh', NULL),
(3, 7, 'In-store Pickup', 'pending', 'Khulna, Bangladesh', NULL),
(4, 10, 'Home Delivery', 'cancelled', 'Rajshahi, Bangladesh', NULL),
(5, 11, 'Home Delivery', 'delivered', 'Comilla, Bangladesh', '2025-06-09'),
(6, 13, 'Courier (SA Paribahan)', 'pending', 'Sylhet, Bangladesh', NULL),
(7, 15, 'Courier (SA Paribahan)', 'delivered', 'Dhaka, Bangladesh', '2025-06-12'),
(8, 9, 'In-store Pickup', 'pending', 'Barisal, Bangladesh', NULL),
(9, 6, 'Home Delivery', 'shipped', 'Chittagong, Bangladesh', NULL),
(10, 12, 'Courier (SA Paribahan)', 'pending', 'Mymensingh, Bangladesh', NULL),
(11, 1, 'Home Delivery', 'delivered', 'Sylhet, Bangladesh', '2025-06-15'),
(12, 2, 'In-store Pickup', 'shipped', 'Dhaka, Bangladesh', NULL),
(13, 7, 'Courier (SA Paribahan)', 'delivered', 'Khulna, Bangladesh', '2025-06-16'),
(14, 11, 'Home Delivery', 'pending', 'Comilla, Bangladesh', NULL),
(15, 10, 'Home Delivery', 'delivered', 'Rajshahi, Bangladesh', '2025-06-17');

INSERT INTO Payment (pay_amount, pay_date, pay_method, pay_status, ord_id) VALUES
(16120.00, '2025-06-01', 'bKash', 'paid', 1),
(8300.00, '2025-06-03', 'Cash on Delivery', 'pending', 2),
(300.00, '2025-06-05', 'Nagad', 'pending', 3),
(1700.00, '2025-06-07', 'bKash', 'cancelled', 4),
(240.00, '2025-06-08', 'bKash', 'paid', 5),
(3800.00, '2025-06-10', 'Nagad', 'pending', 6),
(5500.00, '2025-06-11', 'bKash', 'paid', 7),
(2400.00, '2025-06-12', 'Cash on Delivery', 'pending', 8),
(1000.00, '2025-06-12', 'bKash', 'pending', 9),
(300.00, '2025-06-13', 'bKash', 'pending', 10),
(300.00, '2025-06-14', 'Cash on Delivery', 'paid', 11),
(800.00, '2025-06-14', 'Nagad', 'pending', 12),
(7500.00, '2025-06-15', 'bKash', 'paid', 13),
(500.00, '2025-06-15', 'Nagad', 'pending', 14),
(270.00, '2025-06-16', 'bKash', 'paid', 15);

INSERT INTO Sales (prod_id, sale_quantity, sale_date, cus_id) VALUES
(1, 1, '2025-06-01', 1),
(2, 12, '2025-06-01', 1),
(3, 1, '2025-06-03', 2),
(4, 1, '2025-06-03', 2),
(7, 2, '2025-06-05', 7),
(8, 1, '2025-06-07', 10),
(10, 3, '2025-06-08', 11),
(6, 1, '2025-06-10', 13),
(14, 1, '2025-06-11', 15),
(2, 20, '2025-06-12', 9),
(9, 2, '2025-06-12', 6),
(11, 2, '2025-06-13', 12),
(4, 1, '2025-06-14', 1),
(3, 1, '2025-06-15', 7),
(10, 3, '2025-06-16', 10);

INSERT INTO Stock (prod_id, stock_quantity, stock_date) VALUES
(1, 50, '2025-05-25'),
(2, 200, '2025-05-25'),
(3, 30, '2025-05-25'),
(4, 100, '2025-05-25'),
(5, 150, '2025-05-25'),
(6, 40, '2025-05-25'),
(7, 500, '2025-05-25'),
(8, 25, '2025-05-25'),
(9, 60, '2025-05-25'),
(10, 300, '2025-05-25'),
(11, 250, '2025-05-25'),
(12, 100, '2025-05-25'),
(13, 50, '2025-05-25'),
(14, 10, '2025-05-25'),
(15, 15, '2025-05-25');

