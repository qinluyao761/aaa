.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/UW;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData$Companion;-><init>()V

    return-void
.end method

.method public static synthetic GEO_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic USERINFO_KEY$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getGEO_KEY()Ljava/lang/String;
    .locals 1

    .line 6
    # getter for: Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->GEO_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->access$getGEO_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUSERINFO_KEY()Ljava/lang/String;
    .locals 1

    .line 7
    # getter for: Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->USERINFO_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->access$getUSERINFO_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
