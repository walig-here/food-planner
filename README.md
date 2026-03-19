# Food planner

Application that would plan diverse meals for the given period when requested, based on a set of stored recipes.

## Glossary

### Meal category

Arbitrary category assigned to meal, e.g. *pasta*, *tofu*, *roasted meat*, *seafood* ect.

## Use cases

### Meal planning

#### Flow

1. User requests meal plan for the selected period *T* (in days).
2. System runs an algorithm that creates an optimized meal plan. Requirements:
   - Same meal can't be served more than *N* days in the row.
   - *Categories* must be distributed as equally as possible. Rationale: we don't want to eat the pastas through the whole period.
   - *Categories* must be placed in plan to provide as big diversity as possible. Rationale: we don't want to eat pasta 10 times in a row. 
3. System presents the meal plan to the user for confirmation.
4. When user approves the plan, then system saves it and stops. Otherwise go to step 2.

### Generating shopping list

### Flow

1. User selects *Generate shopping list* while inspecting the meal plan
2. System generates a grocery shopping list that sums quantities of all ingredients
3. System presents grocery shopping list
4. User adjusts quantities based on what they already have in their house
5. User confirms the shopping list
6. System saves the shopping list

### Adding recipes

### Flow

1. User inserts data about the recipe:
   - Title (unique)
   - Category
   - Source URL (optional)
   - Ingredients (name + quantity + unit of measure)
2. System saves the recipe


## DB Schema

![database schema](/db-schema.drawio.svg)
