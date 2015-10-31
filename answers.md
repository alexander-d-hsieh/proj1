# Q0: Why is this error being thrown?
    There is no Pokemon model generated.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
    The controller looks for all pokemon whose trainer fields are nil, and takes a random pokemon from that list and returns it. the common factor is that all the pokmeon.trainer == nil.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  It's prompting the path /capture and giving the URI paramter :id to be the @pokemon, which returns the current pokemon's id, and sets the HTTP verb to patch

# Question 3: What would you name your own Pokemon?
  Spaghettini

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  I passed in the trainer_path to the redirect with parameters :id as the current_trainer and the :method as get. It is okay to not pass a path if we pass in the controller "trainers" and the action "show" instead of having the trainer_path


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
