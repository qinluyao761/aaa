.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/support/design/widget/TabLayout;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .line 2769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2770
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 2771
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 2775
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2776
    iput p1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 2777
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 2782
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/design/widget/TabLayout;

    .line 2783
    if-eqz v2, :cond_4

    .line 2786
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2791
    :goto_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 2793
    :goto_1
    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 2795
    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 2799
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/design/widget/TabLayout;

    .line 2800
    if-eqz v2, :cond_2

    .line 2801
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2802
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2805
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2809
    :goto_0
    invoke-virtual {v2, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 2811
    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    .line 2814
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2815
    return-void
.end method
