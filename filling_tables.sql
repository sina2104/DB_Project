INSERT INTO cuisine.Discount (discount_amount,
                          discount_from, discount_to) VALUES
('33', '2020-05-25', '2021-07-13'),
('61', '2020-07-08', '2021-12-28'),
('43', '2020-08-31', '2022-01-28'),
('56', '2020-12-30', '2022-04-18'),
('36', '2021-01-28', '2022-07-07'),
('47', '2021-04-20', '2022-09-30'),
('58', '2021-05-26', '2022-10-26'),
('69', '2021-07-22', '2022-10-28'),
('36', '2021-08-11', '2022-11-16'),
('25', '2021-08-19', '2022-12-21'),
('68', '2021-11-01', '2022-12-23');

INSERT INTO cuisine.RecipeCollection (collection_name,
                                      collection_chef, collection_chef_experience,
                                      collection_date, collection_price, collection_recipe_amount) VALUES
('Clint', 'Shields', '2', '2004-12-27', '60', '32'),
('Sara', 'Cooper', '5', '2006-04-13', '100', '50'),
('Mark', 'Oliver', '12', '2006-10-20', '40', '20'),
('Summer', 'Casey', '7', '2007-10-19', '10', '4'),
('Ryan', 'Cunningham', '8', '2008-02-06', '15', '9'),
('Alba', 'Quinnell', '32', '2009-05-08', '25', '32'),
('Allison', 'Evans', '23', '2015-05-27', '80', '10'),
('Nancy', 'Gray', '7', '2018-02-05', '35', '31'),
('Logan', 'Needham', '14', '2018-02-13', '75', '40'),
('Maya', 'Stewart', '16', '2021-11-05', '5', '10'),
('Carissa', 'Jenkins', '9', '2021-09-09', '55', '55');

INSERT INTO cuisine.Cart (cart_collections,
                          cart_amount, cart_discount, cart_total) VALUES
('Carissa, Sara', '2', '0', '160'),
('Alba', '1', '25', '20'),
('Logan', '1', '69', '14'),
('Allison', '1', '36', '6'),
('Carissa, Nancy, Clint', '3', '0', '95'),
('Carissa', '1', '56', '22'),
('Allison', '1', '43', '56'),
('Maya', '1', '0', '5'),
('Alba, Nancy', '2', '36', '76'),
('Logan, Allison', '2', '0', '85'),
('Summer', '1', '0', '10');

INSERT INTO cuisine.Recipe (recipe_amount, recipe_chef,
                          recipe_date, recipe_name, recipe_explained, recipe_ingredients,
                            recipe_time) VALUES
