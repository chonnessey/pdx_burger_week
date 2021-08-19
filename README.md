# PDX Burger Week
## By Adrian Camacho, Michael Reiersgaard, Arthur Lee :electric_plug:

---
![I am GitHub Readme Generator's creator](https://i.ibb.co/BGjZXGY/Screen-Shot-2021-08-19-at-3-33-50-PM.png)

### Project Description :pencil:

* This project is a mock burger site inspired by Portland's Burger Week. Our site uses our [Burger-API](https://pdx-burger-week-api.herokuapp.com/burgers/) that populates the data using both _factory bot_ and _faker_ Ruby gems. 

* The site allows admin users to view, update and delete burgers at their own free will!

* As for regular users, you can add, update and delete your own reviews for a burger!
---
### Tech Stack :floppy_disk:
1. _Ruby 2.6.3_
2. _Rails 6.1.4_
3. _Node.js_
4. _Ruby gems_
5. _HTML_
6. _Bootstrap_
7. _Scss_
8. _Sass_
9. _Postman_
---
### Installation Instructions :pushpin:
1. Clone this repo: `https://github.com/chonnessey/pdx_burger_week.git`
2. Enter new directory `cd directory`
3. Install dependencies with the `bundle` command.
4. Create a server side database with the command `rake db:create`.
5. To run the Rails local server run the command `rails s` and then navigate to `localhost:3000`.
6. Create an account by clicking the sign up link on the homepage.
7. If you would like to give yourself admin access you can do so in the rails console. Run the command `rails c` to enter the console.
8. Find the user you created and look for the _id_ by running `User.all`.
9. Once you find your _id_, save it into a variable ie: `admin = User.find(1)`.
10. Update your admin attribute to true like this `admin.update({:admin => "true"})`
11. Finally save your updated admin object with the command `admin.save` and you should be good to go!
12. Fill out the forms, explore and have fun!
---
### Known Bugs :bug:
1. No Known Bugs.
2. Please open a pull request if you have any issues!
---
### Contact Info :inbox_tray:

> You can reach us at: 
> * Adrian: <adriancamacho18@gmail.com> :rocket:
> * Michael: <michael.reiersgaard@gmail.com> :rocket:
> * Arthur: <meleearthur@gmail.com> :rocket:
___
### License is GPLv3 and I make no claim to copyright. :guardsman:
<br />

> You can't steal what is freely given. Enjoy!

<br />
<br />
<br />
<br />
<p align="center">
  <small>Made in Portland, Oregon.</small>
</p>