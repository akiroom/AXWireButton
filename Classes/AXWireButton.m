//
//  AXWireButton.m
//  Pods
//

#import "AXWireButton.h"

@implementation AXWireButton

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
    _highlightStyle = AXWireButtonHighlightStyleSimple;
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  self.layer.borderWidth = 1.0;
  self.layer.borderColor = [[self titleColorForState:UIControlStateNormal] CGColor];
  self.layer.cornerRadius =
  MIN(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds)) / 2;
}

- (void)setHighlighted:(BOOL)highlighted
{
//  [super setHighlighted:highlighted];
  UIColor *textColor = [self titleColorForState:UIControlStateNormal];
  
  switch (_highlightStyle) {
    case AXWireButtonHighlightStyleSimple:
      if (highlighted) {
        textColor = [textColor colorWithAlphaComponent:0.2];
      }
      if (highlighted) {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      } else {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      }
      break;
    case AXWireButtonHighlightStyleFilled:
//      [super setHighlighted:highlighted];
      self.titleLabel.textColor = (highlighted ? self.superview.backgroundColor : textColor);
      self.backgroundColor = (highlighted ? textColor : [UIColor clearColor]);
      break;
    default:
      break;
  }
}

@end
