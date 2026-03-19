CREATE TABLE ingredients (
    `id` INTEGER PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE categories (
    `id` INTEGER PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE recipes (
    `id` INTEGER PRIMARY KEY,
    `title` VARCHAR(50) UNIQUE NOT NULL,
    `category_id` INTEGER NOT NULL,
    `source_url` VARCHAR(255) NULL,

    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE recipe_ingredients (
    `id` INTEGER PRIMARY KEY,
    `ingredient_id` INTEGER NOT NULL,
    `recipe_id` INTEGER NOT NULL,
    `unit_of_measure` VARCHAR(50) NULL,
    `quantity` REAL(5, 2) NOT NULL,

    CONSTRAINT fk_recipe FOREIGN KEY (recipe_id) REFERENCES recipes(id)
    CONSTRAINT fk_ingredient FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE meal_plans (
    `id` INTEGER PRIMARY KEY
);

CREATE TABLE planned_meals (
    `id` INTEGER PRIMARY KEY,
    `serving_date` DATE NOT NULL,
    `meal_plan_id` INTEGER NOT NULL,
    `recipe_id` INTEGER NOT NULL,

    CONSTRAINT fk_recipe FOREIGN KEY (recipe_id) REFERENCES recipes(id)
    CONSTRAINT fk_meal_plan FOREIGN KEY (meal_plan_id) REFERENCES meal_plans(id)
);

CREATE TABLE shopping_lists(
    `id` INTEGER PRIMARY KEY,
    `meal_plan_id` INTEGER NOT NULL,

    CONSTRAINT fk_meal_plan FOREIGN KEY (meal_plan_id) REFERENCES meal_plans(id)
);

CREATE TABLE shopping_list_items(
    `id` INTEGER PRIMARY KEY,
    `ingredient_id` INTEGER NOT NULL,
    `shopping_list_id` INTEGER NOT NULL,
    `unit_of_measure` VARCHAR(50) NULL,
    `quantity` REAL(5, 2) NOT NULL,

    CONSTRAINT fk_shopping_list FOREIGN KEY (shopping_list_id) REFERENCES shopping_lists(id)
    CONSTRAINT fk_ingredient FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
);
