.class final Lcom/google/android/gms/internal/auth-api/zzl;
.super Lcom/google/android/gms/internal/auth-api/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/auth-api/zzp<Lcom/google/android/gms/common/api/Status;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzao:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api/zzi;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/auth-api/zzl;->zzao:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth-api/zzp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 4
    .line 5
    return-object p1
.end method

.method protected final zzc(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zzw;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth-api/zzo;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    new-instance v1, Lcom/google/android/gms/internal/auth-api/zzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth-api/zzl;->zzao:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/auth-api/zzy;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/auth-api/zzw;->zzc(Lcom/google/android/gms/internal/auth-api/zzu;Lcom/google/android/gms/internal/auth-api/zzy;)V

    .line 3
    return-void
.end method
