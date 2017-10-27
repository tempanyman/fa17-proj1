# Q0: Why is this error being thrown? 
There is no pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon are all wild, and in the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button that says 'throw a pokeball!' when clicked, it routes to pokemon/capture.

# Question 3: What would you name your own Pokemon?
togepi!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to the path of the current trainer id. No path is necessary because it just redirects to the page I am already on.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash errors are rendered when the page is refreshed, so redirecting to the page creates the message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
