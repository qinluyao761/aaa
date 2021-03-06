.class public Lcom/google/android/gms/cast/framework/CastSession;
.super Lcom/google/android/gms/cast/framework/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/CastSession$zzb;,
        Lcom/google/android/gms/cast/framework/CastSession$zza;,
        Lcom/google/android/gms/cast/framework/CastSession$zzc;,
        Lcom/google/android/gms/cast/framework/CastSession$zzd;
    }
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;


# instance fields
.field private final zzhh:Landroid/content/Context;

.field private final zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lcom/google/android/gms/cast/Cast$Listener;>;"
        }
    .end annotation
.end field

.field private final zzib:Lcom/google/android/gms/cast/framework/zzl;

.field private final zzic:Lcom/google/android/gms/cast/Cast$CastApi;

.field private final zzid:Lcom/google/android/gms/internal/cast/zzg;

.field private final zzie:Lcom/google/android/gms/internal/cast/zzai;

.field private zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private zzih:Lcom/google/android/gms/cast/CastDevice;

.field private zzii:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "CastSession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$CastApi;Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzai;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzia:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzhh:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzic:Lcom/google/android/gms/cast/Cast$CastApi;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzid:Lcom/google/android/gms/internal/cast/zzg;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzie:Lcom/google/android/gms/internal/cast/zzai;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->zzz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/framework/CastSession$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cast/framework/CastSession$zzb;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    .line 10
    invoke-static {p1, p4, v0, v1}, Lcom/google/android/gms/internal/cast/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzh;)Lcom/google/android/gms/cast/framework/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzib:Lcom/google/android/gms/cast/framework/zzl;

    .line 11
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzii:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zze(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/zzl;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzib:Lcom/google/android/gms/cast/framework/zzl;

    return-object v0
.end method

.method private final zzb(Landroid/os/Bundle;)V
    .locals 13

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->isResuming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToResumeSession(I)V

    return-void

    .line 84
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToStartSession(I)V

    .line 85
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 89
    :cond_2
    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Acquiring a connection to Google Play Services for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v5, Lcom/google/android/gms/cast/framework/CastSession$zzd;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzd;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    .line 91
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzhh:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

    new-instance v9, Lcom/google/android/gms/cast/framework/CastSession$zzc;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzc;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzc;)V

    .line 92
    move-object v11, v5

    move-object v10, v5

    .line 93
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    if-eqz v8, :cond_3

    .line 95
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    if-eqz v8, :cond_4

    .line 99
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzaw()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 101
    :goto_1
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    .line 103
    invoke-virtual {v2, v12}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v10}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v11}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 110
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzia:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/Cast$CastApi;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzic:Lcom/google/android/gms/cast/Cast$CastApi;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private final zze(I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzie:Lcom/google/android/gms/internal/cast/zzai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzai;->zzi(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 119
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzii:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    .line 120
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/internal/cast/zzai;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzie:Lcom/google/android/gms/internal/cast/zzai;

    return-object v0
.end method

.method static synthetic zzt()Lcom/google/android/gms/internal/cast/zzdh;
    .locals 1

    .line 126
    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-object v0
.end method


# virtual methods
.method protected end(Z)V
    .locals 6

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzib:Lcom/google/android/gms/cast/framework/zzl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/cast/framework/zzl;->zza(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v5

    .line 23
    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Unable to call %s on %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "disconnectFromDevice"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/google/android/gms/cast/framework/zzl;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 25
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifySessionEnded(I)V

    .line 27
    return-void
.end method

.method public getCastDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 30
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    .line 28
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method public getSessionRemainingTimeMs()J
    .locals 4

    .line 121
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    return-wide v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzig:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected onResuming(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    .line 15
    return-void
.end method

.method protected onStarting(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzih:Lcom/google/android/gms/cast/CastDevice;

    .line 13
    return-void
.end method

.method public removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 2

    .line 66
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzic:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected resume(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzb(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
        }
    .end annotation

    .line 70
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzic:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2

    .line 62
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzic:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected start(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzb(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
