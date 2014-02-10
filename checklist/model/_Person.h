// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.h instead.

#import <CoreData/CoreData.h>

extern const struct PersonAttributes {
	__unsafe_unretained NSString *name;
} PersonAttributes;

extern const struct PersonRelationships {
	__unsafe_unretained NSString *collaborateOn;
	__unsafe_unretained NSString *ownedChecklists;
} PersonRelationships;

@class Checklist;
@class Checklist;

@interface PersonID : NSManagedObjectID {}
@end

@interface _Person : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PersonID*)objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *collaborateOn;

- (NSMutableSet*)collaborateOnSet;

@property (nonatomic, strong) NSSet *ownedChecklists;

- (NSMutableSet*)ownedChecklistsSet;

@end

@interface _Person (CollaborateOnCoreDataGeneratedAccessors)
- (void)addCollaborateOn:(NSSet*)value_;
- (void)removeCollaborateOn:(NSSet*)value_;
- (void)addCollaborateOnObject:(Checklist*)value_;
- (void)removeCollaborateOnObject:(Checklist*)value_;
@end

@interface _Person (OwnedChecklistsCoreDataGeneratedAccessors)
- (void)addOwnedChecklists:(NSSet*)value_;
- (void)removeOwnedChecklists:(NSSet*)value_;
- (void)addOwnedChecklistsObject:(Checklist*)value_;
- (void)removeOwnedChecklistsObject:(Checklist*)value_;
@end

@interface _Person (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveCollaborateOn;
- (void)setPrimitiveCollaborateOn:(NSMutableSet*)value;

- (NSMutableSet*)primitiveOwnedChecklists;
- (void)setPrimitiveOwnedChecklists:(NSMutableSet*)value;

@end
