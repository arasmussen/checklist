// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Checklist.m instead.

#import "_Checklist.h"

const struct ChecklistAttributes ChecklistAttributes = {
	.name = @"name",
};

const struct ChecklistRelationships ChecklistRelationships = {
	.checklistItems = @"checklistItems",
	.collaborators = @"collaborators",
	.owner = @"owner",
};

@implementation ChecklistID
@end

@implementation _Checklist

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Checklist" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Checklist";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Checklist" inManagedObjectContext:moc_];
}

- (ChecklistID*)objectID {
	return (ChecklistID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic checklistItems;

- (NSMutableSet*)checklistItemsSet {
	[self willAccessValueForKey:@"checklistItems"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"checklistItems"];

	[self didAccessValueForKey:@"checklistItems"];
	return result;
}

@dynamic collaborators;

- (NSMutableSet*)collaboratorsSet {
	[self willAccessValueForKey:@"collaborators"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"collaborators"];

	[self didAccessValueForKey:@"collaborators"];
	return result;
}

@dynamic owner;

@end

