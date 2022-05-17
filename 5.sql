--Индекс по имени шеф-повара, чтобы легче найти рецептов повара
CREATE INDEX chef_name_id ON cuisine.RecipeCollection(collection_chef);

EXPLAIN (ANALYSE)
SELECT *
FROM cuisine.RecipeCollection AS c
WHERE c.collection_chef = 'Needham';

--Индекс по имени коллекции
CREATE INDEX chef_name_id ON cuisine.RecipeCollection(collection_chef);

EXPLAIN (ANALYSE)
SELECT *
FROM cuisine.RecipeCollection AS c
WHERE c.collection_chef = 'Summer';