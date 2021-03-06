.class Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekPointGranules:[J

.field private seekPointOffsets:[J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 138
    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 0

    .line 185
    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    # getter for: Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer2/util/FlacStreamInfo;
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->access$000(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 7

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v4

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v6

    .line 197
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    aget-wide v2, v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 155
    div-int/lit8 v4, v3, 0x12

    .line 156
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    .line 157
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    .line 158
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v4, v0

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 170
    return-wide v4

    .line 172
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setFirstFrameOffset(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 142
    return-void
.end method

.method public startSeek(J)J
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v3

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v5

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v0, v0, v5

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 180
    return-wide v3
.end method