('4', 'Shields', '2019-02-26','Orange Chicken', 'Make the sauce: Cook orange zest and juice, soy sauce, sugar, vinegar, stock, and ginger in a medium saucepan over low heat just until bubbling. Whisk in cornstarch. Cook until sauce thickens,  5 to 6 minutes.
Make the chicken: Whisk together 2 tablespoons cornstarch and egg whites in a bowl until frothy. Add chicken and let sit, 5 minutes. In a second  bowl, whisk together flour, baking powder, remaining tablespoon cornstarch. Season with salt and pepper.
Line a rimmed baking sheet with paper towels. Remove chicken pieces, one at a time (letting excess egg white to drip off), and roll in flour mixture until coated, leave pieces in flour mixture as you work.
Heat oil in a wok or large Dutch oven over medium heat until temperature reaches 350°F on an instant read thermometer. Cook chicken, in batches, until golden brown and cooked through, 3 to 4 minutes. Transfer to prepared baking sheet to drain. Season with salt and pepper.
Add chicken to sauce and gently toss to coat. Serve garnished with scallions. and rice alongside.', 'cornstarch, white vinegar, chicken stock','15'),
('3', 'Shields', '2014-03-04', 'Chicken Marsala', 'Using a meat tenderizer or the bottom of a sturdy cup, pound chicken until about 1/4 inch thick. Season with salt and pepper, then dredge in flour. Add canola oil to medium sauté pan over medium-high heat. When oil is shimmering, cook chicken in batches until browned, 2 minutes per side. Set chicken aside and tent to keep warm.
Pour off excess oil, then melt butter in pan over medium heat. Sauté mushroom and onions until soft, about 5-7 minutes. Add garlic and cook until fragrant, 2-3 minutes more. Add wine, broth, cream, and thyme, and simmer until thickened, about 15 minutes. Plate chicken and serve with sauce on top, garnished with a little more fresh thyme.', ' heavy cream, dry Marsala wine, chicken broth', '10'),
('2', 'Jenkins','2004-06-10', 'Salisbury Steak', 'Make patties: Combine onion, breadcrumbs, egg, ketchup, mustard, and Worcestershire in a bowl. Gently mix in beef with your hands, being careful not to overmix. Shape into 4 patties. Season with salt and pepper.
Heat oil in a large skillet over medium-high heat. Add patties and cook, turning once, until brown and cooked through, 8 to 12 minutes. Transfer to a plate and cover with foil to keep warm; reserve skillet.
Make gravy: Reduce heat to medium-low. Add butter, onion, and mushrooms to reserved skillet. Cook, stirring occasionally, until soft, 5 to 6 minutes. Add flour and cook, stirring, until browned, 2 to 3 minutes. Gradually whisk in stock and milk. Simmer until thickened, 8 to 10 minutes. Season with salt and pepper
Serve steaks topped with gravy and potatoes and peas alongside.', 'mushrooms, beef stock, egg', '55'),
('4', 'Stewart', '2019-09-30', 'Pear Prosciutto and Goat Cheese Pizza with Arugula', 'Preheat oven to 450°F. Combine goat cheese, ricotta, Parmesan, and thyme in a bowl. Heat oil in a small saucepan over medium-low heat. Add garlic and cook until fragrant, swirling frequently, 1 to 2 minutes. Remove from heat.
Sprinkle a baking sheet with cornmeal. Stretch and shape dough into a 12-by-12-inch circle or square and place on prepared baking sheet. Spread cheese mixture on dough, leaving a 1-inch border all around. Top with pear and garlic-oil mixture.
Bake until golden and cooked through, 12 to 15 minutes. Top with prosciutto and arugula. Slice and serve immediately.', 'pear, thyme, cheese', '35'),
('3', 'Quinnell', '2005-04-19', 'Fried Rice', 'Heat canola oil in a large skillet over medium heat. Add eggs and cook, stirring, until curds are light and fluffy, 2 to 3 minutes, transfer to a plate. Add bacon to skillet and cook until crisp, 5 to 6 minutes.
Add pepper, scallion whites, and carrots, and cook, stirring occasionally, until soft, 5 to 6 minutes. Add garlic and ginger and cook until fragrant, 1 to 2 minutes.
Reduce heat to medium-low and add peas and rice. Cook, stirring occasionally, until warmed through, 4 to 5 minutes. Fold in eggs and season with soy sauce and sesame oil. Serve immediately topped with scallion greens and more sesame oil alongside.', 'rice, ginger, garlic', '15'),
('1', 'Stewart', '2008-12-05', 'Beef Stroganoff', 'Heat oil in a large skillet over medium-high heat. Season steak with salt and pepper. Cook, in 2 batches, without turning, until golden brown on one side and mostly cooked through. Transfer to a plate.
Add butter and onion to skillet. Season with salt and pepper. Cook, stirring occasionally, until onion begins to soften, 1 to 2 minutes. Add mushrooms and cook, stirring occasionally, until vegetables are tender, 3 to 4 minutes. Sprinkle flour over vegetables and cook, stirring, 1 minute. Stir in stock and vermouth. Cook, stirring occasionally, until thickened, 6 to 8 minutes.
Remove from heat and stir in sour cream, mustard, Worcestershire, and beef. Season with salt and pepper. Serve over noodles sprinkled with parsley.', 'sour cream, white vermouth, egg noodles', '60'),
('1', 'Casey','2018-01-04', 'Chicken Quesadillas', 'Heat 1 tablespoon oil in a medium saucepan over medium heat. Add flour and chili powder. Cook, stirring, 1 to 2 minutes. Gradually whisk in stock. Add bell pepper, mushrooms, and chicken. Cook, stirring occasionally, until vegetables are tender, 6 to 8 minutes. Remove from heat and stir in cheese.
Heat 1/2 teaspoon oil in a large nonstick skillet over medium heat. Spread half of vegetable mixture on a tortilla, leaving a 1-inch border all around. Top with a second tortilla. Cook, turning once, until golden brown, 2 to 3 minutes per side. Repeat with remaining oil, tortillas, and vegetable mixture.
Slice into wedges and serve topped with desired garnishes.', 'flour tortillas, mushrooms, flour', '40'),
('2', 'Jenkins', '2014-05-09', 'Fettuccini Alfredo', 'In a large pot of salted water, cook pasta according to package directions. Reserve 1 cup cooking water before draining.
Meanwhile, melt butter over medium-low heat in a large skillet. Add cream and stir until mixture begins bubble and thicken, 2 to 3 minutes. Add cheese and reduce heat to low. Cook, stirring, until thickened, 5 to 7 minutes. Season with salt and pepper.
Remove from heat, add pasta and stir until coated (If necessary, add cooking water, 1 tablespoon at a time, to thin the sauce and help it coat.) Serve immediately garnished with parsley or thyme.', 'fettuccine, butter, heavy cream', '50'),
('3', 'Quinnell', '2015-07-30', 'Tuna Noodle Casserole', 'Preheat oven to 450°F. Cook egg noodles according to package directions. Reserve 1/2 cup cooking water, drain and return to the pot. Stir in soup and up to 1/2 cup reserved cooking water, 1 tablespoon at a time, until desired consistency is reached.
Meanwhile, heat oil in a small pan over medium heat. Add onion and celery. Season with salt and pepper. Cook, stirring occasionally, until vegetables are soft, 5 to 7 minutes. Add vegetables, cheese, tuna and peas to pot with noodles and stir to combine. Transfer to a 9-by-13-inch baking pan and topped with potato chips.
Bake until top is browned, 8 to 10 minutes. Serve hot.', 'onion, potato, tuna', '40'),
('4', 'Casey', '2015-02-10', 'Beef and Broccoli', 'Whisk together stock, soy sauce, honey, sesame oil, and cornstarch in a bowl until cornstarch is dissolved.
Season steak with salt and pepper. Heat oil in a large skillet over high heat. Add steak and cook, stirring occasionally, until almost cooked through, 2 to 3 minutes; transfer to a plate using tongs. Reduce heat to medium-high. Add broccoli and season with salt. Cook, stirring often, until broccoli is crisp-tender, 2 to 3 minutes (you can add a few tablespoons of water if pan starts to get too dark). Add ginger and garlic. Cook, stirring, until fragrant, 30 seconds to 1 minute.
Whisk sauce and add to pan with steak and any accumulated juices. Cook, stirring, until sauce is thickened and steak is warm, about 1 minute.
Serve over rice topped with sesame seeds and scallions with lime wedges alongside.
', 'steak, garlic, broccoli','35'),
('1', 'Shields','2009-03-26', 'Cobb Salad', 'Make dressing: Whisk together vinegar and mustard in a bowl. Gradually whisk in in oil until blended. Stir in sugar, garlic, and oregano. Season with salt and pepper.
Make salad: Arrange lettuce on a large platter. Top with rows of chicken, cucumber, eggs, tomatoes, avocado, cheese, and bacon. Drizzle with dressing and serve immediately.', 'avocado, cucumber, romaine','15');

INSERT INTO cuisine.OwnedRecipes (owned_recipes,
                          owned_amount) VALUES
('Cobb Salad, Beef and Broccoli', '2'),
('Fettuccini Alfredo', '1'),
('Fried Rice', '1'),
('Salisbury Steak', '1'),
('Chicken Marsala, Orange Chicken, Pear Prosciutto and Goat Cheese Pizza with Arugula', '3'),
('Orange Chicken', '1'),
('Chicken Marsala', '1'),
('Beef and Broccoli', '1'),
('Chicken Quesadillas, Fried Rice', '2'),
('Fried Rice, Orange Chicken', '2'),
('Chicken Quesadillas', '1');

INSERT INTO cuisine.Ingredient (ingredient_name,
                          ingredient_amount, ingredient_value) VALUES
('tomatoes', '2', '25'),
('broccoli', '3', '45'),
('eggs', '2', '24'),
('cucumber', '3', '45'),
('chicken stock', '4', '56'),
('mushrooms', '5', '24'),
('cheese', '2', '13'),
('beef stock', '1', '42'),
('flour', '3', '37'),
('onion', '4', '16'),
('tuna', '2', '18');
