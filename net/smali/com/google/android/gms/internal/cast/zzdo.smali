.class public final Lcom/google/android/gms/internal/cast/zzdo;
.super Ljava/lang/Object;


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;

.field private static final zzza:Ljava/lang/Object;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private zzpt:Ljava/lang/Runnable;

.field private zzve:J

.field private zzyy:J

.field private zzyz:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdo;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzyy:J

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/cast/zzek;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->handler:Landroid/os/Handler;

    .line 5
    return-void
.end method

.method private final zza(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdo;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object v3, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzyz:Lcom/google/android/gms/internal/cast/zzdn;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzyz:Lcom/google/android/gms/internal/cast/zzdn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JILjava/lang/Object;)V

    .line 48
    .line 49
    :cond_0
    move-object v5, p0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/google/android/gms/internal/cast/zzdo;->zzyz:Lcom/google/android/gms/internal/cast/zzdn;

    .line 51
    move-object v6, v5

    .line 52
    sget-object v7, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 54
    monitor-exit v7

    goto :goto_0

    .line 55
    :cond_1
    :try_start_2
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/zzdo;->handler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :goto_0
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private final zza(ILjava/lang/Object;)Z
    .locals 7

    .line 36
    sget-object v5, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v5

    .line 37
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "clearing request %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdo;->zza(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v5

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    .line 43
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method


# virtual methods
.method public final test(J)Z
    .locals 6

    .line 24
    sget-object v4, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v4

    .line 25
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v4

    return v0

    .line 26
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public final zza(JLcom/google/android/gms/internal/cast/zzdn;)V
    .locals 12

    .line 6
    sget-object v7, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v7

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzyz:Lcom/google/android/gms/internal/cast/zzdn;

    .line 8
    iget-wide v5, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzyz:Lcom/google/android/gms/internal/cast/zzdn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 12
    :goto_0
    if-eqz v4, :cond_0

    .line 13
    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->zzb(J)V

    .line 14
    :cond_0
    move-object v9, p0

    .line 15
    sget-object v10, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v10

    .line 16
    :try_start_1
    iget-object v0, v9, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, v9, Lcom/google/android/gms/internal/cast/zzdo;->handler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdp;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/cast/zzdp;-><init>(Lcom/google/android/gms/internal/cast/zzdo;)V

    iput-object v0, v9, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;

    .line 19
    iget-object v0, v9, Lcom/google/android/gms/internal/cast/zzdo;->handler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/google/android/gms/internal/cast/zzdo;->zzpt:Ljava/lang/Runnable;

    iget-wide v2, v9, Lcom/google/android/gms/internal/cast/zzdo;->zzyy:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    monitor-exit v10

    return-void

    :catchall_1
    move-exception v11

    monitor-exit v10

    throw v11
.end method

.method public final zzc(JILjava/lang/Object;)Z
    .locals 7

    .line 27
    sget-object v5, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v5

    .line 28
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "request %d completed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/gms/internal/cast/zzdo;->zza(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v5

    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    .line 34
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public final zzdq()Z
    .locals 6

    .line 21
    sget-object v4, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v4

    .line 22
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v4

    return v0

    .line 23
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method final synthetic zzdr()V
    .locals 7

    .line 59
    move-object v4, p0

    .line 60
    sget-object v5, Lcom/google/android/gms/internal/cast/zzdo;->zzza:Ljava/lang/Object;

    monitor-enter v5

    .line 61
    :try_start_0
    iget-wide v0, v4, Lcom/google/android/gms/internal/cast/zzdo;->zzve:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    monitor-exit v5

    return-void

    .line 63
    .line 64
    :cond_0
    const/16 v0, 0xf

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public final zzq(I)Z
    .locals 2

    .line 35
    const/16 v0, 0x7d2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;->zza(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
