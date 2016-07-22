import Foundation

//  Copyright (c) 2016 Kashyap Raval. All rights reserved.

print("What would you like to text?")
var usersMessage = readLine(stripNewline: true)
if usersMessage != nil {
    print("OK, that’s fine. Which phone number would you like to send this to?")
    var toNumber = readLine(stripNewline: true)
    if toNumber != nil {
    
    var clockworkSMS = "https://api.clockworksms.com/http/send.aspx?key={{YOUR API KEY}}" +
    "&to="+toNumber! + "&content=" + usersMessage!
    
    clockworkSMS = clockworkSMS.stringByReplacingOccurrencesOfString(" ", withString: "+")
    print (clockworkSMS)
    var clockworkURL = NSURL(string: clockworkSMS)
    if clockworkURL != nil {
    // Now make the request and get the response!
    var responseData = NSData(contentsOfURL: clockworkURL!)
    if responseData != nil {
    // Convert the NSData object into a String object
    var responseString = String(data: responseData!, encoding: NSUTF8StringEncoding)
    if responseString != nil {
    print(responseString!)
    }
    } }
}
}