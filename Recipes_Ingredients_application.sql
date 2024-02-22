CREATE DATABASE recipes_ingredients_application;


USE recipes_ingredients_application;



CREATE TABLE recipes (recipe_id INT PRIMARY KEY AUTO_INCREMENT,
       
        recipe_name VARCHAR (255) NOT NULL,
        description VARCHAR (255) NOT NULL
        
        
        );
        
CREATE TABLE ingredients(ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
       
        ingredient_name VARCHAR (255) NOT NULL,
        unit VARCHAR (5)
        
        
        );
        
CREATE TABLE recipes_ingredients(
       
       recipe_id INT NOT NULL,
       ingredient_id INT NOT NULL,
       unit VARCHAR (5),
       PRIMARY KEY (recipe_id, ingredient_id),
       FOREIGN KEY (recipe_id) REFERENCES recipes (recipe_id),
       FOREIGN KEY (ingredient_id ) REFERENCES ingredients (ingredient_id)
       
        
        );
    
        
INSERT INTO recipes (recipe_id,recipe_name, description)
VALUES (1, 'American pancakes', 'eggs, salt, pepper, butter'),
       (2, 'Salad', 'basel, salt, pepper, oil'
       
       
       ); 
SELECT * FROM recipes;

SELECT * FROM ingredients;

UPDATE recipes SET 
    recipe_name = 'Classic Margherita Pizza',
    description = 'A traditional Italian pizza topped with tomato sauce, fresh mozzarella cheese, basil leaves, and a drizzle of olive oil.'

WHERE recipe_id = 1;

UPDATE recipes SET 
    recipe_name = 'Grilled Lemon Herb Chicken',
    description = 'Chicken breasts marinated in a mixture of lemon juice, garlic, herbs, and olive oil, then grilled to perfection.'

WHERE recipe_id = 2;

       
INSERT INTO ingredients (ingredient_id,ingredient_name, unit)
VALUES (1, 'American pancakes', 'DL'),
       (2, 'Salad', 'ML'
       
       );  
       
INSERT INTO ingredients (ingredient_id, ingredient_name, unit)
VALUES
    (3, 'Water', 'ML'),
    (4, 'Milk', 'ML'),
    (5, 'Flour', 'G'),
    (6, 'Sugar', 'G'),
    (7, 'Butter', 'G'),
    (8, 'Salt', 'G'),
    (9, 'Chicken breast', 'G'),
    (10, 'Beef', 'G'),
    (11, 'Potato', 'G'),
    (12, 'Carrot', 'G'),
    (13, 'Rice', 'G'
);

SELECT * FROM ingredients;  

SELECT * FROM recipes;

INSERT INTO recipes (recipe_id,recipe_name, description)
VALUES  (3, 'Pasta Carbonara', 'A Roman pasta dish made with spaghetti or rigatoni, tossed in a creamy sauce made from eggs, grated Parmesan cheese, pancetta or bacon, and black pepper.'),
        (4, 'Vegetable Stir-Fry', 'A quick and healthy dish made by stir-frying a variety of colorful vegetables with garlic, ginger, soy sauce, and sesame oil.'),
        (5, 'Chocolate Chip Cookies', 'Classic homemade cookies made with butter, sugar, eggs, flour, vanilla extract, and chocolate chips, baked until golden brown and chewy.'),
        (6, 'Mushroom Risotto', 'Creamy Italian rice dish cooked with Arborio rice, mushrooms, onions, garlic, white wine, and chicken or vegetable broth, finished with Parmesan cheese and fresh herbs.'),
        (7, 'Greek Salad', 'A refreshing salad made with crisp lettuce, tomatoes, cucumbers, red onions, Kalamata olives, and feta cheese, tossed in a simple dressing of olive oil, lemon juice, oregano, salt, and pepper.');

SELECT * FROM recipes_ingredients;
SELECT * FROM recipes_ingredients;
SELECT * FROM recipes;

INSERT INTO recipes_ingredients (recipe_id, ingredient_id, unit)
VALUES
    (1, 9, 'DL'),
    (1, 10, 'DL'),
    (1, 7, 'G'
    
    );
    
INSERT INTO recipes_ingredients (recipe_id, ingredient_id, unit)
VALUES
    (2, 9, 'DL'),
    (2, 10, 'DL'),
    (2, 7, 'G'
    
    );
    
SELECT * FROM recipes_ingredients;


SELECT * FROM recipes;


SELECT * FROM ingredients;

SELECT ingredients.ingredient_id, ingredients.ingredient_name
FROM recipes
JOIN recipes_ingredients ON recipes.recipe_id = recipes_ingredients.recipe_id
JOIN ingredients ON recipes_ingredients.ingredient_id = ingredients.ingredient_id
WHERE recipes.recipe_name = 'Grilled Lemon Herb Chicken';

SELECT ingredients.ingredient_id, ingredients.ingredient_name
FROM recipes
JOIN recipes_ingredients ON recipes.recipe_id = recipes_ingredients.recipe_id
JOIN ingredients ON recipes_ingredients.ingredient_id = ingredients.ingredient_id
WHERE recipes.recipe_name = 'Classic Margherita Pizza';






