.class public final Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 34
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentCount(J)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 6

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v1, v1, p1

    int-to-long v4, v1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method