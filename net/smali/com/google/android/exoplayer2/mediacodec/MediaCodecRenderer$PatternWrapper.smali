.class public Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternWrapper"
.end annotation


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;->encryptedBlocks:I

    .line 1373
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;->clearBlocks:I

    .line 1374
    return-void
.end method
