.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter<Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationLandingPage$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/multititle/$AutoValue_NotificationLandingPage$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract payloadVersion()Ljava/lang/String;
.end method

.method public abstract template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;
.end method

.method public abstract templateId()Ljava/lang/String;
.end method

.method public abstract templateType()Ljava/lang/String;
.end method

.method public abstract trackId()I
.end method
