.class public abstract Lo/dx;
.super Lo/dr;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lo/dr;-><init>()V

    .line 12
    iget-object v0, p0, Lo/dx;->ˎ:Lorg/json/JSONObject;

    const-string v1, "playbackoffline"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 13
    invoke-static {p1}, Lo/NX;->ˊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lo/dx;->ˎ:Lorg/json/JSONObject;

    const-string v1, "oxid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_0
    invoke-static {p2}, Lo/NX;->ˊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lo/dx;->ˎ:Lorg/json/JSONObject;

    const-string v1, "dxid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :cond_1
    return-void
.end method
