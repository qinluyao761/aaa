.class public Lcom/ibm/icu/impl/TextTrieMap$CharIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Iterator<Ljava/lang/Character;>;"
    }
.end annotation


# instance fields
.field private _ignoreCase:Z

.field private _nextIdx:I

.field private _remainingChar:Ljava/lang/Character;

.field private _startIdx:I

.field private _text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    .line 198
    iput p2, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    iput p2, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 199
    iput-boolean p3, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    .line 200
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 207
    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Character;
    .locals 5

    .line 218
    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 223
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    goto :goto_0

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v3

    .line 228
    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 230
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    .line 231
    const/4 v0, 0x0

    aget-char v0, v4, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 232
    array-length v0, v4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 233
    const/4 v0, 0x1

    aget-char v0, v4, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    .line 235
    :cond_2
    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 237
    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 240
    :goto_0
    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public processedLength()I
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In the middle of surrogate pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget v1, p0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supproted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
