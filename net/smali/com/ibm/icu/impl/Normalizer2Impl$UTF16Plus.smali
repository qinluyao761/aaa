.class public final Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UTF16Plus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 2

    .line 400
    sub-int v0, p2, p1

    sub-int v1, p5, p4

    if-eq v0, v1, :cond_0

    .line 401
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_0
    if-ne p0, p3, :cond_1

    if-ne p1, p4, :cond_1

    .line 404
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_1
    if-ge p1, p2, :cond_2

    .line 407
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v1, p4

    add-int/lit8 p4, p4, 0x1

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_1

    .line 408
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4

    .line 373
    if-ne p0, p1, :cond_0

    .line 374
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 377
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 381
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_2

    .line 382
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSurrogateLead(I)Z
    .locals 1

    .line 365
    and-int/lit16 v0, p0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
