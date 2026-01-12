#!/bin/bash
# a script by Anika Brown

# This code is an adventure game combined with an assistant bot. The bot assists you on an imaginative time travel trip. 
echo Hello! I am your time travel assistant bot! We are going to go on so many great adventures! I will help you organize your journey. But first, what is your name?
read NAME
echo Nice to meet you $NAME! 
# User will customize their experience by choosing the places that they will go to which is done by calling the variables that the user stated by using read.
echo What location would you like to visit first?
read location
echo Ah $location! That is a great choice $NAME. For our first journey, lets go somewhere in the past!  What year would you like to go to?
read year
echo $year! Wonderful idea! INITIATING TIME TRAVEL
sleep 3
echo woosh woosh woosh woosh woosh
sleep  3
echo Here we are! Our first location $location, $year!
sleep 3
echo Take a look around. PLEASE document your journey so far. 
sleep 2
# The bot will create a folder and a text document that the user can write about their journey. It is important that the user writes something in the text box, so it can be read back to them later in the future.
echo You can place all the information you have gathered on $location $year in this handy dandy folder!
mkdir "$location $year"
touch "My_time_in_$location.txt"
mv "My_time_in_$location.txt" "$location $year"
sleep 2
echo Take some time to write about your time in $location, $year. It is of MASSIVE importance that you document your journey.
sleep 4
# If/then statements make the journey more interactive.
echo Are you ready to head back to the present to reconvene $NAME? Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then 
  echo Great, lets go!
  sleep 3
else 
  echo Oh no, some of the people in $location are looking at you suspiciously. We need to leave now!
  sleep 3
fi
echo woosh woosh woosh
sleep 3
echo Welcome back to the present $NAME! 
sleep 1
# Repeat of past journey but in a different location.
echo For our next journey, let’s take a trip into the future!
sleep 1
echo What year would you like to go to?
read time
echo $time? Thats an....interesting choice.....
sleep 2
echo Where in $time would you like to travel $NAME?
read place
echo $place! Are you sure about that..... Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then
  echo Ok....$place,$time.......      INITIATING TIME TRAVEL
else
  echo Woops! I ALREADY INITIATED TIME TRAVEL. AWAY WE GOOOOOOOOOOOOOOO
fi
echo woosh woosh woosh
sleep 2
echo Here we are.....$place, $time. Do not blame me when you do not have a great time $NAME.
mkdir "$place $time a not so great place"
touch "My_not_so_great_time_in_$time.txt" 
mv "My_not_so_great_time_in_$time.txt" "$place $time a not so great place"
sleep 2
echo Here is a folder if you want to remember $place $time. You probably wont want to, but feel free to look around.....PLEASE make sure you WRITE about your experience so other people wont come back here later
sleep 4
echo Can we please go back now $NAME....... Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then 
  echo Great! Then we will head out now! INITIATING TIME TRAVEL
else
  echo Well, I am kinda the one in change, so I am vetoing your decision. INITIATING TIME TRAVEL
fi
sleep 2
echo woosh woosh woosh
sleep 2
echo So that was an .. interesting ...experience. 
sleep 1
# Make a list of the folders that have been created which have names of places visited as way to remind user of journey thus far.
echo Lets take a look at all the places you have gone $NAME.
sleep 2
ls
sleep 2
echo Wow $NAME! You have been to so many awesome places!
sleep 1
echo But I have a fantastic idea to top it all off.
sleep 2
# Part three of story, very similar but also at a different location.
echo ANOTHER PLANET! That would be an amazing place to go!
sleep 2
# User allowed to make anything up.
echo What galaxy would you like to go to?
read galaxy
echo $galaxy! What a wonderful choice, I have not been there in ages. What planet in $galaxy would you like to go to?
read planet
echo $planet, $galaxy! A great place to go! I know you will have an incredible time.
sleep 2
echo Here we go. INITIATING TIME TRAVEL
sleep 3
echo woosh woosh woosh
sleep 3
echo Here we are $planet, $galaxy. Feel free to wander around, say "hi" to the locals, and document your journey in another handy dandy folder I will provide you with.
mkdir "$planet $galaxy"
touch "My_wonderful_time_on_$planet"
mv "My_wonderful_time_on_$planet" "$planet $galaxy" 
sleep 1
echo This is such a nice place to hang out and write about your journey. PLEASE make sure you have WRITTEN about ALL the places you have gone to.....
sleep 5
echo Are you ready to head back now $NAME? Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then 
  echo Ok, lets head out. Onwards to the present.
else 
  echo Oh no! It is the $planet security bot! I may or may not owe him money... We better head out right now!
fi
sleep 2
echo TIME TRAVEL INITIATED
sleep 2
echo woosh woosh woosh
sleep 2
echo Welcome back to the present! Sadly this means our journey has come to an end.
sleep 1
# This section of the code is where the bot goes into the different directories in order to read whatever the user wrote and then leaves that directory.
echo Lets look at what you had to say about all the places you have gone. First, what you wrote about $location, $year:
sleep 2
cd "$location $year"
cat "My_time_in_$location.txt"
cd ..
sleep 2
echo Now, what you wrote about $place, $time:
sleep 1
cd "$place $time a not so great place"
cat "My_not_so_great_time_in_$time.txt" 
cd ..
sleep 2
echo And finally.... $planet $galaxy:
sleep 1
cd "$planet $galaxy"
cat "My_wonderful_time_on_$planet"
cd ..
sleep 3
# This section contains a last couple of if/then statements as a way of bringing the story to a close.
echo $NAME, do I have permission to use your comments in promotions and advertisements for this company? Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then 
  echo Great, thank you so much!
else
  echo Well that is fine. I respect your decision.
fi
sleep 2
echo Did you enjoy your journey? Answer “yes” or “no”.
read answer
if [ $answer = yes ]
then
  echo Great! I am so glad you had a good time. Make sure to recommend my services to other people. Goodbye!
else
  echo Well that sucks for you but I still have your money so HA HA! See ya!
fi
# End of script
