.class public final enum Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpacingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "AFTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "COUNT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .locals 1

    .line 50
    const-class v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .locals 1

    .line 50
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object v0
.end method
