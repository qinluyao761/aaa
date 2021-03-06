.class public Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;
.super Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier$AffixModifier;


# static fields
.field public static final EMPTY:Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final prefixChars:[C

.field private final prefixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

.field private final strong:Z

.field private final suffix:Ljava/lang/String;

.field private final suffixChars:[C

.field private final suffixFields:[Lcom/ibm/icu/text/NumberFormat$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->EMPTY:Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefix:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffix:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->strong:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Modifier$BaseModifier;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    .line 32
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    .line 33
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toFieldArray()[Lcom/ibm/icu/text/NumberFormat$Field;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 34
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toFieldArray()[Lcom/ibm/icu/text/NumberFormat$Field;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 35
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefix:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffix:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->strong:Z

    .line 38
    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(I[C[Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v2

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p2, v0, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(I[C[Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v0

    add-int/2addr v2, v0

    .line 55
    return v2
.end method

.method public contentEquals(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->contentEquals([C[Lcom/ibm/icu/text/NumberFormat$Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixFields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 80
    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->contentEquals([C[Lcom/ibm/icu/text/NumberFormat$Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->strong:Z

    return v0
.end method

.method public length()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffixChars:[C

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    const-string v0, "<ConstantMultiFieldModifier(%d) prefix:\'%s\' suffix:\'%s\'>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->prefix:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->suffix:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 85
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
