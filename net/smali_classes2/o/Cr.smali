.class final synthetic Lo/Cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final ˏ:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Cr;->ˏ:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lo/Cr;->ˏ:Lorg/json/JSONObject;

    invoke-static {v0}, Lo/Cs;->ˊ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
