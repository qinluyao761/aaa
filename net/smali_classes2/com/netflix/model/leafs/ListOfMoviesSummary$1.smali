.class final Lcom/netflix/model/leafs/ListOfMoviesSummary$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/ListOfMoviesSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/ListOfMoviesSummary;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfMoviesSummary;
    .locals 1

    .line 164
    new-instance v0, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfMoviesSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/ListOfMoviesSummary;
    .locals 1

    .line 169
    new-array v0, p1, [Lcom/netflix/model/leafs/ListOfMoviesSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary$1;->newArray(I)[Lcom/netflix/model/leafs/ListOfMoviesSummary;

    move-result-object v0

    return-object v0
.end method
