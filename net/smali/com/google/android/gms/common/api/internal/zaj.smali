.class public Lcom/google/android/gms/common/api/internal/zaj;
.super Lcom/google/android/gms/common/api/internal/zal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/zaj$zaa;
    }
.end annotation


# instance fields
.field private final zacv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Lcom/google/android/gms/common/api/internal/zaj$zaa;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v1, "AutoManageHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 10
    return-void
.end method

.method public static zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zaj;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaj;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v2

    .line 2
    const-string v0, "AutoManageHelper"

    const-class v1, Lcom/google/android/gms/common/api/internal/zaj;

    .line 3
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaj;

    .line 4
    if-eqz v3, :cond_0

    .line 5
    return-object v3

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaj;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/internal/zaj;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    return-object v0
.end method

.method private final zab(I)Lcom/google/android/gms/common/api/internal/zaj$zaa;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj$zaa;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 46
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 47
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/internal/zaj;->zab(I)Lcom/google/android/gms/common/api/internal/zaj$zaa;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    move-object v9, p4

    move-object v8, p3

    move-object v7, p2

    move-object v6, p1

    move-object v5, v4

    .line 50
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GoogleApiClient #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, v5, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacw:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 51
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 30
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zal;->onStart()V

    .line 31
    const-string v0, "AutoManageHelper"

    iget-boolean v3, p0, Lcom/google/android/gms/common/api/internal/zaj;->mStarted:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 34
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/internal/zaj;->zab(I)Lcom/google/android/gms/common/api/internal/zaj$zaa;

    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    iget-object v0, v4, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zal;->onStop()V

    .line 40
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 41
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zaj;->zab(I)Lcom/google/android/gms/common/api/internal/zaj$zaa;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final zaa(I)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaj$zaa;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move-object v2, v1

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 28
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 29
    :cond_0
    return-void
.end method

.method public final zaa(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    .line 11
    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/common/api/internal/zam;

    .line 16
    const-string v0, "AutoManageHelper"

    iget-boolean v4, p0, Lcom/google/android/gms/common/api/internal/zaj;->mStarted:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "starting AutoManage for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v4, Lcom/google/android/gms/common/api/internal/zaj$zaa;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaj$zaa;-><init>(Lcom/google/android/gms/common/api/internal/zaj;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->mStarted:Z

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 20
    const-string v0, "AutoManageHelper"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0xb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 22
    :cond_1
    return-void
.end method

.method protected final zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 5

    .line 55
    const-string v0, "AutoManageHelper"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-gez p2, :cond_0

    .line 57
    const-string v0, "AutoManageHelper"

    const-string v1, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaj$zaa;

    .line 60
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(I)V

    .line 62
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacy:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 63
    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v4, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 65
    :cond_1
    return-void
.end method

.method protected final zao()V
    .locals 3

    .line 66
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zacv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 67
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zaj;->zab(I)Lcom/google/android/gms/common/api/internal/zaj$zaa;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zaj$zaa;->zacx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
