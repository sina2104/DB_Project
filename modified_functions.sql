--1
--Список наборов, которые были опубликованы в указанном интервале
CREATE OR REPLACE FUNCTION collection_date_during(d1 DATE, d2 DATE)
    RETURNS TABLE (id_client BIGINT, collection_recipe_amount INT, collection_name VARCHAR(50), collection_date DATE,
     collection_chef VARCHAR(50), collection_chef_experience INT, collection_price INT) AS
    $$
    BEGIN
        RETURN query(
            SELECT c.collection_recipe_amount, c.collection_name, c.collection_date, c.collection_chef,
                   c.collection_chef_experience, c.collection_price
            FROM cuisine.RecipeCollection AS c
            WHERE c.collection_date>=d1 AND c.collection_date<=d2
        );
    END;
    $$ LANGUAGE plpgsql;
--2
--Список наборов, которые дешевле указанной суммы с учётом скидок
CREATE OR REPLACE FUNCTION collection_price_under(a INT)
    RETURNS TABLE (id_client BIGINT, collection_recipe_amount INT, collection_name VARCHAR(50), collection_date DATE,
     collection_chef VARCHAR(50), collection_chef_experience INT, collection_price INT) AS
    $$
    BEGIN
        RETURN query(
            SELECT DISTINCT collection_recipe_amount, collection_name, collection_date, collection_chef,
                   collection_chef_experience, collection_price
            FROM cuisine.RecipeCollection, cuisine.Discount
            WHERE collection_price * Discount.discount_amount <= a
        );
    END;
    $$ LANGUAGE plpgsql;
