# Game of Life
A game consisting of a 'world' of 'cells' that either lives or dies each 'tick' depending on a particular set of rules.

### The Brief
The rules are as follows:

- The game evolves in turns, commonly known as 'ticks'.
- All changes occur at the same time.
- Any live cell with 2 or 3 live neighbours survives until next tick.
- Any live cell with less than 2 live neighbours dies (underpopulation).
- Any live cell with more than 3 live neighbours dies (overpopulation).
- Any dead cell with exactly 3 neighbours becomes a live cell (reproduction).

## How to run
### Download
```
$ git clone git@github.com:LazySamir/game-of-life.git
$ cd game-of-life
$ bundle
```
### Usage instructions
##### Open the bank-test directory and run 'irb'
`$ irb`
##### Require the classes
```
$ require "./lib/world.rb"
$ require "./lib/cell.rb"
```
##### Create a world

`$ world = World.new`
- The world will default at a 3x3 size. To customise the size, pass x and y axis as arguments. For instance, for a 10 by 10 world enter:

`$ world = World.new(10,10)`

##### Choose which cells will start 'living'
- All cells begin dead. Cells can be switched from living to dead and dead to living by passing the location of the cell the toggle_living method. For instance, to turn the top left cell to living enter:

`$ world.map[0][0].toggle_living`

##### Trigger next tick

`$ world.tick`

##### See the effect of the tick
- Target a cell and check whether it is now living.

`$ world.map[0][0].living?`

### Test the application
```
$ cd game-of-life
$ rspec
$ rubocop
```
Test coverage is: 100% All tests are passing


### Remaining tasks

Isolate unit tests
Create rspec feature tests
Consider moving some world logic to Cell
