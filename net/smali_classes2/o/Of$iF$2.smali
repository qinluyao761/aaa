.class Lo/Of$iF$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Of$iF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˏ:Lo/Of$iF;


# direct methods
.method constructor <init>(Lo/Of$iF;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ˋ(Lo/Of$iF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ˊ(Lo/Of$iF;)I

    .line 103
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ˏ(Lo/Of$iF;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ˏ(Lo/Of$iF;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_1
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ॱ(Lo/Of$iF;)I

    move-result v0

    if-lez v0, :cond_2

    .line 107
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ˎ(Lo/Of$iF;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ʻ(Lo/Of$iF;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-static {v0}, Lo/Of$iF;->ʻ(Lo/Of$iF;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_3
    iget-object v0, p0, Lo/Of$iF$2;->ˏ:Lo/Of$iF;

    invoke-virtual {v0}, Lo/Of$iF;->ˏ()V

    .line 114
    :goto_0
    return-void
.end method
