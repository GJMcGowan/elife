Classes:
  - World
  - Grid?
  - Plants
  - Wall
  - Animals
  - Energy?
  - Organism?

The world has a small grid. It controls turns and what the environment looks like to an animal.

There are walls(?), empty space, and organisms(plant, animal) in the world.

Every turn, the plants will expand to a neighbouring tile with some probability.

Every turn, the animals will move.

Bonus:
  - Animals move intelligently
  - Animals have energy, and die if they don't eat enough plants in a given number of turns.
  - Animals can reproduce
  - Predators as well as herbivores.

MVPs:
  - There is a grid
  - There is a grid with strings to represent things
  - There are plant objects
  - There is a grid with objects to represent things
  - The grid knows what thing is at what space.
  - The grid can vaguely represent what is at each position.
  - There are wall objects

Bonus:
  - The grid is randomly generated
  - Bonus engine as above.

Surrounding_space:
  - Next number can be found with .next
  - Next letter can be found with :A2.to_s.reverse.next.reverse.to_sym
  - Last things are more difficult. You can do var = :B2.to_s.split('')[0].ord - 1 and then var.chr (And change the index to chose a number or letter)
  - Also need a coordinates checker to make sure it's not off the world.

Breeding:
  - Maybe need a function to check whether a plant was just bred?

Web interface:
  - can perhaps use constants to store things as in battleships, however that could be very bad.
  - maybe I should rewrite to use databases?
  - if I do that, how do I then use javascript to act on the elements?
    - Maybe that's easy in comparison.

Database conversion:
  - Table for 'grid'
    - Can use methods to extract the grid from a database (bad idea probably)
    - Could potentially rewrite to have each line of database be a grid item which stores a plant/animal/is empty (better)
    - This would make it easier to put things on the page.
  - Table for 'plants'?
    - stores energy and position
  - Table for 'animals'?
    - stores energy and position