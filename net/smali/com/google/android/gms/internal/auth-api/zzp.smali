.class abstract Lcom/google/android/gms/internal/auth-api/zzp;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::Lcom/google/android/gms/common/api/Result;>Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<TR;Lcom/google/android/gms/internal/auth-api/zzr;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 2
    return-void
.end method


# virtual methods
.method public synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/auth-api/zzr;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth-api/zzr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth-api/zzr;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth-api/zzw;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/auth-api/zzp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zzw;)V

    .line 5
    return-void
.end method

.method protected abstract zzc(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zzw;)V
.end method
