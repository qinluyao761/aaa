.class Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;
.super Lcom/ibm/icu/impl/UResource$Value;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValue"
.end annotation


# instance fields
.field reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field res:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 801
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Value;-><init>()V

    return-void
.end method

.method private getStringArray(Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;
    .locals 6

    .line 925
    iget v0, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    new-array v2, v0, [Ljava/lang/String;

    .line 926
    const/4 v3, 0x0

    :goto_0
    iget v0, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge v3, v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v4

    .line 928
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 929
    if-nez v5, :cond_0

    .line 930
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_0
    aput-object v5, v2, v3

    .line 926
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 934
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getAliasString()Ljava/lang/String;
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 822
    if-nez v2, :cond_0

    .line 823
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_0
    return-object v2
.end method

.method public getArray()Lcom/ibm/icu/impl/UResource$Array;
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v2

    .line 865
    if-nez v2, :cond_0

    .line 866
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    return-object v2
.end method

.method public getInt()I
    .locals 2

    .line 830
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 831
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0
.end method

.method public getIntVector()[I
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v2

    .line 847
    if-nez v2, :cond_0

    .line 848
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    return-object v2
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 812
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    if-nez v2, :cond_0

    .line 814
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    return-object v2
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v2

    .line 888
    if-nez v2, :cond_0

    .line 889
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lcom/ibm/icu/impl/UResource$Table;
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v2

    .line 874
    if-nez v2, :cond_0

    .line 875
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_0
    return-object v2
.end method

.method public getType()I
    .locals 2

    .line 807
    # getter for: Lcom/ibm/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$400()[I

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public isNoInheritanceMarker()Z
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    # invokes: Lcom/ibm/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$500(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Z

    move-result v0

    return v0
.end method
