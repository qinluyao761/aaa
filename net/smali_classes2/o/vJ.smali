.class Lo/vJ;
.super Lo/vC;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/vC;-><init>()V

    return-void
.end method

.method static ˋ(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ʽˋ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method ˊ()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ʽˋ:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public ॱ(Landroid/content/Context;Ljava/lang/Throwable;)Lo/bT;
    .locals 2

    .line 23
    sget-object v0, Lo/vJ;->ˎ:Ljava/lang/String;

    const-string v1, "MSL get key request failed. Device may recover on its own"

    invoke-static {v0, v1}, Lo/শ;->ˊ(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/vJ;->ˏ(Landroid/content/Context;Ljava/lang/Throwable;)Lo/bT;

    move-result-object v0

    return-object v0
.end method
