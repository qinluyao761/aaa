.class final Lcom/ibm/icu/text/DateFormatSymbols$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/ULocale;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1502
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 6

    .line 1508
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 1509
    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1510
    if-gez v4, :cond_0

    .line 1512
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1514
    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1515
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v5, v2}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols$1;)V

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1502
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateFormatSymbols$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method
