.class public final Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderingBuffer"
.end annotation


# instance fields
.field private final app:Ljava/lang/Appendable;

.field private final appIsStringBuilder:Z

.field private codePointLimit:I

.field private codePointStart:I

.field private final impl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field private lastCC:I

.field private reorderStart:I

.field private final str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 122
    iput-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    .line 123
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 125
    move-object v0, p2

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 129
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_1

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    .line 133
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 135
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 141
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 146
    :goto_1
    return-void
.end method

.method private insert(II)V
    .locals 3

    .line 311
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    int-to-char v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 315
    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 316
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 320
    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 321
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 324
    :cond_2
    :goto_1
    return-void
.end method

.method private previousCC()I
    .locals 3

    .line 340
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 341
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    if-lt v0, v1, :cond_0

    .line 342
    const/4 v0, 0x0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v2

    .line 345
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 346
    const/16 v0, 0x300

    if-ge v2, v0, :cond_1

    .line 347
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    return v0
.end method

.method private setIterator()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method

.method private skipPrevious()V
    .locals 3

    .line 336
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 337
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 338
    return-void
.end method


# virtual methods
.method public append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 213
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 214
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 227
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 229
    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 234
    if-eq p2, p3, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 237
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 239
    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(II)V
    .locals 1

    .line 164
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p2, :cond_0

    if-nez p2, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 166
    iput p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 167
    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method public append(Ljava/lang/CharSequence;IIII)V
    .locals 3

    .line 177
    if-ne p2, p3, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p4, :cond_1

    if-nez p4, :cond_4

    .line 181
    :cond_1
    const/4 v0, 0x1

    if-gt p5, v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x1

    if-gt p4, v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 186
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 187
    iput p5, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_3

    .line 189
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 190
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 191
    invoke-direct {p0, v2, p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    .line 192
    :goto_1
    if-ge p2, p3, :cond_6

    .line 193
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 194
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 195
    if-ge p2, p3, :cond_5

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p4

    goto :goto_2

    .line 199
    :cond_5
    move p4, p5

    .line 201
    :goto_2
    invoke-virtual {p0, v2, p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_1

    .line 204
    :cond_6
    :goto_3
    return-void
.end method

.method public appendZeroCC(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 220
    return-void
.end method

.method public equals(Ljava/lang/CharSequence;II)Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 3

    .line 248
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 253
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 256
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 259
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 260
    return-void
.end method

.method public flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 3

    .line 268
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 280
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 281
    return-object p0
.end method

.method public getLastCC()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return v0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 287
    return-void
.end method

.method public removeSuffix(I)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    sub-int v1, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 292
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 293
    return-void
.end method

.method public setLastChar(C)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 161
    return-void
.end method
