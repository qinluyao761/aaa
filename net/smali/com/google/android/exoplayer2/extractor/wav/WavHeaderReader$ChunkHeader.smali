.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final id:I

.field public final size:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    .line 164
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    .line 165
    return-void
.end method

.method public static peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 6

    .line 178
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    .line 184
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object v0
.end method
