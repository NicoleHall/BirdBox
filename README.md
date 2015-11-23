## BirdBox

Let's create an app to record your bird sightings. Host your app live on Heroku. Users can create, edit/update, show, and destroy only birds they have sighted.

#### Species

* birds belong to a species
* species can be created and destroyed by a logged-in admin user (regular logged in users cannot create or destroy species)
* when a user types a new bird into the form, there is a [selection dropdown](http://guides.rubyonrails.org/form_helpers.html#option-tags-from-a-collection-of-arbitrary-objects) for choosing the correct species

#### Images

* allow users to add images to their birds
* an image can have many birds and an bird can have many images

#### Authentication and Authorization

* users need to log in to see their birds
* users can only see their own birds -- they should not be able to visit another user's page
* users cannot create birds for other users
* users cannot create new species-- only the admin can do that
* users cannot create images -- only the admin can do that; however, a user can assign an image to their bird
* visitors can create user accounts
