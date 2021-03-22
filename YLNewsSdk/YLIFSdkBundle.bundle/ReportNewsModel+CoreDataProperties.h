//
//  ReportNewsModel+CoreDataProperties.h
//  
//
//  Created by Apple on 2020/12/24.
//
//  This file was automatically generated and should not be edited.
//

#import "ReportNewsModel+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ReportNewsModel (CoreDataProperties)

+ (NSFetchRequest<ReportNewsModel *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *newsTab;
@property (nullable, nonatomic, copy) NSString *newsUrl;
@property (nullable, nonatomic, copy) NSString *source;

@end

NS_ASSUME_NONNULL_END
