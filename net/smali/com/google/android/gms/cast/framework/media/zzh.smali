.class final Lcom/google/android/gms/cast/framework/media/zzh;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzh;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 2
    const-string v0, "targetActivity"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/ComponentName;

    .line 3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzh;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const/high16 v0, 0x24000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    .line 8
    const/4 v0, 0x1

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzh;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    .line 11
    invoke-virtual {v6, v4}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 12
    .line 13
    const/4 v0, 0x1

    const/high16 v1, 0x8000000

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 14
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v5, p1, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v6

    .line 19
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzba()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v0

    const-string v1, "Sending PendingIntent failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method
