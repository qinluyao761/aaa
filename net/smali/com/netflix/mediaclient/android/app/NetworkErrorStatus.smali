.class public Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;
.super Lcom/netflix/mediaclient/android/app/BaseStatus;
.source ""


# instance fields
.field private ˋ:Lcom/android/volley/VolleyError;

.field private ॱ:Lcom/netflix/cl/model/Error;


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;-><init>()V

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ˋ:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ˎ:Lcom/netflix/mediaclient/StatusCode;

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ˋ:Lcom/android/volley/VolleyError;

    .line 20
    invoke-static {p1}, Lo/NU;->ˏ(Lcom/android/volley/VolleyError;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ॱ:Lcom/netflix/cl/model/Error;

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkErrorStatus{VolleyError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ˋ:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ॱ:Lcom/netflix/cl/model/Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊॱ()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public ˋॱ()Ljava/lang/String;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public ͺ()Lcom/android/volley/VolleyError;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ˋ:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public ॱॱ()Lcom/netflix/cl/model/Error;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->ॱ:Lcom/netflix/cl/model/Error;

    return-object v0
.end method
