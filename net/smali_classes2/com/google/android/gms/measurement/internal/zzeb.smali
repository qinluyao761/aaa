.class final Lcom/google/android/gms/measurement/internal/zzeb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaeo:Ljava/lang/String;

.field private final synthetic zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

.field private final synthetic zzaqq:Ljava/lang/String;

.field private final synthetic zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

.field private final synthetic zzash:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeo:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v5

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzd(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    .line 4
    if-nez v6, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get conditional properties"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqq:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeo:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

    .line 14
    invoke-interface {v6, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeo:Ljava/lang/String;

    .line 17
    invoke-interface {v6, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zze(Lcom/google/android/gms/measurement/internal/zzdr;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v6

    .line 23
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get conditional properties"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaqq:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzaeh:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeb;->zzash:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    :goto_1
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v8

    monitor-exit v5

    throw v8
.end method
