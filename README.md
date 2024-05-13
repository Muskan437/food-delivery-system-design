<!DOCTYPE html>
<html lang="en">

<body>

<h1>Food Delivery System Database</h1>
<p>This repository contains SQL code for creating and populating a food delivery system database. The database is designed to manage various aspects of a food delivery service, including customers, restaurants, orders, payments, reviews, locations, menus, restaurant categories, reservations, and events.</p>

<h2>Database Structure</h2>
<p>The database consists of the following tables:</p>
<ul>
    <li>customer: Stores information about customers including their name, email, password, and phone number.</li>
    <li>restaurants: Contains details about restaurants such as name, address, phone number, and category ID.</li>
    <li>orders: Manages orders made by customers including order ID, customer ID, restaurant ID, order amount, and delivery status.</li>
    <li>payment: Handles payment information including payment ID, order ID, payment method, amount, and payment status.</li>
    <li>review: Stores reviews provided by customers including rating, review description, customer ID, and restaurant ID.</li>
    <li>location: Manages customer locations including state, city, and street information.</li>
    <li>menu: Contains menu items offered by restaurants including item name and price.</li>
    <li>rest_categories: Stores restaurant categories along with a description and the number of restaurants in each category.</li>
    <li>reservation: Manages reservations made by customers including reservation ID, restaurant ID, customer ID, and reservation date.</li>
    <li>events: Stores information about events hosted by restaurants including event ID, restaurant ID, customer ID, event name, description, event date, and location.</li>
</ul>

<h2>SQL Queries</h2>
<p>The repository also includes SQL queries for various operations such as selecting all customers, restaurants, orders, payments, reviews, locations, menu items, restaurant categories, reservations, and events. Additionally, there are queries for specific data analysis tasks such as finding customers who have placed orders, restaurants with pending orders, customers who have made payments, and more.</p>

<h2>Usage</h2>
<p>To use the SQL code provided in this repository, follow these steps:</p>
<ol>
    <li>Create a new database named FDS.</li>
    <li>Execute the SQL code provided in food_delivery_system.sql to create the tables and insert sample data.</li>
    <li>Execute any specific queries as needed for data retrieval or analysis.</li>
</ol>

<h2>Contributors</h2>
<p>Ahad Channa - Creator</p>
<p>Muskan Shaikh - Creator</p>


</body>
</html>
