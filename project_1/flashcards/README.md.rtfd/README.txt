User Stories:

As a user I want to play flashcard game by selecting a main menu option.
# format user stories in the following
- a user should be able to play a game

As a user I want to return to the main menu from the game at any point.
- a user can return to the main menu at any point

As a user I want to access a full list of flashcards by selecting a main menu option.
- so on and so forth ....

As a user I want to view my score by selecting a main menu option.

As a user I want to exit program and save my data by selecting main menu option.

As a user I want to edit an individual flashcard by choosing from a list of flashcards.

As a user I want to add a new flashcard by choosing a menu option and entering a category/question/and answer.

As a user I want to delete an individual flashcard by choosing from a list of flashcards.

Pseudocode:

Program should: 

List all flashcards. 
(method: listing flashcards)

Create Flashcard
(method: add_flashcard)

Edit Flashcard
(update method)

Delete Flashcard 
(delete method)

View score/ recent answers
(update method)


FLASHCARD MENU: 
	•	Play game.
	•	List/Edit/Delete flashcards. 
	•	View Score/ Recent Answers
	•	Exit & Save Game. 

	Case Statements
		If User Selects 1 
			List Category
			Prompt to select category. 
			Gets User Input
				Category Questions 
				Gets Chomp
				If Answers Match Gets Chomp Mark Correct. 
					Change Question Status. Correct = Answered
				Else
				Return False “Try Again” Question remains in deck.
			Show Score. Next Card or Main Menu?



		If User Selects 2 
			List all flashcards. 
				Card Menu
				1 Create Flashcard
				2 Edit Flashcard
				3 Delete Flashcard
				4 Main Menu
					If User Input = 1
						Create Method
					If User_input = 2
						Update Method
					If User_input = 3
						Delete Method
					if  4 
						Loop Back. 
		If User Selects 3
			Count method on answered correctly questions. 
			Display Questions. 

		If User Selects 4 
			 Exit Program
