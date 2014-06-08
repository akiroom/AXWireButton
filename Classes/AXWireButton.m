//
//  AXWireButton.m
//  Pods
//

#import "AXWireButton.h"

@implementation AXWireButton

- (id)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder]) {
    [self configureAXWireButton];
  }
  return self;
}

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self configureAXWireButton];
  }
  return self;
}

- (void)configureAXWireButton
{
  _borderWidth = 2.0;
  _highlightStyle = AXWireButtonHighlightStyleSimple;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  self.layer.borderWidth = _borderWidth;
  self.layer.borderColor = [[self titleColorForState:UIControlStateNormal] CGColor];
  self.layer.cornerRadius =
  MIN(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds)) / 2;
  [self updateDisplayWithTint:NO];
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
  if (_borderWidth != borderWidth) {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  [self updateDisplayWithTint:highlighted];
}

- (void)setSelected:(BOOL)selected
{
  [self updateDisplayWithTint:selected];
}

- (void)setEnabled:(BOOL)enabled
{
  [super setEnabled:enabled];
  [self updateDisplayWithTint:NO];
}

- (void)setEmphasized:(BOOL)emphasized
{
  _emphasized = emphasized;
  [self updateDisplayWithTint:NO];
}

- (void)updateDisplayWithTint:(BOOL)isTint
{
  UIColor *textColor = [self titleColorForState:UIControlStateNormal];
  if (self.isEmphasized) {
    self.titleLabel.textColor = [UIColor whiteColor];
    self.backgroundColor = textColor;
    return;
  }
  switch (_highlightStyle) {
    case AXWireButtonHighlightStyleSimple:
      if (isTint) {
        textColor = [textColor colorWithAlphaComponent:0.2];
      }
      self.backgroundColor = [UIColor clearColor];
      if (isTint) {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      } else {
        self.titleLabel.textColor = textColor;
        self.layer.borderColor = [textColor CGColor];
      }
      break;
    case AXWireButtonHighlightStyleFilled:
      self.titleLabel.textColor = (isTint ? [UIColor whiteColor] : textColor);
      self.backgroundColor = (isTint ? textColor : [UIColor clearColor]);
      break;
    default:
      break;
  }
}

@end
