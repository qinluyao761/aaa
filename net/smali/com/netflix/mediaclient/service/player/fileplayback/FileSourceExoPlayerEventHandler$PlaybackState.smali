.class public final enum Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

.field private static final synthetic ˋ:[Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

.field public static final enum ˏ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;


# instance fields
.field ॱ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    const-string v1, "PLAYBACK_INIT"

    const-string v2, "102.1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˏ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    const-string v1, "PLAYBACK_PLAY"

    const-string v2, "102.2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˊ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    sget-object v1, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˏ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˊ:Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˋ:[Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ॱ:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;
    .locals 1

    .line 29
    const-class v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ˋ:[Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/fileplayback/FileSourceExoPlayerEventHandler$PlaybackState;->ॱ:Ljava/lang/String;

    return-object v0
.end method
