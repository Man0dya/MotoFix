# 🚗 MotoFix – Online Vehicle Spare Parts Management System

MotoFix is a **comprehensive full-stack Java-based web application** designed to manage vehicle spare part inventory, streamline customer orders, and simplify admin operations. Built using **MVC architecture**, the project ensures strong **session management**, modular design with **DAO and Servlet layers**, and a responsive user interface using **JSP, HTML, CSS, and JavaScript**.

---

## 🌐 Features Overview

### 👤 Customer Features
- 🛍️ Browse and search for spare parts by category
- 🛒 Add to cart and proceed to checkout
- 🧾 Order confirmation with billing summary
- 👤 View and update profile
- 📩 Send messages and requests for unavailable parts

### 🧑‍💼 Admin Features
- 🧑‍💻 Admin dashboard with total insights
- 📦 Manage spare part inventory (CRUD operations)
- 👥 View and manage customer accounts
- 📬 View and respond to customer messages and requests
- 🧾 View and track checkout orders

---

## 🧰 Tech Stack

| Layer        | Technologies                              |
|--------------|--------------------------------------------|
| **Frontend** | HTML5, CSS3, JavaScript, JSP               |
| **Backend**  | Java Servlets, JDBC                        |
| **Database** | MySQL (Structured schema with relationships)|
| **Server**   | Apache Tomcat                              |
| **IDE**      | Eclipse IDE                                |
| **Architecture** | MVC Pattern                           |

---

## 🗂️ Project Structure

### 📄 JSP Pages
- `home.jsp`, `products.jsp`, `cart.jsp`, `checkout.jsp`, `profile.jsp`
- `admin.jsp`, `viewcustomer.jsp`, `addProduct.jsp`, `updateProduct.jsp`
- Shared layouts: `header.jsp`, `footer.jsp`
- Info pages: `about.jsp`, `contactus.jsp`, `faq.jsp`

### 🧠 Java Backend
- **Servlets:**  
  `LoginServlet`, `CreateAccountServlet`, `CartServlet`, `CheckoutServlet`, `LogoffServlet`, etc.

- **Model Classes:**  
  `Customer.java`, `Admin.java`, `Product.java`, `CartItem.java`

- **DAO Classes:**  
  `ConnectDB.java`, `AdminDAO.java`, `CheckoutDB.java`, `RequestpDB.java`

---

## 🛡️ Security & Session Management

- Secure login with **role-based redirection**
  - Admin ➝ `admin.jsp`
  - Customer ➝ `home.jsp`
- Session persists until logout (`LogoffServlet`)
- Authentication flow ensures user data protection

---

## 📁 Database Overview (MySQL)

- **Tables:**
  - `customers`
  - `admins`
  - `products`
  - `checkout`
  - `requests`
  - `messages`

- Efficient queries through **DAO classes** abstract DB operations.

---

## ✅ Key Highlights

- 📐 Cleanly structured using **MVC architecture**
- 💾 Real-time database interaction via **JDBC**
- 🔄 Complete e-commerce flow (browse ➝ cart ➝ checkout)
- 🔧 Robust admin panel for inventory and user management
- ✉️ Messaging and request system integrated

---

## 📚 What I Learned

- Designing a full-stack Java web application from scratch
- Handling **sessions**, **role-based access**, and **data persistence**
- Applying **OOP principles** and the **DAO pattern**
- Structuring large projects using **modular MVC** design
- Deploying and testing on **Apache Tomcat**

---

## 🧪 How to Run the Project

1. Clone or download this repository.
2. Import the project into **Eclipse IDE**.
3. Set up the **MySQL database** using provided schema.
4. Update database credentials in `ConnectDB.java`.
5. Deploy the project on **Apache Tomcat Server**.
6. Visit `http://localhost:8080/MotoFix/` in your browser.

---

## 📷 Screenshots

*(Attach screenshots here if you'd like to visually showcase your UI!)*

---

## 🙌 Author

**[Your Name]**  
B.Sc. (Hons) in Information Technology  
Sales Executive, Sustainable Energy Management System Project

---

## 📬 Contact

For any questions or collaborations, feel free to connect via:

- LinkedIn: [Your LinkedIn URL]
- Email: [yourname@example.com]

---



