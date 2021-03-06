.class public final Lcom/google/android/gms/measurement/internal/zzbv;
.super Lcom/google/android/gms/measurement/internal/zzah;


# instance fields
.field private final zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzaql:Ljava/lang/Boolean;

.field private zzaqm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V
    .locals 3

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    return-void
.end method

.method private final zzc(Ljava/lang/String;Z)V
    .locals 8

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Measurement Service called without app package"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Measurement Service called without app package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    move v7, p2

    move-object v6, p1

    move-object v5, p0

    .line 108
    if-eqz v7, :cond_4

    .line 109
    :try_start_0
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 110
    const-string v0, "com.google.android.gms"

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 113
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object v0

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    .line 118
    :cond_3
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaql:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    :cond_4
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 120
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 122
    invoke-static {v0, v1, v6}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iput-object v6, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    .line 124
    :cond_5
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqm:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unknown calling package name \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 126
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_6
    return-void

    .line 128
    :catch_0
    move-exception v4

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    throw v4
.end method

.method private final zze(Ljava/lang/Runnable;)V
    .locals 1

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzakv:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzh;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/android/gms/measurement/internal/zzh;Z)Ljava/util/List<Lcom/google/android/gms/measurement/internal/zzfh;>;"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcl;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 83
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 84
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzfj;

    .line 86
    if-nez p2, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    return-object v5

    .line 90
    :catch_0
    move-exception v4

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List<Lcom/google/android/gms/measurement/internal/zzl;>;"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcd;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcd;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 195
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 196
    :catch_0
    move-exception v3

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get conditional user properties"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List<Lcom/google/android/gms/measurement/internal/zzfh;>;"
        }
    .end annotation

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcc;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 178
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzfj;

    .line 181
    if-nez p4, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    return-object v5

    .line 185
    :catch_0
    move-exception v4

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)Ljava/util/List<Lcom/google/android/gms/measurement/internal/zzfh;>;"
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcb;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcb;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 160
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzfj;

    .line 163
    if-nez p3, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v0, v7}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    goto :goto_0

    .line 166
    :cond_2
    return-object v5

    .line 167
    :catch_0
    move-exception v4

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    iget-object v2, p4, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 171
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 135
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcn;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzcn;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcg;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzch;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcj;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzck;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzck;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 98
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcm;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 2

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 142
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 143
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbx;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzbx;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzby;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzby;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)[B
    .locals 12

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v6, v0, v2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzci;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzci;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 49
    :try_start_0
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B

    .line 50
    if-nez v9, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Log and bundle returned null. appId"

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    new-array v9, v0, [B

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v10, v0, v2

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Log and bundle processed. event, size, time_ms"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, v9

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-long v4, v10, v6

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 63
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v9

    .line 65
    :catch_0
    move-exception v9

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to log and bundle. appId, event, error"

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 10

    .line 15
    move-object v8, p2

    move-object v7, p1

    move-object v6, p0

    .line 16
    const-string v0, "_cmp"

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    const-string v0, "referrer broadcast"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "referrer API"

    .line 22
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    :cond_2
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzbg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v1, "_cmpx"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    return-object v0

    .line 31
    :cond_4
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 3

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 151
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v2, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 152
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbz;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/zzbz;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzca;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/zzca;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzh(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 2

    .line 207
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 208
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcf;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zze(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Lcom/google/android/gms/measurement/internal/zzl;>;"
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zzc(Ljava/lang/String;Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzce;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzce;-><init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 203
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v3

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzamz:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to get conditional user properties"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
