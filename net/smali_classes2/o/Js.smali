.class public final synthetic Lo/Js;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic ˎ:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->values()[Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/Js;->ˎ:[I

    sget-object v0, Lo/Js;->ˎ:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->ॱ:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/Js;->ˎ:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->ˎ:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
