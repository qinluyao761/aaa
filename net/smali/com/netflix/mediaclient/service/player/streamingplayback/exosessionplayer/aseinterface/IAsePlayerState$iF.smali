.class public Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "iF"
.end annotation


# instance fields
.field private final ˋ:Lcom/google/android/exoplayer2/Format;

.field private final ˎ:Ljava/lang/String;

.field private final ˏ:I

.field private final ॱ:J


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 9

    .line 41
    move-object v0, p0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iget-wide v5, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v3, v5

    iget-object v5, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v7, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-direct/range {v0 .. v8}, Lo/lz;-><init>(JJJJ)V

    .line 42
    iput p1, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˏ:I

    .line 43
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˋ:Lcom/google/android/exoplayer2/Format;

    .line 44
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ॱ:J

    .line 45
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˎ:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private ʼ()Z
    .locals 2

    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˏ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 64
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s %6d %6d-%-6d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ʼ()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "A"

    goto :goto_0

    :cond_0
    const-string v3, "V"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˋ:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˎ()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ॱ:J

    .line 69
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 64
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʽ()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˎ:Ljava/lang/String;

    return-object v0
.end method

.method public ˊ()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ॱ:J

    return-wide v0
.end method

.method public ॱ()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˋ:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$iF;->ˋ:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
