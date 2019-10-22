import sys
import os
from theftStream import *
from assaultStream import *
from accidentStream import *
from suspicStream import *
from inputStream import *

def mainMenu():
    print ("")
    print ("Welcome to the Tweetmapper, please choose an option") #print statements instructing user on how to use program
    print ("")
    print ("########################################################")
    print("Press 1 to search for tweets based on theft")
    print("Press 2 to search for tweets based on accident reports")
    print("Press 3 to search for tweets based on assault")
    print("Press 4 to search for tweets based on suspicious activity")
    print("Press 5 to generate your own keyword search (this database is currently populated with tweets about trump")
    print ("Press 6 to clear the terminal")
    print ("Press 7 to quit the program")
    print ("########################################################")
    print ("")


    while True:
        try:
            selection=int(input("Enter choice: "))#selection 1 streams tweets and stores to theft database
            if selection==1:
                theft()
                print('Streaming tweets to database... Press 1 to stop the stream, print the latest tweets and launch map')
                stop = int(input("Enter choice: "))
                if stop == 1:
                    Stooping()#function to call end the stream and launch map in browser
                    mainMenu()#return to top menu
                else:
                    print('You have entered an incorrect input, the stream has been stopped, please choose again')
                    errorstop()# disconnects the stream if an incorrect input has been entered
                    mainMenu()#return to top menu

                #break
            elif selection==2:
                accident()
                print('Streaming tweets to database... Press 1 to stop the stream, print the latest tweets and launch map')
                stop2 = int(input("Enter choice: "))

                if stop2 == 1:
                    Stoopingacc()  # function to call end the stream and launch map in browser
                    mainMenu()  # return to top menu
                else:
                    print('You have entered an incorrect input, the stream has been stopped, please choose again')
                    errorstopacc()  # disconnects the stream if an incorrect input has been entered
                    mainMenu()  # return to top menu

            elif selection == 3:
                assault()
                print('Streaming tweets to database... Press 1 to stop the stream, print the latest tweets and launch map')
                stop3 = int(input("Enter choice: "))
                if stop3 == 1:
                    Stoopingass()
                    mainMenu()
                else:
                    errorstopass()
                    mainMenu()

            elif selection == 4:
                suspicious()
                print('Streaming tweets to database... Press 1 to stop the stream, print the latest tweets and launch map')
                stop3 = int(input("Enter choice: "))
                if stop3 == 1:
                    Stoopingsus()
                    mainMenu()
                else:
                    errorstopsus()
                    mainMenu()

            elif selection == 5:
                userinput()
                print(
                    'Streaming tweets to database... Press 1 to stop the stream, print the latest tweets and launch map')
                stop3 = int(input("Enter choice: "))
                if stop3 == 1:
                    Stoopingin()
                    mainMenu()
                else:
                    errorstopin()
                    mainMenu()

            elif selection ==6:
                clear = lambda: os.system('cls')
                clear()
                mainMenu()
            elif selection==7:
                sys.exit('You have terminated the program. Thank you for using my application')
              #  False
            else:
                #os.system('clear')
                print ("You have entered an incorrect input")
                errorstopin()
                mainMenu()
        except ValueError:
                print ("You have entered an incorrect input")
                errorstopin()
                mainMenu()
    exit

if __name__ == "__main__": #prevents import from running upon execution of script
    mainMenu()
