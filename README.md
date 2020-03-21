# Programming Language ddg :computer:

**Group Members:** Sevda Gülen, Ceren Bülbül

**Project Name:** Dodgeball

**How it run ?** 

* make dodgeball
* ./dodgeball < example.ddg

## Syntax

### Blocks and Commands ###

* < program > : **STARTGAME** < statements > **END**

* < statement > : < creation statement > **SEMICOLON** | < change statement > **SEMICOLON** < if elseif else statement > | < if  else statement > | < while statement > | < for statement > | **COMMENT**

* < key statement > ::= **KEY CHILDREN** | < key statement > < assign expression > 

* < change statement > ::= **CHANGE** 

* < if  statement >::= **IF**( < expression > ) < statement > 

* < if else statement >::= **IF**( < expression > ) < statement > **ELSE** < statement >

* < while statement > ::= **WHILE**( < expression > ) < statement >

* < if elseif else statement > **IF**( < expression > ) < statement > < elseif > **ELSE** < statement >

* < elseif statement > ::= **ELSEIF**( < expression > ) < statement > | < elseif statement >


### Types

* < type > ::= < numeric type > | **TEAM** | **GAMERESULT** | < string > | < func type > | 
  
* < numeric type > ::= **STRENGTH** | **HEALTH** | **BALLSPEED** 
  
* < string type > ::= **STRING** | **IDENTIFIER** | **CHILDREN**
  
* < func type > ::= **ACTION** | **ROLE**

  
### Expressions

* < expression > ::= < assignment expression > | < or expression > | < and expression > 
  
* < assignment-expression > ::= < numeric type > < assignment-operator > < numeric type >

* < assignment operator > ::= **EQ**  | **BE**| **SE** | **B** | **S**

* < assign expression > ::= < create statement >  =  **ROLE**(< numeric type >) | < and expression > = **TEAM**

* < or expression > ::= < conditional or expression > < logical-operator > < conditional or expression >

* < and expression > ::= **CHILDREN** < logical-operator >  **CHILDREN** | < and expression >

* < logical-operator > ::= **AND** | **OR**

* < mathematical expression > ::= < numeric type > < mathematical operator > < numeric type >

* < mathematical expression > ::= < numeric type > < mathematical operator > < numeric type >

* < mathematical operator> ::= + | - | / 





## Explanations About The Language

Our programming language is for dodgeball game. It was made by considering the rules in dodgeball game.

It is a programming language that has children objects, every children have different roles(escaper,thrower) and have 10 health as default. There are two different group as A and B. Each group must have at least 2 children in. Game Score is decided with the timescore each group gained. The thrower children can throw ball at certain ball speed the escaper can escape or catch the ball if its specificly assigned strength bigger than the throwers strength + its ballspeed/2. If the escaper can catch the ball its health increases +1. If escaper is hit, his health decreases -1. Otherwise, nothing happens to escaper health. By making CHANGE when all the escaper players die; thrower players become escaper, escaper players become thrower.

. We have determined our tokens as follows:

- **STARTGAME (STARTGAME)([^a-zA-Z0-9])** :arrow_right: STARTGAME is a keyword used to start the game.

- **ENDGAME (ENDGAME)([^a-zA-Z0-9])** :arrow_right: ENDGAME is a keyword used to end the game. 

- **KEY (CREATE | DIE) ([^ a-zA-Z0-9])** :arrow_right: CREATE is used as a keyword when a player is created. DIE is used as a keyword when a player is removed from the game.

- **CHILDREN [A-Z]+**  :arrow_right: Those who play the game

- **CHANGE (CHANGE)([^a-zA-Z0-9])** :arrow_right: The CHANGE keyword changes roles in teams.

- **ACTION THROWING | ESCAPING | CATCHING** :arrow_right: Players' actions

- **ROLE THROWER | ESCAPER** :arrow_right: This is the role the players do

- **STRENGTH \ ([0-9] \)** :arrow_right: The power level set for players.

- **HEALTH [0-9] + [h]** :arrow_right: Candles entered for the players. When the first game starts, everyone is entered for 10h. Their lives increase or decrease according to their shooting or catching the ball.

- **BALLSPEED \ ([0-9] + \.? [0-9] + \)** :arrow_right: The speed of the person throwing the ball.

- **TEAM A | B** :arrow_right: There are 2 teams in the dodgeball game.

- **TIMESCORE [0-9] + [S]** :arrow_right: The length of time players remain in the role of ESCAPER

- **GAMERESULT WIN | LOST** :arrow_right: Whichever team's TIMESCORE time is higher, he wins. Determines winning or losing.

- **IF [^ a-zA-Z0-9] (IF \ (. + \)) [^ A-zA-Z0-9], ELSE ([^ a-zA-Z0-9]) else ([^ a -zA-Z0-9]) , ELSEIF [^a-zA-Z0-9]ELSEIF[^a-zA-Z0-9]
** :arrow_right: IF and ELSE keywords are used when the condition wants to be determined.

- **WHILE [^ a-zA-Z0-9] (WHILE \ (. + \)) [^ A-zA-Z0-9]** :arrow_right: WHILE keyword is used when a loop is wanted.

- **IDENTIFIER [a-z]** :arrow_right: Used for letter identifier.

- **STRING  \".*\"** :arrow_right: It is used in places where you want to create a string.

- **PLUS [+]** :arrow_right: it is a mathematical expression. It is used for summation operations. 

- **MINUS [-]** :arrow_right: it is a mathematical expression. It is used for abstraction operations.

- **DIVIDE [/]** :arrow_right: it is a mathematical expression. It is used for divition operations.

- **ASSIGNMENT =** :arrow_right: Used to assign the player's power or to assign the player to his team.

- **AND &&** :arrow_right: AND used for operations

- **OR ||** :arrow_right: Or used for operations.

- **CONSTANT [0-9] +** :arrow_right: Used to specify integer numbers starting at 0

- **EQ ==, BE> =, SE <=, S <, B >** :arrow_right: It is used for the equality, magnitude, smallness, big equality and small equation of two numbers.

- **COMMENT [^ a-zA-Z0-9] ([//]. + [//]) [^ a-zA-Z0-9]** :arrow_right: Used to comment. These comments do not return anything.

- **SEMICOLON ;** :arrow_right: Used in some statements at the end of the line of code.

