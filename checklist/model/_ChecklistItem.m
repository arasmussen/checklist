// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ChecklistItem.m instead.

#import "_ChecklistItem.h"

const struct ChecklistItemAttributes ChecklistItemAttributes = {
	.checked = @"checked",
	.name = @"name",
};

const struct ChecklistItemRelationships ChecklistItemRelationships = {
	.checklist = @"checklist",
};

@implementation ChecklistItemID
@end

@implementation _ChecklistItem

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ChecklistItem" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ChecklistItem";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ChecklistItem" inManagedObjectContext:moc_];
}

- (ChecklistItemID*)objectID {
	return (ChecklistItemID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"checkedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"checked"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic checked;

- (BOOL)checkedValue {
	NSNumber *result = [self checked];
	return [result boolValue];
}

- (void)setCheckedValue:(BOOL)value_ {
	[self setChecked:@(value_)];
}

- (BOOL)primitiveCheckedValue {
	NSNumber *result = [self primitiveChecked];
	return [result boolValue];
}

- (void)setPrimitiveCheckedValue:(BOOL)value_ {
	[self setPrimitiveChecked:@(value_)];
}

@dynamic name;

@dynamic checklist;

@end

