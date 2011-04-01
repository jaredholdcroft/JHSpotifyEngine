JHSpotifyEngine

by Jared Holdcroft (http://www.jaredholdcroft.com) but based on the excellent MGTwitterEngine by Matt Legend Gemmell - http://mattgemmell.com.

JHSpotifyEngine is an Objective-C/Cocoa class which allow you to interrogate the Spotify search service. It communicates using the public Spotify metadata search API which you can read about here: http://developer.spotify.com/en/metadata-api/search/. It currently uses NSXMLParser in a way that means it will work in iPhone/iPad apps as well as desktop Cocoa.

Usage
=====

1. Copy the relevant source to your project. This is everything in the JHSpotifyEngine subfolder.

2. #import the JHSpotifyEngine.h into whichever class you want to use JHSpotifyEngine from. You will also need to declare that the class implements the JHSpotifyEngineDelevate protocal too.

3. Implement the JHSpotifyEngineDelevate methods:

- (void)requestSucceeded:(NSString *)connectionIdentifier;
- (void)requestFailed:(NSString *)connectionIdentifier withError:(NSError *)error;
 
- (void)artistsReceived:(NSArray *)artists forRequest:(NSString *)connectionIdentifier;
- (void)albumsReceived:(NSArray *)albums forRequest:(NSString *)connectionIdentifier;
- (void)tracksReceived:(NSArray *)tracks forRequest:(NSString *)connectionIdentifier;

4. Instantiate and then search away! As with the majority of public API there is a fair usage limit which may see your IP banned for a little while if you overuse the search. I never hit this during development.  There is a demo app included that allows you to test it out too.

Next
====

1.1 - Lookup API
1.2 - Allow other XML parsers to be used