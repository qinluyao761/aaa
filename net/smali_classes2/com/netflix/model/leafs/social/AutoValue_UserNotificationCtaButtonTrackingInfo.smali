.class final Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;
.super Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationCtaButtonTrackingInfo;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationCtaButtonTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;->action()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    return-void
.end method
