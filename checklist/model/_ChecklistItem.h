// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ChecklistItem.h instead.

#import <CoreData/CoreData.h>

extern const struct ChecklistItemAttributes {
	__unsafe_unretained NSString *checked;
	__unsafe_unretained NSString *name;
} ChecklistItemAttributes;

extern const struct ChecklistItemRelationships {
	__unsafe_unretained NSString *parent;
} ChecklistItemRelationships;

@class Checklist;

@interface ChecklistItemID : NSManagedObjectID {}
@end

@interface _ChecklistItem : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ChecklistItemID*)objectID;

@property (nonatomic, strong) NSNumber* checked;

@property (atomic) BOOL checkedValue;
- (BOOL)checkedValue;
- (void)setCheckedValue:(BOOL)value_;

//- (BOOL)validateChecked:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Checklist *parent;

//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;

@end

@interface _ChecklistItem (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveChecked;
- (void)setPrimitiveChecked:(NSNumber*)value;

- (BOOL)primitiveCheckedValue;
- (void)setPrimitiveCheckedValue:(BOOL)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (Checklist*)primitiveParent;
- (void)setPrimitiveParent:(Checklist*)value;

@end
