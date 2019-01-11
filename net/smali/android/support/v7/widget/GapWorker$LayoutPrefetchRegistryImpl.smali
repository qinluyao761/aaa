.class Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 6

    .line 110
    if-gez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-gez p2, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v4, v0, 0x2

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v0, :cond_2

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v0, v0

    if-lt v4, v0, :cond_3

    .line 124
    iget-object v5, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 125
    mul-int/lit8 v0, v4, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v0, v4

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v1, v4, 0x1

    aput p2, v0, v1

    .line 133
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 134
    return-void
.end method

.method clearPrefetchPositions()V
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 154
    return-void
.end method

.method collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_0
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 83
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    if-eqz p2, :cond_1

    .line 89
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {v3, v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 100
    :cond_2
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v1, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v0, v1, :cond_3

    .line 101
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v0, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 102
    iput-boolean p2, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 103
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 106
    :cond_3
    return-void
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 4

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_1

    .line 138
    iget v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v0, 0x2

    .line 139
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v0, v0, v3

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 139
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setPrefetchVector(II)V
    .locals 0

    .line 72
    iput p1, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 73
    iput p2, p0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 74
    return-void
.end method
