.class public final enum Lcom/ibm/icu/util/Currency$CurrencyUsage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/ibm/icu/util/Currency$CurrencyUsage;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field public static final enum CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field public static final enum STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 114
    new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const-string v1, "CASH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/Currency$CurrencyUsage;

    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->$VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 101
    const-class v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 101
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->$VALUES:[Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/Currency$CurrencyUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method
