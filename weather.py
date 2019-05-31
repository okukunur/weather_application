# Weather.py 
# A python script which takes zipcode as input and return the weather 
# information of that area


# import libraries
import urllib2
import json

# Define user input and URL
zipcode = raw_input("Enter a valid zipcode: ")
url = 'http://api.wunderground.com/api/bbd831cca20b0c2f/geolookup/conditions/q/%s.json' %(zipcode
f = urllib2.urlopen(url)

# Read json
json_string = f.read()

# Parse data
parsed_json = json.loads(json_string)

location = parsed_json['location']['city']

temp_f = parsed_json['current_observation']['temp_f']

# Print result
print "Current temperature in %s is: %s F" % (location, temp_f)

f.close()

