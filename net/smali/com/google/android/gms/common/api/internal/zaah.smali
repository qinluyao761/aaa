.class public final Lcom/google/android/gms/common/api/internal/zaah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabd;


# instance fields
.field private final zafs:Lcom/google/android/gms/common/api/internal/zabe;

.field private zaft:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabe;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    .line 4
    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaah;)Lcom/google/android/gms/common/api/internal/zabe;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    return-object v0
.end method


# virtual methods
.method public final begin()V
    .locals 0

    .line 5
    return-void
.end method

.method public final connect()V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaaj;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zaaj;-><init>(Lcom/google/android/gms/common/api/internal/zaah;Lcom/google/android/gms/common/api/internal/zabd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaa(Lcom/google/android/gms/common/api/internal/zabf;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final disconnect()Z
    .locals 3

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaax()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacm;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacm;->zabv()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaf(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::Lcom/google/android/gms/common/api/Api$AnyClient;R::Lcom/google/android/gms/common/api/Result;T:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zaah;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::Lcom/google/android/gms/common/api/Api$AnyClient;T:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<+Lcom/google/android/gms/common/api/Result;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 7
    move-object v3, p1

    .line 8
    move-object v2, p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/zacp;->zab(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 9
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v6

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zagy:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    const-string v0, "Appropriate Api was not requested."

    invoke-static {v7, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v4, v7

    invoke-interface {v7}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaho:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, v4, Lcom/google/android/gms/common/internal/SimpleClientAdapter;

    if-eqz v0, :cond_1

    .line 18
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/common/internal/SimpleClientAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/SimpleClientAdapter;->getClient()Lcom/google/android/gms/common/api/Api$SimpleClient;

    move-result-object v5

    goto :goto_0

    .line 19
    :cond_1
    move-object v5, v4

    .line 20
    :goto_0
    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaai;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zaai;-><init>(Lcom/google/android/gms/common/api/internal/zaah;Lcom/google/android/gms/common/api/internal/zabd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaa(Lcom/google/android/gms/common/api/internal/zabf;)V

    .line 24
    :goto_1
    return-object p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaf(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zahs:Lcom/google/android/gms/common/api/internal/zabt;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zabt;->zab(IZ)V

    .line 43
    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api<*>;Z)V"
        }
    .end annotation

    .line 40
    return-void
.end method

.method final zaam()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaft:Z

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zafs:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaed:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaw;->zahe:Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacp;->release()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaah;->disconnect()Z

    .line 48
    :cond_0
    return-void
.end method
