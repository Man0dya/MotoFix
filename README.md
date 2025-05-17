#  MotoFix – Online Vehicle Spare Parts Management System

MotoFix is a **comprehensive full-stack Java-based web application** designed to manage vehicle spare part inventory, streamline customer orders, and simplify admin operations. Built using **MVC architecture**, the project ensures strong **session management**, modular design with **DAO and Servlet layers**, and a responsive user interface using **JSP, HTML, CSS, and JavaScript**.

---

##  Features Overview

### Customer Features
-  Browse and search for spare parts by category
-  Add to cart and proceed to checkout
-  Order confirmation with billing summary
-  View and update profile
-  Send messages and requests for unavailable parts

###  Admin Features
-  Admin dashboard with total insights
-  Manage spare part inventory (CRUD operations)
-  View and manage customer accounts
-  View and respond to customer messages and requests
-  View and track checkout orders

---

##  Tech Stack

| Layer        | Technologies                              |
|--------------|--------------------------------------------|
| **Frontend** | HTML5, CSS3, JavaScript, JSP               |
| **Backend**  | Java Servlets, JDBC                        |
| **Database** | MySQL (Structured schema with relationships)|
| **Server**   | Apache Tomcat                              |
| **IDE**      | Eclipse IDE                                |
| **Architecture** | MVC Pattern                           |

---

##  Project Structure

###  JSP Pages
- `home.jsp`, `products.jsp`, `cart.jsp`, `checkout.jsp`, `profile.jsp`
- `admin.jsp`, `viewcustomer.jsp`, `addProduct.jsp`, `updateProduct.jsp`
- Shared layouts: `header.jsp`, `footer.jsp`
- Info pages: `about.jsp`, `contactus.jsp`, `faq.jsp`

###  Java Backend
- **Servlets:**  
  `LoginServlet`, `CreateAccountServlet`, `CartServlet`, `CheckoutServlet`, `LogoffServlet`, etc.

- **Model Classes:**  
  `Customer.java`, `Admin.java`, `Product.java`, `CartItem.java`

- **DAO Classes:**  
  `ConnectDB.java`, `AdminDAO.java`, `CheckoutDB.java`, `RequestpDB.java`

---

##  Security & Session Management

- Secure login with **role-based redirection**
  - Admin ➝ `admin.jsp`
  - Customer ➝ `home.jsp`
- Session persists until logout (`LogoffServlet`)
- Authentication flow ensures user data protection

---

##  Database Overview (MySQL)

- **Tables:**
  - `customers`
  - `admins`
  - `products`
  - `checkout`
  - `requests`
  - `messages`

- Efficient queries through **DAO classes** abstract DB operations.

---

##  Key Highlights

-  Cleanly structured using **MVC architecture**
-  Real-time database interaction via **JDBC**
-  Complete e-commerce flow (browse ➝ cart ➝ checkout)
-  Robust admin panel for inventory and user management
-  Messaging and request system integrated

---

##  Authors

| Author           | LinkedIn                                  | Email                       |
|------------------|--------------------------------------------|-----------------------------|
| Manodya Dissanayake  | [LinkedIn](https://linkedin.com/in/manodya-dissanayake-34a861227) | pasindumanodyadissanayake@gmail.com         |
| Bhagya Dunuvila  | [LinkedIn](https://linkedin.com/in/bhagya-dunuvila-868a9a31a ) | lakshanibhagya2@gmail.com         |
| Lihini Bowaththa  | [LinkedIn](https://linkedin.com/in/lihini-b-b97848312) | lihininethmini2003@gmail.com        |
| Ushani Silva  | [LinkedIn](https://linkedin.com/in/ushani-silva-992981270) | ushanikgs@gmail.com         |

---



