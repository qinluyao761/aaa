.class public abstract Lcom/airbnb/epoxy/Typed4EpoxyController;
.super Lo/ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;U:Ljava/lang/Object;V:Ljava/lang/Object;W:Ljava/lang/Object;>Lo/\u02bb;"
    }
.end annotation


# instance fields
.field private allowModelBuildRequests:Z

.field private data1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private data2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private data3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private data4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/ʻ;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/ʻ;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final buildModels()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Typed4EpoxyController;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `buildModels` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data2:Ljava/lang/Object;

    iget-object v2, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data3:Ljava/lang/Object;

    iget-object v3, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data4:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airbnb/epoxy/Typed4EpoxyController;->buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method protected abstract buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;TW;)V"
        }
    .end annotation
.end method

.method public moveModel(II)V
    .locals 1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    .line 61
    invoke-super {p0, p1, p2}, Lo/ʻ;->moveModel(II)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    .line 63
    return-void
.end method

.method public requestDelayedModelBuild(I)V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lo/ʻ;->requestDelayedModelBuild(I)V

    .line 73
    return-void
.end method

.method public final requestModelBuild()V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-super {p0}, Lo/ʻ;->requestModelBuild()V

    .line 56
    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;TW;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data1:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data2:Ljava/lang/Object;

    .line 41
    iput-object p3, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data3:Ljava/lang/Object;

    .line 42
    iput-object p4, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->data4:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/epoxy/Typed4EpoxyController;->requestModelBuild()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/epoxy/Typed4EpoxyController;->allowModelBuildRequests:Z

    .line 46
    return-void
.end method
