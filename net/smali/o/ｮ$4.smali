.class final Lo/ｮ$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ｮ;->ˎ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;)Lo/ᖪ$ˋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ˊ:Ljava/lang/Runnable;

.field final synthetic ˋ:Ljava/lang/Runnable;

.field final synthetic ॱ:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/ｮ$4;->ˊ:Ljava/lang/Runnable;

    iput-object p2, p0, Lo/ｮ$4;->ॱ:Landroid/os/Handler;

    iput-object p3, p0, Lo/ｮ$4;->ˋ:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/ｮ$4;->ˊ:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lo/ｮ$4;->ॱ:Landroid/os/Handler;

    iget-object v1, p0, Lo/ｮ$4;->ˊ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lo/ｮ$4;->ˋ:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lo/ｮ$4;->ॱ:Landroid/os/Handler;

    iget-object v1, p0, Lo/ｮ$4;->ˋ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_1
    return-void
.end method
