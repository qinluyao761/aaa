.class final Lcom/google/android/gms/tasks/Tasks$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzaf:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tasks/zzv;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final await()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 10
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public final onCanceled()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zza;->zzaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    return-void
.end method
