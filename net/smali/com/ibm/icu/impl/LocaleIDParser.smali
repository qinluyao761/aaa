.class public final Lcom/ibm/icu/impl/LocaleIDParser;
.super Ljava/lang/Object;
.source ""


# instance fields
.field baseName:Ljava/lang/String;

.field private buffer:Ljava/lang/StringBuilder;

.field private canonicalize:Z

.field private hadCountry:Z

.field private id:[C

.field private index:I

.field keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    .line 67
    iput-boolean p2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->canonicalize:Z

    .line 68
    return-void
.end method

.method private addSeparator()V
    .locals 1

    .line 85
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 86
    return-void
.end method

.method private append(C)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    return-void
.end method

.method private atTerminator()Z
    .locals 2

    .line 143
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Comparator<Ljava/lang/String;>;"
        }
    .end annotation

    .line 593
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser$1;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser$1;-><init>(Lcom/ibm/icu/impl/LocaleIDParser;)V

    .line 599
    return-object v0
.end method

.method private getKeyword()Ljava/lang/String;
    .locals 4

    .line 577
    iget v3, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 578
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isDoneOrKeywordAssign(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 581
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 4

    .line 585
    iget v3, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 586
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isDoneOrItemSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 589
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private haveExperimentalLanguagePrefix()Z
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    const/4 v1, 0x1

    aget-char v2, v0, v1

    .line 169
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_0

    const/16 v0, 0x5f

    if-ne v2, v0, :cond_3

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    .line 171
    const/16 v0, 0x78

    if-eq v2, v0, :cond_1

    const/16 v0, 0x58

    if-eq v2, v0, :cond_1

    const/16 v0, 0x69

    if-eq v2, v0, :cond_1

    const/16 v0, 0x49

    if-ne v2, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 174
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private haveKeywordAssign()Z
    .locals 3

    .line 182
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v0, v2

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isDoneOrItemSeparator(C)Z
    .locals 1

    .line 573
    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDoneOrKeywordAssign(C)Z
    .locals 1

    .line 569
    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTerminator(C)Z
    .locals 1

    .line 152
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTerminatorOrIDSeparator(C)Z
    .locals 1

    .line 159
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private next()C
    .locals 3

    .line 123
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 124
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 125
    const v0, 0xffff

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    return v0
.end method

.method private parseCountry()I
    .locals 8

    .line 300
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_6

    .line 301
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 302
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 304
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 306
    const/4 v5, 0x1

    .line 307
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    move v4, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    if-eqz v5, :cond_0

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->hadCountry:Z

    .line 310
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->addSeparator()V

    .line 311
    add-int/lit8 v3, v3, 0x1

    .line 312
    const/4 v5, 0x0

    .line 314
    :cond_0
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 316
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 318
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v6, v0, v3

    .line 320
    if-nez v6, :cond_2

    goto :goto_1

    .line 323
    :cond_2
    const/4 v0, 0x2

    if-lt v6, v0, :cond_3

    const/4 v0, 0x3

    if-le v6, v0, :cond_4

    .line 326
    :cond_3
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 327
    add-int/lit8 v3, v3, -0x1

    .line 328
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->hadCountry:Z

    goto :goto_1

    .line 331
    :cond_4
    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    .line 332
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/LocaleIDs;->threeToTwoLetterRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    if-eqz v7, :cond_5

    .line 334
    invoke-direct {p0, v3, v7}, Lcom/ibm/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    .line 338
    :cond_5
    :goto_1
    return v3

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private parseKeywords()I
    .locals 6

    .line 649
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 650
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v2

    .line 651
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    const/4 v3, 0x1

    .line 653
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 654
    if-eqz v3, :cond_0

    const/16 v0, 0x40

    goto :goto_1

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 655
    const/4 v3, 0x0

    .line 656
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    .line 657
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 658
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    .line 659
    goto :goto_0

    .line 660
    :cond_1
    if-nez v3, :cond_2

    .line 661
    add-int/lit8 v1, v1, 0x1

    .line 664
    :cond_2
    return v1
.end method

.method private parseLanguage()I
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 198
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 200
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 205
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    move v3, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 208
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 210
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/LocaleIDs;->threeToTwoLetterLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    if-eqz v4, :cond_2

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    .line 217
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private parseScript()I
    .locals 6

    .line 241
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 243
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 247
    const/4 v5, 0x1

    .line 248
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    move v4, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    if-eqz v5, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->addSeparator()V

    .line 251
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    .line 252
    const/4 v5, 0x0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    .line 257
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 260
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v0, v2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 261
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 267
    :goto_1
    return v3

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private parseVariant()I
    .locals 8

    .line 393
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 395
    const/4 v3, 0x1

    .line 396
    const/4 v4, 0x1

    .line 397
    const/4 v5, 0x0

    .line 399
    const/4 v7, 0x1

    .line 401
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    move v6, v0

    const v1, 0xffff

    if-eq v0, v1, :cond_9

    .line 402
    const/16 v0, 0x2e

    if-ne v6, v0, :cond_1

    .line 403
    const/4 v3, 0x0

    .line 404
    const/4 v5, 0x1

    goto :goto_0

    .line 405
    :cond_1
    const/16 v0, 0x40

    if-ne v6, v0, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->haveKeywordAssign()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    goto :goto_1

    .line 409
    :cond_2
    const/4 v5, 0x0

    .line 410
    const/4 v3, 0x0

    .line 411
    const/4 v4, 0x1

    goto :goto_0

    .line 412
    :cond_3
    if-eqz v3, :cond_4

    .line 413
    const/4 v3, 0x0

    .line 414
    const/16 v0, 0x5f

    if-eq v6, v0, :cond_0

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_0

    .line 415
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    goto :goto_0

    .line 417
    :cond_4
    if-nez v5, :cond_0

    .line 418
    if-eqz v4, :cond_6

    .line 419
    const/4 v4, 0x0

    .line 420
    if-eqz v7, :cond_5

    iget-boolean v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->hadCountry:Z

    if-nez v0, :cond_5

    .line 421
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->addSeparator()V

    .line 422
    add-int/lit8 v2, v2, 0x1

    .line 424
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->addSeparator()V

    .line 425
    if-eqz v7, :cond_6

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 427
    const/4 v7, 0x0

    .line 430
    :cond_6
    invoke-static {v6}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v6

    .line 431
    const/16 v0, 0x2d

    if-eq v6, v0, :cond_7

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_8

    .line 432
    :cond_7
    const/16 v6, 0x5f

    .line 434
    :cond_8
    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/LocaleIDParser;->append(C)V

    goto/16 :goto_0

    .line 437
    :cond_9
    :goto_1
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 439
    return v2
.end method

.method private reset()V
    .locals 3

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method private set(ILjava/lang/String;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method private setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 708
    if-nez p1, :cond_0

    .line 709
    if-eqz p3, :cond_6

    .line 711
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    goto/16 :goto_0

    .line 714
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 720
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v2

    .line 725
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    if-eqz p2, :cond_6

    .line 728
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 729
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 732
    :cond_3
    if-nez p3, :cond_4

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 733
    :cond_4
    if-eqz p2, :cond_5

    .line 734
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 736
    :cond_5
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 745
    :cond_6
    :goto_0
    return-void
.end method

.method private setToKeywordStart()Z
    .locals 4

    .line 547
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v0, v2

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    .line 549
    iget-boolean v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->canonicalize:Z

    if-eqz v0, :cond_2

    .line 550
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v0, v3

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 552
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 553
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 557
    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 558
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 559
    const/4 v0, 0x1

    return v0

    .line 547
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private skipCountry()V
    .locals 4

    .line 350
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 358
    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 360
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    .line 361
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    sub-int v3, v0, v2

    .line 362
    const/4 v0, 0x2

    if-lt v3, v0, :cond_2

    const/4 v0, 0x3

    if-le v3, v0, :cond_3

    .line 363
    :cond_2
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 366
    :cond_3
    return-void
.end method

.method private skipLanguage()V
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    .line 229
    return-void
.end method

.method private skipScript()V
    .locals 4

    .line 280
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 282
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    move v3, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 288
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v0, v2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 289
    iput v2, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 292
    :cond_1
    return-void
.end method

.method private skipUntilTerminatorOrIDSeparator()V
    .locals 2

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->index:I

    .line 137
    return-void
.end method


# virtual methods
.method public defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    return-object v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseBaseName()V

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 467
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 468
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipScript()V

    .line 469
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 607
    const/4 v2, 0x0

    .line 608
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->setToKeywordStart()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeyword()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 613
    goto :goto_2

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v4

    .line 616
    const/16 v0, 0x3d

    if-eq v4, v0, :cond_2

    .line 618
    const v0, 0xffff

    if-ne v4, v0, :cond_6

    .line 619
    goto :goto_2

    .line 624
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 625
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 627
    goto :goto_1

    .line 629
    :cond_3
    if-nez v2, :cond_4

    .line 630
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 631
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 633
    goto :goto_1

    .line 635
    :cond_5
    :goto_0
    invoke-virtual {v2, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->next()C

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    .line 638
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    move-object v0, v2

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 641
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 680
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v1

    .line 681
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<Ljava/lang/String;>;"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v1

    .line 672
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 449
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 450
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageScriptCountryVariant()[Ljava/lang/String;
    .locals 3

    .line 487
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 488
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 490
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseScript()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 491
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 492
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 488
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseBaseName()V

    .line 536
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseKeywords()I

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 457
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 458
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 459
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseScript()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 477
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 478
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipScript()V

    .line 479
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->skipCountry()V

    .line 480
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseBaseName()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->reset()V

    .line 505
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseLanguage()I

    .line 506
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseScript()I

    .line 507
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseCountry()I

    .line 508
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->parseVariant()I

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 512
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 516
    :cond_1
    :goto_0
    return-void
.end method

.method public setBaseName(Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    return-void
.end method
