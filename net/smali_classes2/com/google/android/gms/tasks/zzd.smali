.class final Lcom/google/android/gms/tasks/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzh:Lcom/google/android/gms/tasks/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzc;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    .line 4
    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zzb(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 11
    return-void

    .line 12
    :catch_1
    move-exception v3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 14
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    .line 16
    return-void
.end method