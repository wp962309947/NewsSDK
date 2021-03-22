//
//  ReportNewsModel+CoreDataProperties.m
//  
//
//  Created by Apple on 2020/12/24.
//
//  This file was automatically generated and should not be edited.
//

#import "ReportNewsModel+CoreDataProperties.h"

@implementation ReportNewsModel (CoreDataProperties)

+ (NSFetchRequest<ReportNewsModel *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"ReportNewsModel"];
}

@dynamic newsTab;
@dynamic newsUrl;
@dynamic source;

@end
