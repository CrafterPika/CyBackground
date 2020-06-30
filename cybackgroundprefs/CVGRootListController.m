#include "CVGRootListController.h"
#import <spawn.h>

@implementation CVGRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)FollowTW {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://twitter.com/CrafterPika"]
	options:@{}
	completionHandler:nil];
}

- (void)Apply {
    pid_t pid;
    const char* args[] = {"killall", "Cydia", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

-(void)openGithub {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/CrafterPika/CyBackground"]
	options:@{}
	completionHandler:nil];
}

@end