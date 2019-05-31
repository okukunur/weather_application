#!/usr/bin/env python


# import libraries
import urllib2
import json

from lab1_pkg.srv import *
import rospy

def handle_get_temp(request): 

    # Define url from user input

    url = 'http://api.wunderground.com/api/bbd831cca20b0c2f/geolookup/conditions/q/%s.json' %(request.zipcode)
    f = urllib2.urlopen(url)

    # Read json
    json_string = f.read()

    # Parse data
    parsed_json = json.loads(json_string)

# -------- Get information from Parsed date ---------
    try :
        city = parsed_json['location']['city'] # City
        zipc = parsed_json['location']['zip']  # Zipcode
        state = parsed_json['location']['state'] # State
        temp_f = parsed_json['current_observation']['temp_f'] # Temperature 
        ws = parsed_json['current_observation']['weather'] # Weather
        real_f = parsed_json['current_observation']['feelslike_f'] # Feels like
    except KeyError:
        city = "None"
        zipc = "None"
        state = "None"
        temp_f = 0.0 
        ws = "None"
        real_f = "None"

    f.close()


    print "Returning temperature at %s which is %s"%(city, temp_f)
    return GetTempResponse(city.encode('ascii','replace'),state.encode('ascii','replace'),real_f.encode('ascii','replace'),ws.encode('ascii','replace'),temp_f)

def get_temp_server():
    rospy.init_node('get_temp_server')
    s = rospy.Service('get_temp', GetTemp, handle_get_temp)
    print "Server is ready to lookup the temperature."
    rospy.spin()

if __name__ == "__main__":
    get_temp_server()

