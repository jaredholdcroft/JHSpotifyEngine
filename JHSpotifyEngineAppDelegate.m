//
//  JHSpotifyEngineAppDelegate.m
//  JHSpotifyEngine
//
//  Created by Jared Holdcroft on 25/11/2009.
//  Copyright 2009 Bitformed. All rights reserved.
//

#import "JHSpotifyEngineAppDelegate.h"

@implementation JHSpotifyEngineAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification 
{
	[searchType selectItemAtIndex:0];
    spotifyEngine = [[JHSpotifyEngine alloc] initWithDelegate:self];
	
}

- (IBAction) lookup:(id)sender
{
	NSLog(@"JHSE Lookup NOT YET IMPLEMENTED");	
}

- (IBAction) search:(id)sender
{
	NSLog(@"JHSE Search. Searching for '%@'", [searchString stringValue]);	
	
	NSString *type = [searchType objectValueOfSelectedItem];
	
	if([type isEqualToString:@"Artist"])
	{
		[spotifyEngine searchArtist:[searchString stringValue]];
	}
	else if([type isEqualToString:@"Album"])
	{
		[spotifyEngine searchAlbum:[searchString stringValue]];
	}
	else if([type isEqualToString:@"Track"])
	{
		[spotifyEngine searchTrack:[searchString stringValue]];
	}
	
}

#pragma mark Delegate implementation

- (void) requestSucceeded:(NSString *)response
{
	NSLog(@"Succeeded");
	//[responseXML setStringValue:response];
}

- (void)requestFailed:(NSString *)connectionIdentifier withError:(NSError *)error
{
	NSLog(@"Failed! :: %@", [error description]);
}

- (void)connectionFinished:(NSString *)connectionIdentifier
{
    NSLog(@"Connection finished %@", connectionIdentifier);
	
	if ([spotifyEngine numberOfConnections] == 0)
	{
		[NSApp terminate:self];
	}
}

- (void)artistsReceived:(NSArray *)artists forRequest:(NSString *)connectionIdentifier
{
	//NSLog(@"Artists received %@", artists);
	
	for(NSMutableDictionary *dict in artists)
	{
		NSLog(@"%@", dict);
	}
	
}

- (void)albumsReceived:(NSArray *)artists forRequest:(NSString *)connectionIdentifier
{
	//NSLog(@"Artists received %@", artists);
	
	for(NSMutableDictionary *dict in artists)
	{
		NSLog(@"%@", dict);
	}
	
}

- (void)tracksReceived:(NSArray *)artists forRequest:(NSString *)connectionIdentifier
{
	//NSLog(@"Artists received %@", artists);
	
	for(NSMutableDictionary *dict in artists)
	{
		NSLog(@"%@", dict);
	}
	
}


- (void)dealloc
{
    [spotifyEngine release];
    [super dealloc];
}


@end
