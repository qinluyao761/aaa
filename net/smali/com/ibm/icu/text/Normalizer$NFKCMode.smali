.class final Lcom/ibm/icu/text/Normalizer$NFKCMode;
.super Lcom/ibm/icu/text/Normalizer$Mode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NFKCMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$NFKCMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;
    .locals 1

    .line 276
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    .line 277
    # getter for: Lcom/ibm/icu/text/Normalizer$NFKC32ModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$NFKC32ModeImpl;->access$900()Lcom/ibm/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    # getter for: Lcom/ibm/icu/text/Normalizer$ModeImpl;->normalizer2:Lcom/ibm/icu/text/Normalizer2;
    invoke-static {v0}, Lcom/ibm/icu/text/Normalizer$ModeImpl;->access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    goto :goto_0

    :cond_0
    # getter for: Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;->access$1000()Lcom/ibm/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    # getter for: Lcom/ibm/icu/text/Normalizer$ModeImpl;->normalizer2:Lcom/ibm/icu/text/Normalizer2;
    invoke-static {v0}, Lcom/ibm/icu/text/Normalizer$ModeImpl;->access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0
.end method
