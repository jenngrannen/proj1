# Q0: Why are these two errors being thrown?
The first error is being thrown because there are migrations pending so our migration is not up to date. The second error is thrown because the Pokemon class is not yet defined, so there is no method where for Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon are appearing from the database of Pokemon, which the seed entered in a list of possible Pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that calls the capture method to assign a pokemon to a trainer. capture_path(id: @pokemon) sends in the pokemon to be captured's id as a param to the patch route of capture.

# Question 3: What would you name your own Pokemon?
Siddliey

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the helper to display the trainer with the id of the trainer to be displayed (aka the trainer of the pokemon being damaged).

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The flash contains errors and this line displays them in the context of the pokemon.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
