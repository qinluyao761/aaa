.class public final enum Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;>;"
    }
.end annotation


# static fields
.field public static final enum ˋ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field public static final enum ˎ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field private static final synthetic ˏ:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field public static final enum ॱ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string v1, "msl"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ॱ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string v1, "streaming_playback"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˎ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string v1, "offline_playback"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˋ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ॱ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˎ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˋ:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˏ:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ˏ:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method
