# Rottler Code Challenge

Aaron Jacobs

aaron8153@gmail.com

314.749.2604

##Steps to run:

* Ruby version: 2.7.1

* Rails version: 6.0.3.2

* bundle install

* rake db:create

* rake db:migrate

* rake load_csv

* Start the puma server - rails s

* Visit http://0.0.0.0:3000


##Brief Description
After inspecting the csv files, I created models and their relationships to each other.
I then wrote a rake task to import each type of object.
I used upsert so that any duplicate entries would only update.
This means that if a new csv file were to be introduced, it would not mess up any of the current data.


Next, I created a table to display the data, using bootstrap.
Normally, I would use variable way to do time comparisons. I used DateTime.parse("2010-01-19"), since all of the data was from that day alone.

Using bootstrap modals and jquery, I populated the elements with the appropriate data. I then used jquery to display the modals on click.

Keeping track of previous and next work orders was a challenge but I managed to keep track of them in order to display the technician availability.
I made the time scale by 5m each row since that was the smallest unit I could break down the work orders into.

I added visual feedback for time slots that occur durring a work order's duration.

##Future Improvements
I would probably find a good calendar scheduling gem, rather than rolling my own. I'd also prefer the table to be rotated so that time is on the x axis. I think this would be much simpler to code and would be more readable. I'd also make the page searchable by technician name.