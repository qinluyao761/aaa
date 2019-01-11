.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private indicatorLeft:I

.field private indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    .line 2385
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    .line 2386
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2375
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2378
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2380
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2381
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2388
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2389
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2390
    return-void
.end method

.method private calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 8

    .line 2632
    # invokes: Landroid/support/design/widget/TabLayout$TabView;->getContentWidth()I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)I

    move-result v4

    .line 2634
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 2635
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v4

    .line 2638
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x2

    .line 2639
    div-int/lit8 v0, v4, 0x2

    sub-int v6, v5, v0

    .line 2640
    div-int/lit8 v0, v4, 0x2

    add-int v7, v5, v0

    .line 2642
    int-to-float v0, v6

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2643
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 9

    .line 2519
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2523
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 2524
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2525
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2527
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v0, :cond_0

    instance-of v0, v3, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 2528
    move-object v0, v3

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2529
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v0

    .line 2530
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v0

    .line 2533
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 2535
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2536
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2537
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2539
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v0, :cond_1

    instance-of v0, v6, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_1

    .line 2540
    move-object v0, v6

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v0

    .line 2542
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v0

    .line 2545
    :cond_1
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v1, v7

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    int-to-float v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 2546
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v1, v8

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    int-to-float v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 2547
    goto :goto_0

    .line 2550
    :cond_2
    const/4 v5, -0x1

    const/4 v4, -0x1

    .line 2553
    :cond_3
    :goto_0
    invoke-virtual {p0, v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2554
    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 14

    .line 2566
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2567
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2570
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2571
    if-nez v6, :cond_1

    .line 2573
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2574
    return-void

    .line 2577
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2578
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2580
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v0, :cond_2

    instance-of v0, v6, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_2

    .line 2581
    move-object v0, v6

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2582
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v0

    .line 2583
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v8, v0

    .line 2586
    :cond_2
    move v9, v7

    .line 2587
    move v10, v8

    .line 2589
    iget v11, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2590
    iget v12, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2592
    if-ne v11, v9, :cond_3

    if-eq v12, v10, :cond_4

    .line 2593
    :cond_3
    new-instance v13, Landroid/animation/ValueAnimator;

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v13, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2594
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2595
    move/from16 v0, p2

    int-to-long v0, v0

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2596
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2597
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;

    move-object v1, p0

    move v2, v11

    move v3, v9

    move v4, v12

    move v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2607
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2615
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 2617
    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 2407
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2408
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2409
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2410
    const/4 v0, 0x1

    return v0

    .line 2407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2413
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2647
    const/4 v2, 0x0

    .line 2648
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 2651
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v0, :cond_1

    .line 2652
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2655
    :cond_1
    const/4 v3, 0x0

    .line 2656
    const/4 v4, 0x0

    .line 2658
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2660
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    sub-int v3, v0, v2

    .line 2661
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v4

    .line 2662
    goto :goto_0

    .line 2664
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v3, v0, 0x2

    .line 2665
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v4, v0, 0x2

    .line 2666
    goto :goto_0

    .line 2668
    :pswitch_2
    const/4 v3, 0x0

    .line 2669
    move v4, v2

    .line 2670
    goto :goto_0

    .line 2672
    :pswitch_3
    const/4 v3, 0x0

    .line 2673
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v4

    .line 2674
    .line 2680
    :goto_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-le v0, v1, :cond_5

    .line 2682
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2683
    :goto_1
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2685
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v5, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2686
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 2687
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 2689
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2690
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2689
    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 2692
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v5, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2695
    :cond_4
    :goto_2
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2699
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2700
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 2502
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2504
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2508
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    .line 2509
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2511
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    long-to-float v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2509
    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 2512
    goto :goto_0

    .line 2514
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2516
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 2446
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2451
    return-void

    .line 2454
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2455
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    .line 2458
    const/4 v4, 0x0

    .line 2459
    const/4 v5, 0x0

    move v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    .line 2460
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2461
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2462
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2459
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2466
    :cond_2
    if-gtz v4, :cond_3

    .line 2468
    return-void

    .line 2471
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v5

    .line 2472
    const/4 v6, 0x0

    .line 2474
    mul-int v0, v4, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_7

    .line 2477
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_6

    .line 2478
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 2479
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v0, v4, :cond_4

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 2480
    :cond_4
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2481
    const/4 v0, 0x0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2482
    const/4 v6, 0x1

    .line 2477
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    goto :goto_2

    .line 2488
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 2489
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 2490
    const/4 v6, 0x1

    .line 2493
    :goto_2
    if-eqz v6, :cond_8

    .line 2495
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2498
    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 2432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2437
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 2438
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2439
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2442
    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1

    .line 2557
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_1

    .line 2559
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2560
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2561
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2563
    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    .line 2417
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2421
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2422
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2423
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2424
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    .line 2393
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2394
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2397
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    .line 2400
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 2401
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2402
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2404
    :cond_0
    return-void
.end method
