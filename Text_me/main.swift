import Foundation

//  Copyright (c) 2016 Kashyap Raval. All rights reserved.

print("What would you like to text?")
var usersMessage = readLine(stripNewline: true)
if usersMessage != nil {
    print("OK!!. Please Provide Phone number?")
    var toNumber = readLine(stripNewline: true)
    if toNumber != nil {
    
    var clockworkSMS = "https://api.clockworksms.com/http/send.aspx?key={{YOUR API KEY}}" +
    "&to="+toNumber! + "&content=" + usersMessage!
    
    clockworkSMS = clockworkSMS.stringByReplacingOccurrencesOfString(" ", withString: "+")
    print (clockworkSMS)
    var clockworkURL = NSURL(string: clockworkSMS)
    if clockworkURL != nil {
    var responseData = NSData(contentsOfURL: clockworkURL!)
    if responseData != nil {
    var responseString = String(data: responseData!, encoding: NSUTF8StringEncoding)
    if responseString != nil {
    print(responseString!)
    }
    } }
}
}
