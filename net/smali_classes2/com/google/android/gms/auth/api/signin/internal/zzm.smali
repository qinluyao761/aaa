.class final Lcom/google/android/gms/auth/api/signin/internal/zzm;
.super Lcom/google/android/gms/auth/api/signin/internal/zzo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzo<Lcom/google/android/gms/common/api/Status;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 8
    .line 9
    return-object p1
.end method

.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5

    .line 2
    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/auth/api/signin/internal/zzg;

    move-object v3, p0

    .line 3
    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/internal/zzg;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzu;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzn;

    invoke-direct {v1, v3}, Lcom/google/android/gms/auth/api/signin/internal/zzn;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzm;)V

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzg()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzu;->zze(Lcom/google/android/gms/auth/api/signin/internal/zzs;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 7
    return-void
.end method
