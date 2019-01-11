.class public Landroid/support/design/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private final delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 127
    const/4 v0, 0x2

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 129
    const/4 v0, 0x1

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    sput v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 133
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 138
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 140
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .locals 6

    .line 303
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 305
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 306
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v5, v0, v1

    .line 308
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    neg-float v0, v4

    neg-float v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    :cond_0
    return-void
.end method

.method private getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F
    .locals 6

    .line 253
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    .line 253
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/design/widget/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    return v0
.end method

.method private invalidateRevealInfo()V
    .locals 5

    .line 241
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 243
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 250
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .locals 2

    .line 319
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 320
    :goto_0
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_3

    .line 321
    if-nez v1, :cond_2

    iget-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 323
    :cond_3
    if-nez v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private shouldDrawOverlayDrawable()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldDrawScrim()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .locals 6

    .line 152
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_2

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 156
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 157
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 159
    if-nez v4, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 161
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    :cond_0
    if-eqz v4, :cond_1

    .line 166
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v4, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 172
    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 2

    .line 175
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 177
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 178
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 181
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 263
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 266
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    move-object v0, p1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 272
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 273
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 275
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    move-object v0, p1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    :cond_0
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 281
    goto/16 :goto_1

    .line 283
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 290
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    move-object v0, p1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    new-instance v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v1, v0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 214
    invoke-virtual {v1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0, v1}, Landroid/support/design/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v0

    iput v0, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 217
    :cond_1
    return-object v1
.end method

.method public isOpaque()Z
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->delegate:Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 236
    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 238
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 223
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 3

    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->set(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 198
    :goto_0
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 199
    invoke-direct {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v1

    .line 198
    const v2, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->geq(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealHelper;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 204
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    .line 205
    return-void
.end method