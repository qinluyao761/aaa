.class final Lcom/google/firebase/iid/zzaz;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzdk:Lcom/google/firebase/iid/zzay;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/zzay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    .line 3
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzay;->zzao()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity changed. Starting background sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    .line 16
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    .line 18
    return-void
.end method

.method public final zzap()V
    .locals 3

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdk:Lcom/google/firebase/iid/zzay;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    return-void
.end method
