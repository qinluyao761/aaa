.class final enum Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SupportedCapabilities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;>;"
    }
.end annotation


# static fields
.field private static final synthetic ʻ:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

.field public static final enum ˊ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

.field public static final enum ˋ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

.field public static final enum ˎ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

.field public static final enum ˏ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

.field public static final enum ॱ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const-string v1, "HD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˋ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const-string v1, "UHD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ॱ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const-string v1, "_5dot1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˎ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const-string v1, "HDR10"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˏ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const-string v1, "DOLBY_VISION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˊ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˋ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ॱ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˎ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˏ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ˊ:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ʻ:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;
    .locals 1

    .line 119
    const-class v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;
    .locals 1

    .line 119
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->ʻ:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    return-object v0
.end method
