# DVDRENTAL


## DVD Rental Database Summary

The "dvdrental" database is a widely used sample database in PostgreSQL, designed to mimic the data and operations of a fictional DVD rental store. This database serves as an educational resource and a practical playground for learning and practicing SQL queries, database management, and relational database concepts.

### Key Entities and Tables

The "dvdrental" database consists of several interconnected tables representing different aspects of a DVD rental business. Here are some of the key entities and tables in the database:

1. **Film**: Contains information about movies available for rent, including titles, descriptions, release years, rental durations, and rental rates.

2. **Actor**: Stores details about actors who appear in the films, such as their names and birthdates.

3. **Customer**: Contains data about the store's customers, including their names, addresses, email addresses, and phone numbers.

4. **Rental**: Tracks the rental transactions, including rental dates, return dates, and associated customers and films.

5. **Payment**: Stores payment information for rental transactions, such as payment amounts and timestamps.

6. **Inventory**: Links films to specific physical copies available for rent within the store.

7. **Category**: Categorizes films into genres like Action, Drama, Comedy, etc.

8. **Store**: Represents physical rental store locations, including addresses and staff information.

### Relationships

The "dvdrental" database is designed to showcase the relationships between these tables. For example:

- Customers can rent multiple films, leading to a relationship between the Customer and Rental tables.
- Films can belong to multiple categories, linking the Film and Category tables.
- Inventory links specific DVDs to films, and Rentals track the DVDs rented by customers.

![image](https://github.com/sajouh/DVDRENTAL/assets/126895020/0b2d1ecf-7a3a-4f2b-8601-f01cf77243f2)




