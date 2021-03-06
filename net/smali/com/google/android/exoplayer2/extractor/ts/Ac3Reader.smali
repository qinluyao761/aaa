.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J

.field private trackFormatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 154
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseHeader()V
    .locals 12

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;

    move-result-object v11

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget v0, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_0

    iget v0, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v0, v1, :cond_0

    iget-object v0, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    iget-object v1, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget v5, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    iget v6, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 199
    :cond_1
    iget v0, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    .line 202
    iget v0, v11, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 203
    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 169
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 171
    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 174
    const/16 v0, 0x77

    if-ne v2, v0, :cond_2

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_2
    const/16 v0, 0xb

    if-ne v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 180
    goto :goto_0

    .line 181
    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 108
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x77

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->parseHeader()V

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 129
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto/16 :goto_0

    .line 134
    :goto_1
    goto/16 :goto_0

    .line 137
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 93
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 94
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 96
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 142
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 101
    return-void
.end method

.method public seek()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 89
    return-void
.end method
