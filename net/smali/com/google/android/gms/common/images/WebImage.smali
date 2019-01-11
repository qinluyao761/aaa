.class public final Lcom/google/android/gms/common/images/WebImage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/images/WebImage;>;"
        }
    .end annotation
.end field


# instance fields
.field private final zale:I

.field private final zand:I

.field private final zane:I

.field private final zanf:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/images/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->zale:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    .line 4
    iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 2

    .line 7
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/images/WebImage;-><init>(ILandroid/net/Uri;II)V

    .line 8
    if-nez p1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/images/WebImage;->zaa(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    .line 16
    return-void
.end method

.method private static zaa(Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 2

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "url"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 20
    nop

    .line 21
    .line 22
    :catch_0
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/common/images/WebImage;

    if-nez v0, :cond_2

    .line 37
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/images/WebImage;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    iget-object v1, v2, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    iget v1, v2, Lcom/google/android/gms/common/images/WebImage;->zand:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    iget v1, v2, Lcom/google/android/gms/common/images/WebImage;->zane:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    return v0
.end method

.method public final getUrl()Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    .line 27
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v0, "url"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v0, "width"

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v0, "height"

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    nop

    .line 32
    .line 33
    :catch_0
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Image %dx%d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->zand:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/common/images/WebImage;->zane:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/common/images/WebImage;->zanf:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 41
    move-object v4, p1

    move-object v3, p0

    .line 42
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v5

    .line 43
    iget v0, v3, Lcom/google/android/gms/common/images/WebImage;->zale:I

    const/4 v1, 0x1

    invoke-static {v4, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v4, v1, v0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v0

    .line 49
    const/4 v1, 0x3

    invoke-static {v4, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v0

    .line 52
    const/4 v1, 0x4

    invoke-static {v4, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 53
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 54
    return-void
.end method
