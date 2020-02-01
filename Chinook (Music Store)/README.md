# Chinook Music Store

## Exploration
I'll be working with a modified version of a database called Chinook. The Chinook database contains information about a fictional digital music shop - kind of like a mini-iTunes store.

The Chinook database contains information about the artists, songs, and albums from the music shop, as well as information on the shop's employees, customers, and the customers purchases. This information is contained in eleven tables.

For one single purchase (invoice_id) we want to know, for each track purchased:

  - The id of the track.
  - The name of the track.
  - The name of media type of the track.
  - The price that the customer paid for the track.
  - The quantity of the track that was purchased.
  
## Recursive Joins
We can see that in our employee table, where there is a reports_to column that has a relation to the employee_id column within the same table.

The reports_to column identifies each employee's supervisor. If we wanted to create a report of each employee and their supervisor's name, we would need some way of joining a table to itself. Doing this is called a recursive join.

## Overview

### Select albums to purchase
We can see that the highest percetnage sold for album genres are Rock, Alternative & Punk and Metal. Rock has a significant portion of percetnage sold at over 50% of the entire tracks sold in the USA.

Based on the sales of tracks across different genres in the USA, we should purchase the new albums by the following artists:

  - Red Tone (Punk)
  - Slim Jim Bites (Blues)
  - Meteor and the Girls (Pop)

### Analyzing Employee Sales Performance
Analyze the purchases of customers belonging to each employee to see if any sales support agent is performing either better or worse than the others.


### Analyzing Sales by Country

It's worth keeping in mind that because the amount of data from each of these countries is relatively low. Because of this, we should be cautious spending too much money on new marketing campaigns, as the sample size is not large enough to give us high confidence. A better approach would be to run small campaigns in these countries, collecting and analyzing the new customers to make sure that these trends hold with new customers.


### Albums vs Individual Tracks
Album purchases account for 18.6% of purchases. Based on this data, I would recommend against purchasing only select tracks from albums from record companies, since there is potential to lose one fifth of revenue.

