.class public Lcom/ibm/icu/impl/number/NumberStringBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lcom/ibm/icu/text/NumberFormat$Field;Ljava/lang/Character;>;"
        }
    .end annotation
.end field


# instance fields
.field private chars:[C

.field private fields:[Lcom/ibm/icu/text/NumberFormat$Field;

.field private length:I

.field private zero:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-class v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->$assertionsDisabled:Z

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 252
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 27
    new-array v0, p1, [Lcom/ibm/icu/text/NumberFormat$Field;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 28
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V
    .locals 5

    .line 33
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    .line 34
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 35
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 36
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method

.method private prepareForInsert(II)I
    .locals 2

    .line 187
    if-nez p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 190
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 191
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    return v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 194
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 195
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    .line 198
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsertHelper(II)I

    move-result v0

    return v0
.end method

.method private prepareForInsertHelper(II)I
    .locals 8

    .line 204
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 205
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [C

    .line 206
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    .line 207
    array-length v0, v5

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v0, v1, v5, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    add-int v2, v7, p1

    add-int/2addr v2, p2

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v0, v1, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    add-int v2, v7, p1

    add-int/2addr v2, p2

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 213
    iput-object v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 214
    iput v7, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 215
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 216
    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    .line 218
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v1, v5, p1

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v3, v5, p1

    add-int/2addr v3, p2

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v1, v5, p1

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v3, v5, p1

    add-int/2addr v3, p2

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 223
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 225
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public append(Lcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 1

    .line 155
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I

    move-result v0

    return v0
.end method

.method public append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public appendCodePoint(ILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .locals 2

    .line 47
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 409
    return-object p0
.end method

.method public contentEquals([C[Lcom/ibm/icu/text/NumberFormat$Field;)Z
    .locals 3

    .line 306
    array-length v0, p1

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 307
    :cond_0
    array-length v0, p2

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 308
    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v2, v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    aget-char v1, p1, v2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    aget-object v1, p2, v2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    return v0

    .line 308
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 8

    .line 383
    new-instance v3, Ljava/text/AttributedString;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 384
    const/4 v4, 0x0

    .line 385
    const/4 v5, -0x1

    .line 386
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v6, v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, v6

    aget-object v7, v0, v1

    .line 388
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v7, v0, :cond_0

    .line 390
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3, v0, v1, v6, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    .line 392
    :cond_0
    if-eq v4, v7, :cond_2

    .line 393
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {v3, v4, v4, v5, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 396
    :cond_1
    move-object v4, v7

    .line 397
    move v5, v6

    .line 386
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 400
    :cond_3
    if-eqz v4, :cond_4

    .line 401
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {v3, v4, v4, v5, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 403
    :cond_4
    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 7

    .line 166
    if-ne p0, p2, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot call insert/append on myself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget v4, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 170
    if-nez v4, :cond_1

    const/4 v0, 0x0

    return v0

    .line 171
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v5

    .line 172
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 173
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v1, v5, v6

    iget-object v2, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v3, v6

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v1, v5, v6

    iget-object v2, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v3, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v3, v6

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 172
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return v4
.end method

.method public insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .line 110
    sub-int v3, p4, p3

    .line 111
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v4

    .line 112
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 113
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v1, v4, v5

    add-int v2, p3, v5

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v1, v4, v5

    aput-object p5, v0, v1

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return v3
.end method

.method public insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .line 91
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0

    .line 99
    :cond_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v5, p3

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    return v0
.end method

.method public insert(I[C[Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .line 137
    sget-boolean v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_0
    array-length v3, p2

    .line 139
    if-nez v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v4

    .line 141
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 142
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v1, v4, v5

    aget-char v2, p2, v5

    aput-char v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int v1, v4, v5

    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    aget-object v2, p3, v5

    :goto_1
    aput-object v2, v0, v1

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 145
    :cond_3
    return v3
.end method

.method public insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 4

    .line 68
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 69
    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result v3

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    invoke-static {p2, v0, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aput-object p3, v0, v3

    .line 72
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/lit8 v1, v3, 0x1

    aput-object p3, v0, v1

    .line 73
    :cond_0
    return v2
.end method

.method public length()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return v0
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;I)V
    .locals 9

    .line 335
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 337
    if-nez v3, :cond_2

    .line 339
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 342
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 345
    :cond_1
    return-void

    .line 349
    :cond_2
    :goto_0
    instance-of v0, v3, Lcom/ibm/icu/text/NumberFormat$Field;

    if-nez v0, :cond_3

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You must pass an instance of com.ibm.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/ibm/icu/text/NumberFormat$Field;

    .line 356
    const/4 v5, 0x0

    .line 357
    const/4 v6, -0x1

    .line 358
    iget v7, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    :goto_1
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    if-gt v7, v0, :cond_a

    .line 359
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, v1

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aget-object v8, v0, v7

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 360
    :goto_2
    if-eqz v5, :cond_6

    if-eq v4, v8, :cond_6

    .line 362
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v0, :cond_5

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v8, v0, :cond_5

    .line 363
    goto :goto_3

    .line 364
    :cond_5
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v0, v7, v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 365
    goto :goto_4

    .line 366
    :cond_6
    if-nez v5, :cond_7

    if-ne v4, v8, :cond_7

    .line 367
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v0, v7, v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 368
    const/4 v5, 0x1

    .line 370
    :cond_7
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-eq v8, v0, :cond_8

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v8, v0, :cond_9

    .line 371
    :cond_8
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v0, v7, v0

    add-int/lit8 v6, v0, 0x1

    .line 358
    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 376
    :cond_a
    :goto_4
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v0, :cond_b

    if-nez v5, :cond_b

    .line 377
    invoke-virtual {p1, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 378
    invoke-virtual {p1, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 380
    :cond_b
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 230
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-ge p2, p1, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 233
    :cond_1
    new-instance v1, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 234
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 235
    sub-int v0, p2, p1

    iput v0, v1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 236
    return-object v1
.end method

.method public toCharArray()[C
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toFieldArray()[Lcom/ibm/icu/text/NumberFormat$Field;
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
