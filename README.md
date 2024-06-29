# Celestial Bodies Database Setup

This repository contains SQL queries to set up a relational database for managing celestial bodies, as part of the third unit of the FreeCodeCamp tutorial on relational databases.

## Files

- `universe.sql`: SQL script file containing all the queries to create the database schema and populate it with initial data.

## Setup Instructions

Follow these steps to set up the Celestial Bodies Database:

1. **Clone the Repository:**
   ```
   git clone <repository_url>
   cd <repository_name>
   ```

2. **Database Setup:**

   - **Ensure PostgreSQL is installed** on your system.
   - **Create a new database** named `universe` in your PostgreSQL server.
     ```sql
     CREATE DATABASE universe;
     ```

   - **Navigate to the repository directory** containing `universe.sql`.

   - **Load the SQL script** into your PostgreSQL database `universe`.
     ```bash
     psql -U <your_username> -d universe -f universe.sql
     ```

3. **Verify Database Setup:**
   
   - Connect to your PostgreSQL server and verify that the `universe` database has been created with the necessary tables (`galaxy`, `star`, `planet`, `moon`, `asteroid`, etc.).

4. **Explore the Database:**

   - Use SQL queries to explore and interact with the data:
     ```sql
     -- Example: Select all galaxies
     SELECT * FROM galaxy;
     ```

## Schema Overview

The database schema includes tables for different celestial bodies:

- `galaxy`: Stores information about galaxies.
- `star`: Contains data on stars, including their properties and associated galaxy.
- `planet`: Holds details about planets, such as size, atmosphere, and their parent star.
- `moon`: Stores information about moons orbiting planets.
- `asteroid`: Includes details about asteroids and their parent planet.

Each table is designed to maintain relational integrity and provide structured data management for celestial bodies.

## Contributing

Contributions to improve the database schema, SQL queries, or README instructions are welcome. Please fork the repository, make your changes, and submit a pull request.

---

Adjust the placeholders `<repository_url>`, `<repository_name>`, and `<your_username>` to fit your actual repository details and PostgreSQL setup. This README provides clear instructions on how to set up and use the database, and invites contributions to improve the project.