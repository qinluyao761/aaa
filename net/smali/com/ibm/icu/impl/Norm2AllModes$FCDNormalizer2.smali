.class public final Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;
.super Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FCDNormalizer2"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    .line 254
    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasFCDBoundaryBefore(I)Z

    move-result v0

    return v0
.end method

.method public isInert(I)Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isFCDInert(I)Z

    move-result v0

    return v0
.end method

.method protected normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 259
    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCDAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 264
    return-void
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v0

    return v0
.end method
