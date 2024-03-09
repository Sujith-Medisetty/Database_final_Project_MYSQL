## Project Overview (e-commerce database)

Below are the key files and components included in the project:

### Files

- **Database_queries.sql**: Contains SQL queries without view.
- **Database_queries_with_view.sql**: Contains SQL queries with view replacing multiple table joins.
- **database_project.sql**: Contains commands for creating the database schema and tables.
- **dummy_data.sql**: Contains dummy data to be inserted into the database after schema creation.
- **database-12-question.xlsx**: Excel file providing the answer to question 12 from the Database_queries.sql file.
- **ecommercedb_ER_Diagram.png**: ER diagram illustrating the database schema.

### Usage

1. **Database_queries.sql**: Execute these queries to retrieve data without using views.
2. **Database_queries_with_view.sql**: Execute these queries to retrieve data using views, which optimize performance by reducing redundant joins.
3. **database_project.sql**: Use this script to create the database schema and tables required for the e-commerce system.
4. **dummy_data.sql**: Insert dummy data into the database to populate tables for testing purposes.
5. **database-12-question.xlsx**: Refer to this file for the answer to question 12 from the Database_queries.sql results.
6. **ecommercedb_ER_Diagram.png**: View the ER diagram to understand the database schema visually.

### Project Structure

- **Queries**: Contains SQL query files.
- **Database**: Contains database schema and dummy data scripts.
- **Assets**: Contains the ER diagram image.

### ER Diagram

![ER Diagram](ecommercedb_ER_Diagram.png)

## User Authentication and Registration:

1. **Customer Login Page:**
    - Users need to enter their email and password in the provided fields to sign in to their account.
    - Please refer to the dropdown in the top right corner where users can switch between different login screens.
    - ![Customer_Login_Page](UI_Screenshots/Customer_Login_Page.png)

2. **Customer Registration Page:**
    - Users can register on this e-commerce website by providing their details.
    - Without logging in, users can only browse and view items. However, to make purchases, they must sign in to the application.
    - ![Customer_Registration_Page](UI_Screenshots/Customer_Registration_Page.png)

3. **Vendor Login Page:**
    - Similar to user login, vendors can access their dashboard by entering their valid registered email and password.
    - ![Vendor_Login](UI_Screenshots/Vendor_Login.png)

4. **Vendor Registration:**
    - Vendors cannot register directly. They need to contact the company to register on this e-commerce platform to sell their products.
    - Once registered, they can list and sell their products. This screen looks the same as the Customer Registration page.
    - ![Vendor_Registration](UI_Screenshots/Vendor_Registration.png)

5. **MySQL Database Tables:**
    - In the MySQL database tables screenshot, we can observe all the tables within the "ecommercedb" schema.
    - To enhance security, passwords are encrypted and stored in the database.
    - ![MYSQL_DB_Tables](UI_Screenshots/MYSQL_DB_Tables.png)

## Customer Dashboard (Order Management, Profile, Shopping Cart & Checkout)

6. **Browsing Products:**
    - Customers can explore all the listed items by vendors on the home screen.
    - Each item is displayed with its name, image, price, and brief description.
    - No login is required to view these details.
    - ![Customer_home_page_with_out_login](UI_Screenshots/Customer_home_page_with_out_login.png)

7. **Accessing Product Details:**
    - Customers can access detailed product information by clicking on the product. (No login required)
    - They can view additional details such as product specifications, availability, and vendor information.
    - ![Customer_View_All_Item_Details](UI_Screenshots/Customer_View_All_Item_Details.png)

8. **Cart Interaction:**
    - To add items to the cart and make purchases, customers need to sign in to their account.
    - Signing in provides access to additional features like adding items to the cart and managing orders.
    - After signing in, customers can add items to the cart directly from the product details page or the home screen.
    - The "Add to Cart" button will be disabled if items are out of stock, ensuring a seamless shopping experience.
    - Customers can view the contents of their cart and adjust quantities as needed.
    - ![Customer_home_page_after_login](UI_Screenshots/Customer_home_page_after_login.png)
    - ![Customer_Cart_items](UI_Screenshots/Customer_Cart_items.png)

9. **Payment Method:**
    - Before placing the order, customers can select their preferred payment method.
    - They can choose from various payment options or other available methods.
    - ![Customer_select_payment_page](UI_Screenshots/Customer_select_payment_page.png)
    - ![Customer_add_new_Payment_Page](UI_Screenshots/Customer_add_new_Payment_Page.png)

10. **Placing Order:**
    - Once items are added to the cart and the payment method is selected, customers can proceed to place the order.
    - They can review their order summary, including the total cost and selected items, before confirming the purchase.
    - ![Customer_Order_Summary](UI_Screenshots/Customer_Order_Summary.png)
    - ![Customer_Order_Confirmation](UI_Screenshots/Customer_Order_Confirmation.png)

11. **Viewing Order History & Managing Orders:**
    - After placing an order, customers can view their order history and track the status of their orders.
    - The "Orders" section provides details such as order number, date, and status information.
    - ![Customer_Order_History](UI_Screenshots/Customer_Order_History.png)
    - ![Customer_Order_History_Order_DEtails](UI_Screenshots/Customer_Order_History_Order_DEtails.png)

12. **Edit & View Profile:**
    - Customers can update their profile details by clicking on the "Edit Profile" option.
    - Refer to the screenshot titled "Update_Customer_Details" for a visual representation of this feature.
    - ![Update_Customer_Details](UI_Screenshots/Update_Customer_Details.png)

13. **Search and Filter:**
    - Customer/Vendor can search/Filter the products with keywords, category, etc.
    - ![Customer_Filter&Search_Page_with_results](UI_Screenshots/Customer_Filter&Search_Page_with_results.png)

## Vendor Dashboard (Product Management):

14. **Vendor Home Screen:**
    - On the Vendor Home Screen, vendors can view all their registered products along with detailed information such as product details, availability status, and pricing.
    - They will have the capability to delete, update, and view all product-related information.
    - ![Vendor_Home_Page](UI_Screenshots/Vendor_Home_Page.png)

15. **Vendor Product Listing:**
    - Vendors can list their products in this e-commerce application.
    - Please refer to the screenshot "Vendor_Home_Page" where vendors can click on the "Create New Item" button located in the top right corner to register the products they wish to sell.
    - ![Vendor_Create_New_Item](UI_Screenshots/Vendor_Create_New_Item.png)

16. **Vendor Edit Product Details:**
    - Vendors have the ability to edit product details.
    - The screenshot titled "Vendor_Edit_Item_Details" illustrates this feature.
    - ![Vendor_Edit_Item_Details](UI_Screenshots/Vendor_Edit_Item_Details.png)

17. **Vendor Order Management:**
    - Vendors possess the capability to access all placed orders from suppliers and can efficiently manage them.
    - This includes the ability to modify the status of each order as needed.
    - ![Vendor_Order_Management](UI_Screenshots/Vendor_Order_Management.png)

