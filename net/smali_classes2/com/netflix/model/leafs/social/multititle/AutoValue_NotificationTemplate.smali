.class final Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;
.super Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;)V

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;->headlineText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;->bodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    return-void
.end method
