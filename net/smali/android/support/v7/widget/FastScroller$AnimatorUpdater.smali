.class Landroid/support/v7/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    .line 586
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 591
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    iget-object v0, v0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    iget-object v0, v0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    .line 595
    return-void
.end method
