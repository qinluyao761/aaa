.class public final enum Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoFailback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;>;"
    }
.end annotation


# static fields
.field public static final enum ˋ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field private static final synthetic ˎ:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field public static final enum ˏ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field public static final enum ॱ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const-string v1, "widevineL3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˋ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const-string v1, "widevineL3Failed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˏ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const-string v1, "uknown"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ॱ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˋ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˏ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ॱ:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˎ:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    .locals 1

    .line 21
    const-class v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    .locals 1

    .line 21
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->ˎ:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-object v0
.end method
