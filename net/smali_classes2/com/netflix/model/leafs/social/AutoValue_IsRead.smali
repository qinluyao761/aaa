.class final Lcom/netflix/model/leafs/social/AutoValue_IsRead;
.super Lcom/netflix/model/leafs/social/$AutoValue_IsRead;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/social/AutoValue_IsRead;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_IsRead$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/AutoValue_IsRead$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/AutoValue_IsRead;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/social/$AutoValue_IsRead;-><init>(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_IsRead;->read()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    return-void
.end method
