.class Lo/dy$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dy;->ˋ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˎ:Lo/dy;


# direct methods
.method constructor <init>(Lo/dy;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lo/dy$4;->ˎ:Lo/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/dy$4;->ˎ:Lo/dy;

    invoke-static {v0}, Lo/dy;->ˋ(Lo/dy;)Lo/gH;

    move-result-object v0

    iget-object v1, p0, Lo/dy$4;->ˎ:Lo/dy;

    invoke-static {v1}, Lo/dy;->ˎ(Lo/dy;)Lo/dH;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/gH;->ˊ(Lo/gI;)V

    .line 89
    return-void
.end method
