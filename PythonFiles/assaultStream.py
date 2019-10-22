import sys
from tweepy import Stream
from tweepy import OAuthHandler
from tweepy.streaming import StreamListener
from dateutil import parser
import json
import pymysql
import webbrowser
from assMap import *

non_bmp_map = dict.fromkeys(range(0x10000, sys.maxunicode + 1), 0xfffd)# convert non bmp characters (e.g. emojis) to replacement character
#                        server  MySQL username MySQL pass  Database name.
conn = pymysql.connect("localhost", "root", "abc123", "twitter", use_unicode=True, charset="utf8") #mysql login details


c = conn.cursor()

# encode character in UTF8
c.execute('SET NAMES utf8;')
c.execute('SET CHARACTER SET utf8;')
c.execute('SET character_set_connection=utf8;')

#  Twitter API authentication tokens, used for OAuth
ckey = "IrcrVDFJXUWfGqpAC8Znd2Y8W"
csecret = "IEQd2VnB4Q82kTNk0vy3c19AJ31DcONUVSKv8Vv60f0dPahQtd"
atoken = "21247306-I05SKT6o9HLgQDZjcEOiCIZVdhZWQwhJdm6zF6rTk"
asecret = "4QVdRqsE3u40wy4aJul5Op9Xfb6VOscDPx8Hq1NTkW8vl"


#################################

class listener(StreamListener):
    def on_data(self, data):
        try:
            data = json.loads(data)
            tweet_date = parser.parse(data['created_at'])
            tweet_time = (data['created_at'])
            user_id = data['user']['id']
            user_name = data['user']['screen_name']
            text_id = data['id']
            user_location = data['user']['location']
            user_lang = data['user']['lang']
            text_msg = data['text']
            tweetTemp = text_msg.translate(non_bmp_map)

            if data['coordinates'] == None: #if there are no coordinates we do not want this tweet
               # print('**No Geotag for this Tweet**')
                longitude = ""
                latitude = ""
            else: #finds the geotagged tweet and inserts thm into database
                #print('**Geotagged Tweet Found***')
                longitude, latitude = data['coordinates']['coordinates']
                #print('***Geotag OK***')
                #print(user_name + tweetTemp)
                c.execute(
                    "INSERT INTO assault (userid, username, tweet, language, location, longitude, latitude) VALUES (%s,%s,%s,%s,%s,%s,%s)",#sql statement to insert data collected \
                                                                                                                                            # into the correct colums
                    (user_id, user_name, tweetTemp, user_lang, user_location, longitude, latitude))
                conn.commit()

            return True
        except:() #if any errors are found, ignore and continue to stream


    def on_error(self, status):
        print(status)

auth = OAuthHandler(ckey, csecret)
auth.set_access_token(atoken, asecret)
twitterStream = Stream(auth, listener())

def assault():
    twitterStream.filter(track=['assault'],async=True)
 #keyword filtered search of twitter stream

def Stoopingass():
    twitterStream.disconnect() #when called this will break the connection with the twitter stream
    amap()#function from map script to print tweet and launch browser showing map

def errorstopass():
    twitterStream.disconnect() #when called this will break the connection with the twitter stream