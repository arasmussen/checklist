// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Checklist.h instead.

#import <CoreData/CoreData.h>

extern const struct ChecklistAttributes {
	__unsafe_unretained NSString *name;
} ChecklistAttributes;

extern const struct ChecklistRelationships {
	__unsafe_unretained NSString *checklist_items;
} ChecklistRelationships;

@class ChecklistItem;

@interface ChecklistID : NSManagedObjectID {}
@end

@interface _Checklist : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ChecklistID*)objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) ChecklistItem *checklist_items;

//- (BOOL)validateChecklist_items:(id*)value_ error:(NSError**)error_;

@end

@interface _Checklist (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (ChecklistItem*)primitiveChecklist_items;
- (void)setPrimitiveChecklist_items:(ChecklistItem*)value;

@end
