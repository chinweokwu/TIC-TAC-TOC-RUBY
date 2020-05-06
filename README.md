# TIC-TAC-TOC-RUBY
> Building a tic-tac-toe game on the command line(windows) where two human players can play against each other and the board is displayed in between turns.

> Full task description [here](https://www.theodinproject.com/courses/ruby-programming/lessons/oop)

# Game Instructions
-	The board has 9 empty squares
-	There are 2 pieces of tokens — X and O
-	There are only 2 players

- An instruction board is shown in order to specify the places on the board
  - 1 | 2 | 3
  - 4 | 5 | 6
  - 7 | 8 | 9
- Follow the prompts
- Enter players names and continue
- Selections must correspond to the numbers shown above. If user types '1' when turn reached, their piece will be placed at position one on the board
  - X | _ | _
  - _ | _ | _
  - _ | _ | _

Note: The goal is to be the first to place pieces in the orders mentioned, below shows how player two wins

  - X | O | X
  - X | O | _
  - _ | O | X

- The game prompts for a response of weather you wish to continue or not once there is a win or draw. The game exits if user wants to quit or viceversa if yes is selected
 


# How to Play
-	Players take turns playing
-	1st turn — Player 1
-	Player 1 places their token (X) in only 1 square of their choice
-	2nd turn — Player 2
-	Player 2 places their token (O) in only 1 square of their choice, except they can’t touch the square that Player 1’s token already fills
-	3rd turn- Player 1 …. and the cycle continues until a player wins or there’s a tie game
-	There are 8 winning combinations: Top row, Middle row, Bottom row, Left column, Middle column, Right column, Left diagonal, and Right diagonal
-	There’s a draw/tie when the entire board is filled with X’s and O’s but no winning combinations can be found


## Built With

- Ruby
- VSCode
- Terminal
- Rubocop

## Getting Started

**The project was designed to test capalities of implementing Object Oriented Program using Ruby**
- **Ruby Enviroment**: if you do not have ruby installed visit this [link](https://www.ruby-lang.org/en/documentation/installation/) to install

- **Terminal(Mac & Linux) or Command Prompt(Windows)**: run the main file located in the bin folder *$ ruby main*

👤 **Paul Morah**

- Github: [@githubhandle](https://github.com/chinweokwu)
- Twitter: [@twitterhandle](https://twitter.com/Morah89820846)
- Linkedin: [linkedin](https://www.linkedin.com/in/paul-morah-285b63172/)

👤 **Muhammad Arslan**

- Github: [@githubhandle](https://github.com/arslanbisharat)
- Twitter: [@twitterhandle](https://twitter.com/arslan_bisharat-2020bb156)
- Linkedin: [linkedin](https://www.linkedin.com/in/muhammad-arslan-2020bb156)

## 🤝 Contributing

Contributions, issues are welcome!


## Show your support

Give me ⭐️ if you like this project!