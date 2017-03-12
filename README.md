# Udacity Full Stack Web Developer Nanodegree


## Project: Tournament Database

In this project I build a database backed software to run a particular kind of game or sporting 
tournament. This  of game follow the Swiss-System tournament type in which player are not eliminated when they lose a match, but are paired in each round with opponents having approximately the same win-loss record. 

### Instructions to run the app. 

* Download and Install virtual box.
* Download and install vagrant 
* Verify that virtual box is installed 
* verify vagrant is installed by typing in the terminal (vagrant -v)
* Download or Clone my repo from 
* Navigate to the folder in which the files are located using the terminal
* launch vagrant from the root folder using vagrant up (it will take a few minutes)
* Login into vagrant by typing vagrant ssh
* navigate to the vagrant folder once your are login and run the unit test named tournament
 _result.py
* When finish using vagrant use  ```vagrant halt``` to shutdown the machine

#### Result from tournament_test.py should look like this:

```
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!
```

### References:

* [PostgreSQL Documentation] (https://www.postgresql.org/docs/). 
* [Python Documentation] (https://docs.python.org/2.7/). 
* [Vagrant Documentation] (https://www.vagrantup.com/docs/). 
