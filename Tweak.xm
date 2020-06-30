%hook Cydia
- (void)applicationDidEnterBackground:(id)arg1 {

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] 	persistentDomainForName:@"io.crafterpika.cybackgroundprefs"];

	id Enabled = [bundleDefaults valueForKey:@"Enabled"];
	if ([Enabled isEqual:@0]){
		%orig;
	} else{
		
	}
} 
%end

%hook Cydia
- (void)applicationWillResignActive:(id)arg1 {

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] 	persistentDomainForName:@"io.crafterpika.cybackgroundprefs"];

	id Enabled = [bundleDefaults valueForKey:@"Enabled"];
	if ([Enabled isEqual:@0]){
		%orig;
	} else{
		
	}
} 
%end

%hook UIApplication
- (void)_applicationDidEnterBackground {

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] 	persistentDomainForName:@"io.crafterpika.cybackgroundprefs"];

	id Enabled = [bundleDefaults valueForKey:@"Enabled"];
	if ([Enabled isEqual:@0]){
		%orig;
	} else{
		
	}
} 
%end