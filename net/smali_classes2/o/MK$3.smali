.class Lo/MK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MK;->ˎ(Lo/rk;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Landroid/app/Notification;

.field final synthetic ˎ:Lo/MK;

.field final synthetic ˏ:Lo/rk;


# direct methods
.method constructor <init>(Lo/MK;Lo/rk;Landroid/app/Notification;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/MK$3;->ˎ:Lo/MK;

    iput-object p2, p0, Lo/MK$3;->ˏ:Lo/rk;

    iput-object p3, p0, Lo/MK$3;->ˋ:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lo/MK$3;->ˏ:Lo/rk;

    iget-object v1, p0, Lo/MK$3;->ˋ:Landroid/app/Notification;

    const/16 v2, 0x14

    invoke-interface {v0, v2, v1}, Lo/rk;->ˊ(ILandroid/app/Notification;)V

    .line 79
    return-void
.end method
