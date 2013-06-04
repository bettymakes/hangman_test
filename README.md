hangman
=======

hangman game, made with blood, sweat, and (almost) tears

Issues remaining to be dealt with:

1) the word_has method to check whether a letter is valid is in fact even more broken than before, since it now will tell you your guess is invalid forever, once you've guessed one invalid guess.
I assume that's because, after you make an invalid guess, the word_has method calls guess, but probably doesn't register the change to letter

2) I'd like the guessed letters to print as a string of letters, separated by spaces, rather than an array. *to_s does not appear to be working for this 