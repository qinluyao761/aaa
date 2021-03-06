.class public abstract Lcom/ibm/icu/impl/Trie;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;,
        Lcom/ibm/icu/impl/Trie$DataManipulate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/ibm/icu/impl/Trie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/Trie;->$assertionsDisabled:Z

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    .line 155
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/Trie;->checkHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    iput-object p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Lcom/ibm/icu/impl/Trie$1;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    .line 164
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    .line 168
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    .line 169
    return-void
.end method

.method private final checkHeader(I)Z
    .locals 2

    .line 445
    const v0, 0x54726965

    if-eq p1, v0, :cond_0

    .line 446
    const/4 v0, 0x0

    return v0

    .line 449
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 454
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    if-ne p1, p0, :cond_0

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/impl/Trie;

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/ibm/icu/impl/Trie;

    .line 108
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v1, v2, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    iget v1, v2, Lcom/ibm/icu/impl/Trie;->m_options_:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    iget v1, v2, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    iget-object v1, v2, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    .line 111
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0
.end method

.method protected final getBMPOffset(C)I
    .locals 1

    .line 311
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    .line 313
    const/16 v0, 0x140

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    goto :goto_0

    .line 314
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    .line 311
    :goto_0
    return v0
.end method

.method protected final getCodePointOffset(I)I
    .locals 2

    .line 342
    if-gez p1, :cond_0

    .line 343
    const/4 v0, -0x1

    return v0

    .line 344
    :cond_0
    const v0, 0xd800

    if-ge p1, v0, :cond_1

    .line 346
    int-to-char v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0

    .line 347
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 349
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie;->getBMPOffset(C)I

    move-result v0

    return v0

    .line 350
    :cond_2
    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    .line 353
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 v1, p1, 0x3ff

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result v0

    return v0

    .line 357
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method protected final getLeadOffset(C)I
    .locals 1

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result v0

    return v0
.end method

.method protected final getRawOffset(IC)I
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method public hashCode()I
    .locals 2

    .line 116
    sget-boolean v0, Lcom/ibm/icu/impl/Trie;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected final isCharTrie()Z
    .locals 2

    .line 387
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 369
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    .line 370
    return-void
.end method
