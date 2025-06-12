# 🏸 Badminton Shop Database Project

This repository contains the complete database system design and SQL implementation for a real-world **badminton shop** located in **Rongmohol Tower, Bondorbazar, Sylhet, Bangladesh**. This project was completed as part of my **Master’s in Information Technology** coursework for the course **Database Administration and Architecture Design**.

---

## 📌 Project Overview

The project follows a structured real-world database development workflow:

1. ✅ **BRS (Business Requirements Specification)**  
   Collected directly from a local badminton shop, outlining key business operations such as product management, order processing, customer records, payments, sales tracking, and inventory.

2. ✅ **Use Case Diagram**  
   Visual representation of system actors and their interactions, focusing on roles like customer, owner, and admin.

3. ✅ **Process Flow Diagram**  
   A clear flow of how data moves within the shop’s daily operations—from placing orders to delivery and payment.

4. ✅ **ERD (Entity-Relationship Diagram)**  
   Designed to reflect real-life relationships among entities like Products, Orders, Customers, Owners, Sales, and Stock.

5. ✅ **Database Schema**  
   Carefully normalized SQL schema using MySQL with **utf8mb4** charset for Bangla language compatibility.

6. ✅ **SQL Implementation**  
   - Insert queries with 15 realistic Bangladeshi sample values for each table  
   - Useful business queries (30+) for learning, analysis, and exam preparation  
   - Triggers for auto-updating stock after sales  
   - Indexes for performance optimization

---

## 🧩 Tables Included

- `Users` – Login & roles (customer, owner, admin)  
- `Customer` – Customer information  
- `Owner` – Shop owner data  
- `Category` – Product categories  
- `Product` – Item details and status  
- `Orders` – Customer orders  
- `Delivery` – Delivery methods and status  
- `Payment` – Payment info and status  
- `Sales` – Transaction records with auto-calculated total  
- `Stock` – Stock updates by owner  

---

## 📁 Files in This Repository

| File Name               | Description                                      |
|------------------------|--------------------------------------------------|
| `schema.sql`           | Full database schema with relationships          |
| `insert_queries.sql`   | 15 sample realistic entries for each table       |
| `business_queries.sql` | 30+ helpful beginner-friendly SQL queries        |
| `trigger.sql`          | SQL trigger for auto stock update after sale     |
| `README.md`            | Project summary and documentation                |
| `brs.pdf`              | Business Requirements Specification              |
| `use_case.png`         | Use Case Diagram                                 |
| `process_flow.png`     | Process Flow Diagram                             |
| `erd.png`              | ER Diagram                                       |

---

## 💡 Learning Outcomes

This project helped me understand and apply:
- Real-world business analysis & data modeling  
- Normalized schema design using MySQL  
- Writing complex SQL queries for analytics  
- Using triggers and indexes in database optimization  
- Converting a business into a working database system

---

## 🔗 Live Use Case: Badminton Shop in Sylhet

> Real data and logic were gathered from a functioning shop in Rongmohol Tower, Bondorbazar, Sylhet, Bangladesh — making this system grounded in **actual business operations**.

---

## 🧑‍🎓 Course Information

- 📘 Course: **Database Administration and Architecture Design**  
- 🎓 Degree: Master’s in Information Technology  
- 🏫 University: Shahjalal University of Science and Technology

---

## 📧 Author

**Arpita Roy**  
📍 Sylhet, Bangladesh  
💼 Passionate about teaching, databases, and IT systems  
📫 Email: arpita3156@gmail.com

---

> *“Turning real business into working systems — one query at a time.”*

