//
//  JHSpotifyEngineAppDelegate.h
//  JHSpotifyEngine
//
//  Created by Jared Holdcroft on 25/11/2009.
//  Copyright 2009 Bitformed. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "JHSpotifyEngine.h"
//#import "JHSpotifyEngineDelegate.h"

@interface JHSpotifyEngineAppDelegate : NSObject <NSApplicationDelegate, JHSpotifyEngineDelegate> {
    NSWindow *window;

	IBOutlet NSTextField *searchString;
	IBOutlet NSComboBox *searchType;
	
	JHSpotifyEngine *spotifyEngine;
	
}

- (IBAction)search:(id)sender;
- (IBAction)lookup:(id)sender;


@property (assign) IBOutlet NSWindow *window;

@end
