.class public final Lcom/google/android/gms/common/api/internal/zzc;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# static fields
.field private static zzbd:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<Landroid/support/v4/app/FragmentActivity;Ljava/lang/ref/WeakReference<Lcom/google/android/gms/common/api/internal/zzc;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzbe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;>;"
        }
    .end annotation
.end field

.field private zzbf:I

.field private zzbg:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzc;)I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    return v0
.end method

.method public static zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzc;
    .locals 5

    .line 4
    sget-object v0, Lcom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/internal/zzc;

    .line 7
    if-eqz v2, :cond_0

    .line 8
    return-object v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SupportLifecycleFragmentImpl"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/internal/zzc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v4

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzc;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    :cond_1
    new-instance v2, Lcom/google/android/gms/common/api/internal/zzc;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zzc;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "SupportLifecycleFragmentImpl"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 16
    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-object v2
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzc;)Landroid/os/Bundle;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-object v5, p2

    move-object v4, p1

    .line 22
    move-object v3, p0

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    if-lez v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/common/zze;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzd;

    invoke-direct {v1, v3, v5, v4}, Lcom/google/android/gms/common/api/internal/zzd;-><init>(Lcom/google/android/gms/common/api/internal/zzc;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/common/zze;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LifecycleCallback with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already added to this fragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 79
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public final getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Lcom/google/android/gms/common/api/internal/LifecycleCallback;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    return-object v0
.end method

.method public final synthetic getLifecycleActivity()Landroid/app/Activity;
    .locals 1

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzc;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 53
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbg:Landroid/os/Bundle;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
