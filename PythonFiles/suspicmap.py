import folium
import pymysql
import webbrowser
import sys

#Connect to db
conn = pymysql.connect("localhost", "root", "abc123", "twitter")# mysql login credentials

cursor = conn.cursor()

#select appropriate columns from database
sql = "SELECT latitude,longitude,username, tweet, location \
       FROM suspicious"
cursor.execute(sql)

#get all data
results = cursor.fetchall()

#initiates the folium map in location coordinates given at zoom level give
mapit = tweet_map = folium.Map(location=[36.778259, -119.417931], zoom_start=5,tiles='Stamen Terrain')


#loop array of results for continuous marker plotting
for latLon in results:
    folium.Marker(location=([latLon[0], latLon[1]]), popup=latLon[2]
                    ).add_to(mapit)


def printTweet(): #this will loop over tweets, username and location to print the latest tweets in the database along with the username and location
    for twit in results:
        print ([twit[2], twit[3], twit [4]])

    return True

def sus(): #initialise all functions in this script from the menu
    printTweet()
    mapit.save('sus.html')#save the map and points
    webbrowser.open_new_tab('sus.html')#launch the map in default web browser in a new tab when finished
