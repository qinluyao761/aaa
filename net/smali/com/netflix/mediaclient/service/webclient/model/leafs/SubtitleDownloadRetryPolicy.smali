.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MS:I = 0x2710

.field public static final DEFAULT_MAX_ELAPSED_TIME_MS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 2.0

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5

.field private static TAG:Ljava/lang/String; = null


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 3

    .line 76
    invoke-static {}, Lo/Nj;->ˎ()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter<Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 81
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->setDefaultInitialIntervalInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    move-result-object v0

    .line 82
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->setDefaultRandomizationFactor(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    move-result-object v0

    .line 83
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->setDefaultMultiplier(D)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    move-result-object v0

    .line 84
    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->setDefaultMaxIntervalInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    move-result-object v0

    .line 85
    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;->setDefaultMaxElapsedTimeInMs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_SubtitleDownloadRetryPolicy$GsonTypeAdapter;

    move-result-object v0

    .line 80
    return-object v0
.end method


# virtual methods
.method public abstract getInitialIntervalInMs()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initialIntervalInMs"
    .end annotation
.end method

.method public abstract getMaxElapsedTimeInMs()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxElapsedTimeInMs"
    .end annotation
.end method

.method public abstract getMaxIntervalInMs()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxIntervalInMs"
    .end annotation
.end method

.method public abstract getMultiplier()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiplier"
    .end annotation
.end method

.method public abstract getRandomizationFactor()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "randomizationFactor"
    .end annotation
.end method
