# databasehantering-vt24


Recipes and Ingredients Application
This application manages recipes and ingredients to help users organize and plan their meals effectively. It provides functionalities to create, update, and retrieve recipes along with their associated ingredients.

Table of Contents
Database Schema
Usage
Examples
Database Schema
The database schema consists of three main tables:

recipes: Stores information about different recipes.

Columns:
recipe_id: Unique identifier for each recipe.
recipe_name: Name of the recipe.
description: Description or instructions for preparing the recipe.
ingredients: Contains details about various ingredients used in recipes.

Columns:
ingredient_id: Unique identifier for each ingredient.
ingredient_name: Name of the ingredient.
unit: Measurement unit for the ingredient (e.g., grams, milliliters).
recipes_ingredients: Represents the relationship between recipes and ingredients, including the quantity of each ingredient required for a recipe.

Columns:
recipe_id: Foreign key referencing the recipe_id in the recipes table.
ingredient_id: Foreign key referencing the ingredient_id in the ingredients table.
unit: Measurement unit for the ingredient quantity.
Usage
To use this application, follow these steps:

Create Database: Execute the SQL command to create the recipes_ingredients_application database.


CREATE DATABASE recipes_ingredients_application;
Use Database: Switch to the recipes_ingredients_application database.


USE recipes_ingredients_application;
Create Tables: Execute SQL commands to create the necessary tables (recipes, ingredients, recipes_ingredients) within the database. Ensure to define appropriate columns and constraints.

Insert Data: Populate the tables with sample data using INSERT statements. This step adds recipes, ingredients, and their relationships.

Query Data: Retrieve information from the tables using SQL queries. You can perform various operations such as selecting recipes, listing ingredients, updating recipe details, etc.

Examples
Here are some example SQL queries to demonstrate how to interact with the database:

Retrieve all ingredients for a specific recipe:


SELECT ingredients.ingredient_id, ingredients.ingredient_name
FROM recipes
JOIN recipes_ingredients ON recipes.recipe_id = recipes_ingredients.recipe_id
JOIN ingredients ON recipes_ingredients.ingredient_id = ingredients.ingredient_id
WHERE recipes.recipe_name = 'Grilled Lemon Herb Chicken';
Update recipe details:


UPDATE recipes
SET recipe_name = 'Classic Margherita Pizza',
    description = 'A traditional Italian pizza topped with tomato sauce, fresh mozzarella cheese, basil leaves, and a drizzle of olive oil.'
WHERE recipe_id = 1;
Feel free to explore more functionalities and customize the application according to your requirements.

This README file provides an overview of the database schema, usage instructions, and examples of SQL queries. You can further expand it to include additional details or instructions as needed.
