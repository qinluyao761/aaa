.class final Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;
    .locals 3

    .line 15
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;

    const-class v1, Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;-><init>(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;
    .locals 1

    .line 22
    new-array v0, p1, [Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/AutoValue_SpriteImage;

    move-result-object v0

    return-object v0
.end method
