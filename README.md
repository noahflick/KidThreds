# KidThreds

## Summary
KidThreds is an app that allows parents to list clothes that their kids have grown out of in order to sell or give away to other parents.
Users log in (or crete a new account), then can post clothing items. A logged in user's home page is a listing of all currently posted "Threds" (items). Users can upload a profile image and an image for each item. If a user is interested in an item posted by another user, they can email the user.

Users can view all listings, and have full CRUD functionality for their own listings. The basic site contains 2 models: User and Item.
Time permitting, a Category model will be implemented to help organize listings, followed by Comment model for further functionality.
Below is the initial Entity Relation Diagram:

![ERD](Project2_ERD.png)

## Technologies Used

KidThreds is built with Ruby on Rails, with twitter bootstrap used for styling the CSS. The ruby gem "paperclip" and AWS enable image upload functionality. 

## Installation/Startup instructions
To use, just follow this link and sign up (hosted on Heroku): https://kidthreds.herokuapp.com

##Unsolved Problems:
Planned features:
Location - I would ike to add functionality so users can  vieew/search only posts within practical range of their (or any) location
Category - users should be able to group items/searches by category, and/or the site should support use for items beyond clothing
Comments/ user interactions - Users should be able to comment on items or to other users.
Following - Users should be able to "follow" other users, and be informed when a user they are following has posted any new items.

