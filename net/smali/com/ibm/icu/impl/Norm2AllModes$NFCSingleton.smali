.class final Lcom/ibm/icu/impl/Norm2AllModes$NFCSingleton;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NFCSingleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 380
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    const-string v1, "nfc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/Norm2AllModes$1;)V

    sput-object v0, Lcom/ibm/icu/impl/Norm2AllModes$NFCSingleton;->INSTANCE:Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    return-void
.end method

.method static synthetic access$200()Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    .locals 1

    .line 379
    sget-object v0, Lcom/ibm/icu/impl/Norm2AllModes$NFCSingleton;->INSTANCE:Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    return-object v0
.end method
