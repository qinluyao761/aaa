.class public final enum Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum ˎ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field public static final enum ˏ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field private static final synthetic ॱ:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const-string v1, "MSL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˊ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const-string v1, "OFFLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˎ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const-string v1, "STREAMING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˏ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˊ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˎ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ˏ:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ॱ:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->ॱ:[Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object v0
.end method
