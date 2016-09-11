#PROMPT

* One User can enter a word and another user will attempt to guess the word

* Guesses are limited, and the number of guesses available are related to the length of the word

* Repeated guesses do not count against the user

* The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like 
"_ _ _ _ _ _ _"; which would become "_ _ _ c _ _ _" after guessing the letter "c"

* The user should get a congratulatory message if they win, and a taunting message if they lose. 

#PseudoCode

* Create a game class; initializes with empty array to store the mystery word
* Methods:
    - *split* to break the string into individual characters and store them into an array
    - *enter_guess* takes user's guess
    - *verify_guess* checks the user's guess against the letters of the mystery word; if there is a match, the board will show the correct match
    - *display_board* shows the current state of the board
    - *winner_winner* verifies the end of the game and congratulates the user on correctly guessing the mystery word


