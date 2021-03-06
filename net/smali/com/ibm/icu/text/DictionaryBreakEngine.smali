.class abstract Lcom/ibm/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;,
        Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field fSet:Lcom/ibm/icu/text/UnicodeSet;

.field private fTypes:Ljava/util/BitSet;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 6

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 156
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    .line 163
    move-object v2, p1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 164
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IIZILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 8

    .line 177
    const/4 v1, 0x0

    .line 183
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    .line 187
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 188
    if-eqz p4, :cond_3

    .line 189
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    .line 190
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    move v3, v0

    if-le v0, p2, :cond_0

    if-eqz v7, :cond_0

    .line 191
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    goto :goto_0

    .line 194
    :cond_0
    if-ge v3, p2, :cond_1

    move v4, p2

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    add-int v4, v3, v0

    .line 196
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 197
    goto :goto_4

    .line 198
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    move v3, v0

    if-ge v0, p3, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 200
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    goto :goto_3

    .line 202
    :cond_4
    move v4, v2

    .line 203
    move v5, v3

    .line 206
    :goto_4
    invoke-virtual {p0, p1, v4, v5, p6}, Lcom/ibm/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result v1

    .line 207
    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 209
    return v1
.end method

.method public handles(II)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 171
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0
.end method

.method setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 213
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 214
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 215
    return-void
.end method
