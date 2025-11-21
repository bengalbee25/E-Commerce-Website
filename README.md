# 🛒 Ecommerce Website — PHP, MySQL, Bootstrap

A fully functional eCommerce web application built using **PHP**, **MySQL**, **Bootstrap**, and **HTML/CSS**.
This project includes user authentication, admin dashboard, product management, cart functionality, and search features.

---

## 📌 Features

### **👤 User Side**

* User registration & login
* Product browsing by categories & brands
* Product search
* Product details page
* Add to cart
* View cart with update & delete options
* Checkout system
* Responsive layout using Bootstrap

### **🛠 Admin Side**

* Admin authentication
* Add / Update / Delete products
* Manage categories & brands
* View orders
* View users
* Product image upload system

---

## 📁 Project Structure

```
Ecommerce Website Final/
│── admin_area/          # Admin dashboard pages
│── bootstrap/           # Bootstrap CSS & JS
│── cart.php             # Shopping cart page
│── display_all.php      # Display all products
│── functions/           # Helper functions (DB, cart, products)
│── images/              # Product images
│── includes/            # Header, footer & DB connection
│── index.php            # Homepage
│── mystore1.sql         # Database file
│── product_details.php  # Single product page
│── search_product.php   # Search results
│── style.css            # Custom styling
│── users_area/          # User login & registration
```

---

## ⚙️ Installation & Setup

### **1️⃣ Import the Database**

1. Open **phpMyAdmin**
2. Create a new database (e.g., `mystore1`)
3. Import the file:

   ```
   mystore1.sql
   ```

### **2️⃣ Configure Database Connection**

Open:

```
includes/connect.php
```

Update:

```php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "mystore1";
```

### **3️⃣ Run the Project**

Place the project folder inside:

```
htdocs/
```

Then visit:

```
http://localhost/Ecommerce%20Website%20Final/
```

---

## 🧰 Technologies Used

* **PHP**
* **MySQL**
* **HTML5 / CSS3**
* **Bootstrap 4/5**
* **JavaScript**

---

## 🧪 Testing & Debugging Notes

* Checked cross-page navigation
* Verified product image loading
* Tested admin CRUD operations
* Fixed layout misalignment using Bootstrap grid system
* Used browser DevTools + PHP error logs for debugging

---

## 🚀 Future Improvements

* Add payment gateway (SSLCommerz / Stripe / PayPal)
* Add product reviews & ratings
* Add order tracking system
* Improve UI using modern Bootstrap components

---

## 📄 License

This project is licensed under Apache License 2.0. See the LICENSE file for details.

