.class public final Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_WIDGET_LOG_DATA:Ljava/lang/String; = "logData"

.field public static final PRINT_LOG_DATA:Z = false

.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetLogData"


# instance fields
.field private widgetSize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetSize"
    .end annotation
.end field

.field private widgetType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetType:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetSize:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
    .locals 3

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    const-string v1, "default"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstanceWithId(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;
    .locals 2

    .line 40
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .line 53
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string v0, "widgetType"

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "widgetSize"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->widgetSize:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    const-string v0, "nf_preapp_widgetLogData"

    const-string v1, "unable to create widget event "

    invoke-static {v0, v1, v3}, Lo/শ;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_0
    return-object v2
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .line 45
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/ᴉ;->ˎ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    return-object v1
.end method
