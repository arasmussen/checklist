#import "AppDelegate.h"
#import "Checklist.h"

@interface Checklist ()

// Private interface goes here.

@end

@implementation Checklist

+ (Checklist *)checklistWithName:(NSString *)name
{
  AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
  NSManagedObjectContext *moc = [appDelegate managedObjectContext];
  
  Checklist *checklist = [self insertInManagedObjectContext:moc];
  checklist.name = name;
  [appDelegate saveContext];
  
  return checklist;
}

@end
