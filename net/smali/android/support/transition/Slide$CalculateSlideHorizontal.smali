.class abstract Landroid/support/transition/Slide$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/transition/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/transition/Slide$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroid/support/transition/Slide$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 1

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
