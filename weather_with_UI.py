# Weather.py 
# A python script which takes zipcode as input and return the weather 
# information of that area using Tkinter Gui

# Import Libraries
from Tkinter import *
import urllib2
import json
import time
import os
import Tkinter as tk

root = Tk()



def update():
    global ind
    if(ind == len(frames)):
        ind = 0
    frame = frames[ind]
    ind = ind + 1
    label.configure(image=frame)
    root.after(350, update)


def refreshImage(image_run):
   global ind
   ind = 0
   global frames 
   frames = [PhotoImage(file='.//lab1//catkin_ws//src//lab1_pkg//gifs//%s'%(image_run), format='gif -index %i' % (i)) for i in range(6)]
   root.after(0, update)
   return

image_run = "general.gif"
refreshImage(image_run)


# Define Gui function
def weather(event):
    zipcode = ent.get()  # User Input for Zipcode
    # Define URL
    url = 'http://api.wunderground.com/api/bbd831cca20b0c2f/geolookup/conditions/q/%s.json' % (zipcode)
    f = urllib2.urlopen(url)
    # Read json
    json_string = f.read()
    # Parse data
    parsed_json = json.loads(json_string)
    # Get information from Parsed date
    city = parsed_json['location']['city']  # City
    zipc = parsed_json['location']['zip']  # Zipcode
    state = parsed_json['location']['state']  # State
    temp_f = parsed_json['current_observation']['temp_f']  # Temperature 
    RealFeel_F = parsed_json['current_observation']['feelslike_f']
    Weather = parsed_json['current_observation']['weather']
    f.close()
    # Print result

    print "Right before if statements"

    if "Clear" in Weather:
        image_run = "sunny.gif"
    elif "Rain" or "Thunderstorm" in Weather:
        image_run = "rain.gif"
    elif "Clouds" or "Cloudy" or "Overcast" in Weather:
        image_run = "cloud.gif"
    else :
        image_run = "general.gif"

    if temp_f > 80.0 :
        image_run = "hot.gif"    
    
    refreshImage(image_run)

    #l = tk.Label(root, text="Current temperature in %s, %s, %s is: %sF" % (city, state, zipc, temp_f))
    #m = tk.Label(root, text="Real feel is: %sF" % RealFeel_F)
    #n = tk.Label(root, text="Weather: %s" % Weather)

    #l.pack()
    #m.pack()
    #n.pack()
    res.configure(text = "Current weather in %s, %s, %s is: \n %sF - %s Real feel: %s" \
                  % (city,state,zipc,temp_f, Weather, RealFeel_F))


label = Label(root)
res = Label(root)

root.title("Weather App")

row = Frame(root)
lab = Label(row, width=15, text="Enter ZIP Code" , anchor='w')
ent = Entry(row)
row.pack(side=TOP, padx=5, pady=5)
lab.pack(side=LEFT)
res = Label(root)
ent.bind("<Return>", weather)

ent.pack(side=RIGHT, expand=YES, fill=X)
res.pack()
label.pack()
res.pack()


root.mainloop()

