.class public final synthetic Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCapKt$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->values()[Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCapKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCapKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ॱ:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCapKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ˎ:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCapKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ˋ:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
