.class Lo/Lc$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lc;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˎ:Lo/Lc;


# direct methods
.method constructor <init>(Lo/Lc;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 86
    const-string v0, "social"

    const-string v1, "User opted out!"

    invoke-static {v0, v1}, Lo/শ;->ˊ(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-static {v0}, Lo/Lc;->ˊ(Lo/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-static {v0}, Lo/Lc;->ˊ(Lo/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "social"

    const-string v1, "Already clicked!"

    invoke-static {v0, v1}, Lo/শ;->ॱ(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v2

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-static {v0}, Lo/Lc;->ˊ(Lo/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 96
    :goto_0
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-virtual {v0}, Lo/Lc;->dismiss()V

    .line 97
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-virtual {v0}, Lo/Lc;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 99
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-virtual {v0}, Lo/Lc;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lo/MR;->ˎ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/Lc$4;->ˎ:Lo/Lc;

    invoke-virtual {v0}, Lo/Lc;->ʽ()V

    .line 104
    :cond_1
    return-void
.end method
