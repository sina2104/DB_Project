--1
--Таблица категорий и коллекции рецептов
CREATE VIEW RECIPE_VIEW
AS
    SELECT DISTINCT
        collection_chef,
        collection_recipe_amount,
        collection_name,
        collection_price,
        collection_date,
        collection_chef_experience,
        category_amount_of_recipes,
        category_collection_name
    FROM
        cuisine.RecipeCollection,
        cuisine.RecipesCategories;

SELECT * FROM RECIPE_VIEW;
--2
--Таблица неимеющихся рецептов и их детали
CREATE VIEW NOT_OWNED_RECIPE_VIEW
AS
    SELECT DISTINCT
        recipe_name,
        recipe_ingredients,
        recipe_time,
        recipe_explained,
        recipe_date,
        recipe_amount,
        recipe_chef
    FROM
        (SELECT * FROM cuisine.Recipe, cuisine.OwnedRecipes WHERE recipe_name!=OwnedRecipes.owned_recipes)

SELECT * FROM NOT_OWNED_RECIPE_VIEW;
--3
--Таблица cкидок и наборов до 100 долларов
CREATE VIEW NOT_OWNED_RECIPE_VIEW
AS
    SELECT DISTINCT
        collection_price,
        collection_chef_experience,
        collection_chef,
        collection_date,
        collection_name,
        collection_recipe_amount,
        discount_amount,
        discount_from,
        discount_to
    FROM
         cuisine.Discount,
         cuisine.RecipeCollection WHERE collection_price<=100;

SELECT * FROM NOT_OWNED_RECIPE_VIEW;
