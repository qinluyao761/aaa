.class final Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;
    .locals 2

    .line 27
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;-><init>(Landroid/os/Parcel;Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;
    .locals 1

    .line 32
    new-array v0, p1, [Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/ConditionSessionState;

    move-result-object v0

    return-object v0
.end method
