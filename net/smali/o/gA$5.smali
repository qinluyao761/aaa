.class Lo/gA$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˏ:Lo/gA;


# direct methods
.method constructor <init>(Lo/gA;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/gA$5;->ˏ:Lo/gA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/gA$5;->ˏ:Lo/gA;

    invoke-static {v0, p2}, Lo/gA;->ˎ(Lo/gA;Landroid/content/Intent;)V

    .line 47
    return-void
.end method
