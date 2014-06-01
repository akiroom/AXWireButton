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
  [self updateDisplayWithTint:NO];
}

- (void)setHighlighted:(BOOL)highlighted
{
  [self updateDisplayWithTint:highlighted];
}

- (void)setSelected:(BOOL)selected
{
  [self updateDisplayWithTint:selected];
}

- (void)updateDisplayWithTint:(BOOL)isTint
{
  UIColor *textColor = [self titleColorForState:UIControlStateNormal];
  switch (_highlightStyle) {
    case AXWireButtonHighlightStyleSimple:
      if (isTint) {
        textColor = [textColor colorWithAlphaComponent:0.2];
      }
      if (isTint) {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      } else {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      }
      break;
    case AXWireButtonHighlightStyleFilled:
      self.titleLabel.textColor = (isTint ? self.superview.backgroundColor : textColor);
      self.backgroundColor = (isTint ? textColor : [UIColor clearColor]);
      break;
    default:
      break;
  }
}

@end
