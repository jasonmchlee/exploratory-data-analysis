# Jumpman23 Delivery, New York City Market Performance
Jumpman23 is an on-demand delivery platform connecting “Jumpmen” and customers purchasing a variety of goods. Jumpman23 will send Jumpmen to merchants to purchase and 
pickup any items requested by the customer. Whenever possible, Jumpman23 will order the requested items ahead to save the Jumpmen time. Each time a Jumpman23 delivery is completed, a record is saved to the Jumpman23 database that contains information about that delivery. Jumpman23 is growing fast and has just launched in its newest market -- New York City. 

## Executive Summary
- 1,230 orders are missing item related information for name, quantity and category
- 2,945 orders are missing tracking information on how long it took to complete an order
- 500 orders are missing timestamps for Jumpman’s arrival and departure from stores
- Upper Manhattan and Brooklyn have low order demand
- Shake Shack is the highest performing store with 311 orders in 7 locations
- Italian is the most popular store category in the city (504 orders, 61 stores)
- Bicycles are the No. 1 transportation used with the 2nd fastest delivery time (13 mins)


## Missing Values
There are significantly more missing entries on how long it took to complete an order.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/missing%20values.png" width="400" height="250">
</p>


## Average Time Taken to Complete Order
Orders with Jumpman arrival and departure timestamps from stores have better delivery times.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/average%20time.png" width="500" height="250">
</p>


## Top Stores Missing Item Related Information
All of Duane Reade’s orders are missing data on item name, item quantity and item category
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/top%20missing%20values.png" width="500" height="300">
</p>


## Top Stores Missing Time Taken to Order Data 
All of Shake Shack’s 311 orders did not track the time taken to order
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/missing%20order%20time.png" width="500" height="300">
</p>



## Locations of Jumpman23 Customers
Upper Manhattan and Brooklyn have low order demand.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/customers.png" width="350" height="350">
</p>



## Top Stores Based on Number of Orders
Shake Shack is Jumpman23’s most popular store, accounting for 5% of all orders.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/top%20stores.png" width="500" height="300">
</p>



## Locations of Shake Shack Stores and Order Drop-offs
7 Shake Shack locations support high density of orders throughout New York.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/shake%20shack.png" width="600" height="400">
</p>



## Top Store Categories Based on Number of Orders
The Italian store category has the highest amount of orders.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/categories.png" width="500" height="300">
</p>



## Locations of Italian Stores and Order Drop-offs
Most Italian stores are located in the South, despite strong demand in the North.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/italian%20stores.png" width="675" height="300">
</p>



## Types of Transportation Available
Bicycles have the 2nd fastest delivery time and are used by 71% of Jumpmen.
<p align="center">
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Jumpman%20Delivery/transporation.png" width="550" height="300">
</p>



## Next Steps
Gathering more data on orders will provide new insights to assess performance.
  - Revenue per order
  - Total sales for individual stores
  - Customer demographics – age/occupation/gender
  - Information on stores – age/size/ratings




