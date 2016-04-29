# Q0: Why is this error being thrown?
Because pokemon is being called and the model is missing, that provides the abstraction to the data in the db.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are being randomly called from the home.html.erb; the common factor is that they are all not owned by a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It sends an update to the pokemon being captured when you click on "Throw a Pokeball!". capture_path returns the path of capture, which is pokemon#capture.

# Question 3: What would you name your own Pokemon?
Their original names of course!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected it to the trainer path. It needed a trainer object

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It redirects to the same form and flashes an error in red at the top of the page

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

