.class final Lcom/ibm/icu/text/NumberingSystem$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<Ljava/lang/String;Lcom/ibm/icu/text/NumberingSystem;Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 1

    .line 333
    invoke-static {p2}, Lcom/ibm/icu/text/NumberingSystem;->lookupInstanceByLocale(Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 330
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/NumberingSystem$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method
