.class public final Lo/sH$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02ca"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/UW;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/sH$ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ(Lo/sH;)V
    .locals 0

    .line 17
    invoke-static {p1}, Lo/sH;->ˋ(Lo/sH;)V

    return-void
.end method

.method public final ˋ()Lo/sH;
    .locals 1

    .line 17
    invoke-static {}, Lo/sH;->ˊ()Lo/sH;

    move-result-object v0

    return-object v0
.end method

.method public final ॱ(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/sH;
    .locals 6

    const-string v0, "database"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Lo/sH$ˊ;

    invoke-virtual {v0}, Lo/sH$ˊ;->ˋ()Lo/sH;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    const-class v3, Lo/sH;

    monitor-enter v3

    .line 22
    :try_start_0
    sget-object v0, Lo/sH;->ˏ:Lo/sH$ˊ;

    invoke-virtual {v0}, Lo/sH$ˊ;->ˋ()Lo/sH;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lo/sH;->ˏ:Lo/sH$ˊ;

    new-instance v1, Lo/sH;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/sH;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/UW;)V

    invoke-virtual {v0, v1}, Lo/sH$ˊ;->ˊ(Lo/sH;)V

    .line 25
    :cond_0
    sget-object v5, Lo/Tj;->ˊ:Lo/Tj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 27
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lo/sH$ˊ;

    invoke-virtual {v0}, Lo/sH$ˊ;->ˋ()Lo/sH;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/Vb;->ˎ()V

    :cond_2
    return-object v0
.end method
