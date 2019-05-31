#!/usr/bin/env python

from Tkinter import *
import sys
import rospy
from lab1_pkg.srv import *

#Display .gif files function
def update():
    global ind
    if(ind == len(frames)):
        ind = 0
    frame = frames[ind]
    ind = ind + 1
    label.configure(image=frame)
    w.after(350, update)

#Sets up the client service
def get_temp_client(zipcode):
    rospy.wait_for_service('get_temp')
    try:
        get_temp = rospy.ServiceProxy('get_temp', GetTemp)
        response = get_temp(zipcode)
        return response
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

#frames to run
def refreshImage(image_run):
   global ind
   ind = 0
   global frames 
   frames = [PhotoImage(file='.//src//lab1_pkg//gifs//%s'%(image_run), format='gif -index %i' % (i)) for i in range(6)]
   w.after(0, update)
   return

#Initial setup
image_run = "general.gif"


def usage():
    return "Please enter a valid 5 digit Zipcode to get the weather of that city"

def weather(event):
    zipcode = entry.get() # User Input for Zipcode
    response = get_temp_client(int(zipcode))
    
    
    if "Clear" in response.weather:
        image_run = "sunny.gif"
    elif "Rain" or "Thunderstorm" in response.weather:
        image_run = "rain.gif"
    elif "Clouds" or "Cloudy" or "Overcast" in response.weather:
        image_run = "cloud.gif"
    
    if "None" in response.weather:
        image_run = "general.gif"

    if response.temp > 80.0 :
        image_run = "hot.gif"    
    
    refreshImage(image_run)
    if "None" in response.weather:
        res.configure(text = "Invalid Zipcode try again...\n")
    else :
        res.configure(text = "Current weather in %s, %s, %s is: \n %sF - %s Real feel: %s" \
                  % (response.city,response.state,zipcode,response.temp, response.weather, response.realfeel))



if __name__ == "__main__":

    w = Tk()
    #w.geometry("400x150")
    w.title("Weather App")
    Label(w, text="Enter Zipcode and press enter:").pack()
    res = Label(w)
    label = Label(w)
    entry = Entry(w)
    entry.bind("<Return>", weather)
    entry.pack()
    res.pack()
    label.pack()
    refreshImage(image_run)
    
    w.mainloop()
    
    sys.exit()
