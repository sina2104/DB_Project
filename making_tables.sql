CREATE SCHEMA IF NOT EXISTS cuisine;

CREATE TABLE IF NOT EXISTS cuisine.Discount
(
    ID_discount BIGINT PRIMARY KEY REFERENCES cuisine.Cart(cart_discount),
    discount_amount INT NOT NULL,
    discount_from DATE NOT NULL,
    discount_to DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.Cart
(
    ID_cart BIGINT PRIMARY KEY REFERENCES cuisine.OwnedRecipes(ID_owned),
    cart_collections VARCHAR(50) NOT NULL,
    cart_amount INT NOT NULL,
    cart_discount BIGINT NOT NULL,
    cart_total INT NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.OwnedRecipes
(
    ID_owned BIGINT PRIMARY KEY REFERENCES cuisine.Recipe(ID_recipe),
    owned_recipes VARCHAR(50) NOT NULL,
    owned_amount INT NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.RecipesCategories
(
    ID_category VARCHAR(50) PRIMARY KEY ,
    category_amount_of_recipes INT NOT NULL,
    category_collection_name VARCHAR(50) NOT NULL REFERENCES cuisine.RecipeCollection(collection_name)
);

CREATE TABLE IF NOT EXISTS cuisine.RecipeCollection
(
    ID_collection INT PRIMARY KEY REFERENCES cuisine.Cart(cart_collections),
    collection_name VARCHAR(50) NOT NULL,
    collection_recipe_amount INT NOT NULL,
    collection_price INT NOT NULL,
    collection_date DATE NOT NULL,
    collection_chef VARCHAR(50) NOT NULL,
    collection_chef_experience VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.Recipe
(
    ID_recipe BIGINT PRIMARY KEY,
    recipe_name VARCHAR(50),
    recipe_amount INT NOT NULL,
    recipe_ingredients VARCHAR(50) NOT NULL REFERENCES cuisine.Ingredient(ID_ingredient),
    recipe_time TIME NOT NULL,
    recipe_explained VARCHAR(500) NOT NULL,
    recipe_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.Ingredient
(
    ID_ingredient BIGINT PRIMARY KEY,
    ingredient_name VARCHAR(50) NOT NULL,
    ingredient_amount INT NOT NULL,
    ingredient_value INT NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.FreeRecipes
(
    ID_free_recipe VARCHAR(50) PRIMARY KEY REFERENCES cuisine.Recipe(ID_recipe),
    free_recipe_amount INT NOT NULL
);

CREATE TABLE IF NOT EXISTS cuisine.PaidRecipes
(
    ID_paid_category VARCHAR(50) PRIMARY KEY REFERENCES cuisine.RecipesCategories(ID_category),
    paid_categories_amount INT NOT NULL
);


