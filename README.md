# Requirement List:

We will get started by setting up the PM (Project Management) Tool project which we will work on for the rest of this bootcamp.

Here is what you need to do:
* Setup empty Rails project (make sure it's version 4.0.3 or more)
* Make sure that the project uses postgres database
* Create controller "home" that handles home and static pages
* Create a page "About" which has information about the tool (anything for now). 
* Add your photo and information in the about page (link to external photo of you for now)
* Create a navigation bar that applies to all pages. The navigation bar must include links to "home" and "about" pages
* Put all of your code on GitHub (or BitBucket)
* Submit the Github link.

# PM tool: Build your models

Build four of your main models: project, task, discussion and comment (don't worry about associations yet, will add those later).

Here are a summary of suggested fields and validations (feel free to add to those)

* Project: title(required & unique), description and due_date
* Task: title (required & unique within a project) and due_date
* Discussion: title(required), description
* Comment: body(required)

# Assignment: PM Tool: Tasks

Implement full CRUD operations for Task resource in the PM tool. Very similar to the project resource.

# PM Tool: projects

Build CRUD for your project management tool with:
* Ability to list all the projects in the system
* Ability to view a page with a form to create a new project
* Ability to click "submit" on the form and create the project
* It shouldn't allow creating projects without a title
* On the listing page there should be a link to visit the project display page
* That page should have "edit" and "delete" links
* Clicking the edit link should go to a page similar to the one for creating new project, except that it should say "editing project" and should be pre-populated with project info
* Clicking "delete" should prompt the user "Are you use you want to delete this project" and if the user clicks "yes" it should delete the project from database and takes user back to listing page.

# Integrate Bootstrap

Integrate Bootstrap with you PM Tool. 

Make sure that the following happens:
* Bootstrap CSS files are included
* Bootstrap JS files are included
* There should be a nav bar
* All of your content should be included in a "div" with "container" class
* Convert all of the main links to use classes: btn with btn-primary, btn-info or btn-danger
* Create two css groups one for the landing page called "external" and the other one is the default "application" which is used everywhere else.

# Assignment: Searching..

Implement the ability to search for a project by a search field that matches with either name or description.

# Challenge: Pagination..
```
I was not able to do this part
```

Implement pagination for listing projects.

Here are the features that should be implements:
* Pagination should only show if there is more than 10 records in database
* Next button that takes you to next page
* Previous button that takes to previous page
* If you are on the first page the previous button should be disabled
* If you are on the last page the next button should be disabled.

Don't use a gem for this, build it from scratch.

# PM Tool: Discussions & Comments

Give the ability to have discussions for your project. Each discussion must have a title and a body. Then each discussion has many comments.

Give the ability to update / delete both the discussion and the comments. Don't worry about user permissions for now.

# PM Tool: Tasks

Each project needs tasks so build a way to add tasks to the project.

Each task must have "body". Make sure that tasks can be marked as "done" or "undone".

Make sure that on the project show page you list all the tasks in two group: done and not done. Creating a task puts it in a "not done" list to start.

# PM Tool: Add user authentication

Add standard user authentication with Devise for your PM Tool. Make sure your user has first name and last name

Associate all your records with the user model.

# PM Tool: Redirection..

Find out how to redirect user to new project page after the signed up for the first time.

# Add ability to add members to projects

Add the ability to add members (users in the system) to your projects. List all the members of the project in the display page.

# Add ability to tag projects

Add ability to tag projects. Build this from scratch and don't use external gem.

# Add ability to favorite projects

Add ability to favorite projects. Users can't favorite their own projects. User can only favorite project ones.

Add a section for users to view their favorited projects. 

# Add emailing Next Module

Setup mailing with your PM tool.

Add mailers to the following:
Discussion owner when someone comments on the discussion (if it's not the same user)
Task owner when someone completes the task (if it's not the same user)

# Move to the background Next Module

Do the following for you PM Tool:
Setup Delayed Job
Move all the mailers to the background
Setup a task that does the following:
Make a summary (list) of all newly created tasks that that day for projects
Make a summary (list) of all newly created discussions that that day for projects
Send an email with the summary to project owners

# AJAXify task creation & deletion Next Module

Make creating tasks for projects use AJAX so that the page doesn't reload.

Make marking a task as complete use AJAX

Make deleting a task use AJAX

Bonus: Enable Task editing / Updating with AJAX

# AJAXify comment creation & deletion Next Module

Make creating comments for discussions use AJAX so that the page doesn't reload.

Make deleting a comment use AJAX

Bonus: Enable comment editing / Updating with AJAX



