//
//  AXWireButton.h
//  Pods
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
  AXWireButtonHighlightStyleSimple = 0,
  AXWireButtonHighlightStyleFilled,
} AXWireButtonHighlightStyle;

@interface AXWireButton : UIButton
@property (nonatomic) AXWireButtonHighlightStyle highlightStyle;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic, getter = isEmphasized) BOOL emphasized;
@end
