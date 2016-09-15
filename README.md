# politicator
politicator is a prototype app that helps users undestand how their political leanings stack up against our presidential candidates. Think you know where you stand? See if you're right! Want to know more about what our candidates think about major current policies? This is the perfect app for you. See supporting quotes from the candidates themselves and take a quick survey to find out who you align with on major current issues. Visit the live app here: https://politicator-app.herokuapp.com/

**Original Designs:**
![Alt text](/public/images/homepage.jpg?raw=true "Home Page Design")

The goal of this project was to work in a 4 person team to build a full-stack app in Ruby on Rails, using Active Record to interact with a PostgreSQL database. That app needed to have multiple models, RESTful routes, users and authentication, authorization, error handling, and password encryption. The app also needed be mobile optimized and showcase an appealing UI. The purpose of the app was to enforce core MVC concepts and explore managing multiple models with User accounts.

**Technologies Used:**
- Ruby and Rails
- jQuery/AJAX
- Bootstrap CSS and JS
- PostgreSQL & ActiveRecord
- Heroku (hosting)

**What's next?:**
- Improve survey page
- Add more policies to the database

**Outstanding Issues:**
- Mobile responisiveness could be better - also, not optimized for tablet.
- Occassionaly the bootstrap modals will flash, then disappear when first opened. Need to investigate a fix. If you encounter this issue, simply refresh the page.

**Installation Instructions:**
- To view the live site, visit: https://politicator-app.herokuapp.com/
- To install locally, visit: https://github.com/gregbrunk/politicator and fork/clone the repo
- Install Ruby v 2.2.5 or newer installed - https://www.ruby-lang.org/en/downloads/
- Install postgresql - https://wiki.postgresql.org/wiki/Detailed_installation_guides
- From a console in the root politicator directory, run 'bundle', follwed by 'rake db:setup'
- Start the server using rails s
- Navigate to 'http://localhost:3000/' from your browser
- Enjoy!

*This app was developed as Project #3 for my General Assembly Denver - WDI Immersive course.*
