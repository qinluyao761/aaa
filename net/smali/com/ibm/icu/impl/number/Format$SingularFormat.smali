.class public abstract Lcom/ibm/icu/impl/number/Format$SingularFormat;
.super Lcom/ibm/icu/impl/number/Format;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Exportable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingularFormat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format;-><init>()V

    return-void
.end method

.method private formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;
    .locals 4

    .line 79
    sget-object v0, Lcom/ibm/icu/impl/number/Format$SingularFormat;->threadLocalModifierHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/ModifierHolder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->clear()Lcom/ibm/icu/impl/number/ModifierHolder;

    move-result-object v1

    .line 80
    sget-object v0, Lcom/ibm/icu/impl/number/Format$SingularFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v2

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v3

    .line 86
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v0

    add-int/2addr v3, v0

    .line 87
    return-object v2
.end method


# virtual methods
.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 70
    return-void
.end method

.method public formatToCharacterIterator(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
.end method
