*[English](README.md) ∙ [Russian](README-ru.md)*
# Database Project
## Project Name: Cooking Recipes

### Relevance:
Now there are quite a lot of sites of various recipes on the web, which everyone
can find in a few seconds. But the problem is that not all of these recipes were
written by real chefs.
### Our task:
To make a convenient database in which each chef could publish his own
recipes and so that novice cooks could try to cook simple
free recipes.
### What is implemented:
In my model, I use recipes from popular and proven chefs who
we are ready to sell a set of our recipes to everyone. Also, every Tuesday we
will have dozens of simple free recipes that every home cook can
cook for himself.
Also for the convenience of customers, each set of recipes is in a separate
recipe category so that everyone can choose their favorite.
Each set is made up of dozens of different recipes from professional chefs.
Each of them contains detailed preparation steps, necessary ingredients and
preparation time. The nutritional value of each ingredient is also written.
And also discounts for the most popular kits will be published every month so that everyone
can try these recipes.
## Conceptual model:
[Concept](https://ibb.co/kMz3Yrp)!
In the conceptual model, since there are no categories and a specific set of recipes
for free recipes, 2 different entities are made: paid and free recipes.
You can also notice that there are only 2 actors. A user
who must initially choose which recipe he wants and a chef who can
publish his own set of recipes.
All the selected kits are collected in the shopping cart and after purchase there will be access to all
available recipes.
## Physical model:
[physic](https://ibb.co/RCQtHTG)!
It is easy to notice that each table is in the form of 2NF. We don't need a 3NF relation,
because if we make each non-key attribute non-transitively dependent on
the primary key, then we will have too many tables, which complicates our
database.
You can also notice that only the tables "Free Recipes", "Paid Recipes"
and "Recipe Category" are in SCD-1, due to the support of the quantity that can
change. And the "Discounts" table is located in SCD-2, since each discount has
a start date and expiration date of the discount, which should be monitored. For the rest
of the tables, the data will not change after the first hit in the table, so they
are in SCD-0.
## Possible problems:
1. Entities like "free recipes" and "paid recipes" are similar to each other and
it may make sense to try to generalize them.
2. In the future, it may be necessary to add "administrators" to control
our model.
3. For the development of the model when adding new entities, for example, as a selection
a favorite recipe, perhaps critical changes in the model will be needed.
## Result:
As you can see with the help of diagrams, it is very easy to show the role of each
object and also show all the relationships between them. With the help of NF(normalization form) and SCD(slowly changing dimension), you can
significantly simplify the database.
### All resources:
- https://app.dbdesigner.net / - for the physical model
- https://lucid.app / - for the conceptual model
- https://habr.com / - for the definitions used
