import org.wso2.ballerina.connectors.twitter;

import ballerina.lang.messages;
import ballerina.lang.system;

function main (string[] args) {

	//these id's are set to an app on my twitter account 
string consumerKey = "xxxxxxxxxxxxxxxxxxxxxxxxxx";
string consumerSecret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
string accessToken = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
string accessTokenSecret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
    
    twitter:ClientConnector twitterConnector = create twitter:ClientConnector(consumerKey,consumerSecret,accessToken,accessTokenSecret);

    message tweetResponse;
    json tweetJSONResponse;
	
	//retrieves trend location data based on Latitude and Logntitude arguments
	//tweetResponse = twitter:ClientConnector.getClosestTrendLocations(twitterConnector, args[0] ,args[1]);
    tweetResponse=twitter:ClientConnector.search(twitterConnector,"colombo");
    
	tweetJSONResponse = messages:getJsonPayload(tweetResponse);
	system:println(tweetJSONResponse);


	//retrieves trend hashtags and keywords of the retrieved nearest location
    //tweetResponse = twitter:ClientConnector.getTopTrendsByPlace(twitterConnector, jsons:toString(tweetJSONResponse[0].woeid));
    //
    //tweetJSONResponse = messages:getJsonPayload(tweetResponse);
	//
	//int i=0;
	//
	//
	////print the retrieved trending hashtags and keywords
	//try {
     //   json family = tweetJSONResponse[0].trends;
     //   while (true) {
     //       json e = family[i];
     //       system:println(e.name);
     //       i = i + 1;
     //   }
    //} catch (errors:Error e) {
     //   string msg = e.msg;
     //   if (!strings:contains(msg, "array index out of range")) {
     //       system:println(msg);
     //       throw e;
     //   } else {
     //       system:println("length of array: " + i);
     //       // Ignore the error.
     //   }
    //}
		
        //system:println(jsons:toString(tweetJSONResponse));

}
