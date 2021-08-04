# Web Portfolio - Ruby Rack Backend

This is the Ruby backend built with Rack for my web app portfolio. The API has endpoints for projects, skills, and messages. The frontend is built with React JS. For the frontend, see the repo here: https://github.com/Meganmccarty/web-portfolio-react

You can visit the live, frontend website here: https://meganmccarty-web-portfolio.netlify.app/

## Get your own copy
To create your own copy of this project:
1. Fork this repo
2. Click the green 'Code' button at the top right and copy the link
3. In your terminal, navigate to the directory in which to clone the repo
4. Type `git clone <copied-link>` and hit enter
5. Type `cd web-portfolio-ruby` and hit enter
6. Run `bundle install`
7. Run `rake db:migrate`
    - Optional: edit the `seed.rb` file and add in your own data, then run `rake db:seed`
8. Run `shotgun`

The website should open up in a new browser tab at `http://localhost:9393`. The main route shouldn't have anything, but you can navigate to one of three endpoints: `/projects`, `/skills`, and `/messages`

### Configure the frontend (optional)
If you want to use this API with the corresponding frontend, please see the README for the frontend repo: https://github.com/Meganmccarty/web-portfolio-react 

## Features
* Can create new projects and associate them with tags (and vice versa)
* Can create new skills
* Can send patch requests for liking projects
* Can send post requests for posting messages received from a frontend form

## Resources Used
* Built with Ruby and Rack
* Used ActiveRecord for managing the database and migration files
