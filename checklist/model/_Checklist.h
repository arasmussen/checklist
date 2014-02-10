// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Checklist.h instead.

#import <CoreData/CoreData.h>

extern const struct ChecklistAttributes {
	__unsafe_unretained NSString *name;
} ChecklistAttributes;

extern const struct ChecklistRelationships {
	__unsafe_unretained NSString *checklistItems;
	__unsafe_unretained NSString *collaborators;
	__unsafe_unretained NSString *owner;
} ChecklistRelationships;

@class ChecklistItem;
@class Person;
@class Person;

@interface ChecklistID : NSManagedObjectID {}
@end

@interface _Checklist : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ChecklistID*)objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *checklistItems;

- (NSMutableSet*)checklistItemsSet;

@property (nonatomic, strong) NSSet *collaborators;

- (NSMutableSet*)collaboratorsSet;

@property (nonatomic, strong) Person *owner;

//- (BOOL)validateOwner:(id*)value_ error:(NSError**)error_;

@end

@interface _Checklist (ChecklistItemsCoreDataGeneratedAccessors)
- (void)addChecklistItems:(NSSet*)value_;
- (void)removeChecklistItems:(NSSet*)value_;
- (void)addChecklistItemsObject:(ChecklistItem*)value_;
- (void)removeChecklistItemsObject:(ChecklistItem*)value_;
@end

@interface _Checklist (CollaboratorsCoreDataGeneratedAccessors)
- (void)addCollaborators:(NSSet*)value_;
- (void)removeCollaborators:(NSSet*)value_;
- (void)addCollaboratorsObject:(Person*)value_;
- (void)removeCollaboratorsObject:(Person*)value_;
@end

@interface _Checklist (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveChecklistItems;
- (void)setPrimitiveChecklistItems:(NSMutableSet*)value;

- (NSMutableSet*)primitiveCollaborators;
- (void)setPrimitiveCollaborators:(NSMutableSet*)value;

- (Person*)primitiveOwner;
- (void)setPrimitiveOwner:(Person*)value;

@end
