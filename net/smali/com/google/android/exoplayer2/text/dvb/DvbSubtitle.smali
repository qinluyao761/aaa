.class final Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;->cues:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;->cues:Ljava/util/List;

    return-object v0
.end method

.method public getEventTime(I)J
    .locals 2

    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 1

    .line 36
    const/4 v0, -0x1

    return v0
.end method
