// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.m instead.

#import "_Person.h"

const struct PersonAttributes PersonAttributes = {
	.name = @"name",
};

const struct PersonRelationships PersonRelationships = {
	.collaborateOn = @"collaborateOn",
	.ownedChecklists = @"ownedChecklists",
};

@implementation PersonID
@end

@implementation _Person

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Person";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Person" inManagedObjectContext:moc_];
}

- (PersonID*)objectID {
	return (PersonID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic collaborateOn;

- (NSMutableSet*)collaborateOnSet {
	[self willAccessValueForKey:@"collaborateOn"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"collaborateOn"];

	[self didAccessValueForKey:@"collaborateOn"];
	return result;
}

@dynamic ownedChecklists;

- (NSMutableSet*)ownedChecklistsSet {
	[self willAccessValueForKey:@"ownedChecklists"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"ownedChecklists"];

	[self didAccessValueForKey:@"ownedChecklists"];
	return result;
}

@end

