.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 1470
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 1512
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->endMasterElement(I)V

    .line 1491
    return-void
.end method

.method public floatElement(ID)V
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->floatElement(ID)V

    .line 1501
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->getElementType(I)I

    move-result v0

    return v0
.end method

.method public integerElement(IJ)V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->integerElement(IJ)V

    .line 1496
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->isLevel1Element(I)Z

    move-result v0

    return v0
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    .line 1485
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->startMasterElement(IJJ)V

    .line 1486
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->stringElement(ILjava/lang/String;)V

    .line 1506
    return-void
.end method
