.class public final Lcom/netflix/cl/model/context/UiLocale;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Exclusive;


# instance fields
.field private uiLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    .line 35
    const-string v0, "UiLocale"

    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/UiLocale;->addContextType(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/netflix/cl/model/context/UiLocale;->uiLocale:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 43
    const-string v0, "uiLocale"

    iget-object v1, p0, Lcom/netflix/cl/model/context/UiLocale;->uiLocale:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/cl/model/context/UiLocale;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    return-object v2
.end method
