.class public final enum Lcom/ibm/icu/impl/number/Parse$GroupingMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/ibm/icu/impl/number/Parse$GroupingMode;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field public static final enum DEFAULT:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field public static final enum RESTRICTED:Lcom/ibm/icu/impl/number/Parse$GroupingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 243
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Parse$GroupingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->DEFAULT:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 252
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    const-string v1, "RESTRICTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Parse$GroupingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->DEFAULT:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Parse$GroupingMode;
    .locals 1

    .line 235
    const-class v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Parse$GroupingMode;
    .locals 1

    .line 235
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$GroupingMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Parse$GroupingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    return-object v0
.end method
