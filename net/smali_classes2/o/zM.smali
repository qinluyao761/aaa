.class final Lo/zM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final synthetic ˊ:Lo/Ur;


# direct methods
.method constructor <init>(Lo/Ur;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/zM;->ˊ:Lo/Ur;

    return-void
.end method


# virtual methods
.method public final synthetic toJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lo/zM;->ˊ:Lo/Ur;

    invoke-interface {v0}, Lo/Ur;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
