.class final Lcom/netflix/model/leafs/originals/interactive/SegmentsList$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/SegmentsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/originals/interactive/SegmentsList;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/SegmentsList;
    .locals 2

    .line 28
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/SegmentsList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/model/leafs/originals/interactive/SegmentsList;-><init>(Landroid/os/Parcel;Lcom/netflix/model/leafs/originals/interactive/SegmentsList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/SegmentsList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/SegmentsList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/SegmentsList;
    .locals 1

    .line 33
    new-array v0, p1, [Lcom/netflix/model/leafs/originals/interactive/SegmentsList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/SegmentsList$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/SegmentsList;

    move-result-object v0

    return-object v0
.end method
