--1
--Сколько рецептов в каждом наборе?
SELECT cn.collection_recipe_amount, cn.collection_name
FROM cuisine.RecipesCategories JOIN cuisine.RecipeCollection AS cn ON cn.ID_collection = cn.collection_name
GROUP BY cn.collection_recipe_amount, cn.collection_name;
--2
--В каких блюдах пищевая ценность больше 100 кКал?
WITH ps AS (SELECT r.recipe_name, c.ingredient_amount, c.ingredient_value FROM cuisine.Recipe AS r JOIN cuisine.Ingredient AS c ON r.recipe_ingredients=c.ingredient_name)
SELECT recipe_name, ingredient_amount * ingredient_value as value
FROM ps
WHERE value >= 100 ORDER BY value DESC;
--3
--Какие самые популярные наборы рецептов?
WITH ps AS (SELECT cart_collections FROM cuisine.Cart)
SELECT ROW_NUMBER() over (ORDER BY cart_collections) as value
FROM ps ORDER BY value DESC;
--4
--Какие рецепты можно найти и в бесплатном разделе и в платном?
SELECT ID_paid_category, ROW_NUMBER() OVER (ORDER BY pl.ID_paid_category)
FROM cuisine.PaidRecipes AS pl INNER JOIN cuisine.FreeRecipes
    ON ID_paid_category=ID_free_recipe;
--5
--Какие самые популярные ингредиенты?
WITH po AS (SELECT recipe_ingredients FROM cuisine.Recipe)
SELECT ingredient_name, ROW_NUMBER() OVER (PARTITION BY ingredient_amount)
FROM po INNER JOIN cuisine.Ingredient;
--6
--Какие рецепты в коллекцях рецептов, которые чаще всего готовы купить?
WITH am AS (SELECT collection_chef FROM cuisine.Cart INNER JOIN cuisine.RecipeCollection
    ON cart_collections=collection_name )
SELECT recipe_chef, recipe_name FROM cuisine.Recipe INNER JOIN am ON recipe_chef=collection_chef
GROUP BY recipe_name, recipe_chef;
