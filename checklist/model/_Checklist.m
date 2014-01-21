// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Checklist.m instead.

#import "_Checklist.h"

const struct ChecklistAttributes ChecklistAttributes = {
	.name = @"name",
};

const struct ChecklistRelationships ChecklistRelationships = {
	.checklist_items = @"checklist_items",
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

@dynamic checklist_items;

@end

