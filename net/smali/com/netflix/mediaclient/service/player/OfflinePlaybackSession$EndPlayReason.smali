.class final enum Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EndPlayReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

.field public static final enum ˋ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

.field private static final synthetic ˎ:[Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

.field public static final enum ˏ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 984
    new-instance v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const-string v1, "ended"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˊ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    .line 985
    new-instance v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const-string v1, "stopped"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˏ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    .line 986
    new-instance v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const-string v1, "error"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˋ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    .line 983
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˊ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˏ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˋ:Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˎ:[Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;
    .locals 1

    .line 983
    const-class v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;
    .locals 1

    .line 983
    sget-object v0, Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->ˎ:[Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/OfflinePlaybackSession$EndPlayReason;

    return-object v0
.end method
