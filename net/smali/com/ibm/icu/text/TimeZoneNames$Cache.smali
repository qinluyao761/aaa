.class Lcom/ibm/icu/text/TimeZoneNames$Cache;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames;Lcom/ibm/icu/util/ULocale;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/TimeZoneNames$1;)V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .line 526
    # getter for: Lcom/ibm/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Lcom/ibm/icu/text/TimeZoneNames$Factory;
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneNames;->access$100()Lcom/ibm/icu/text/TimeZoneNames$Factory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/TimeZoneNames$Factory;->getTimeZoneNames(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 517
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames$Cache;->createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method
