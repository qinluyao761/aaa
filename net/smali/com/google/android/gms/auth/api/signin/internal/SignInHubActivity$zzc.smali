.class final Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Void;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/zzy;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader<Ljava/lang/Void;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->getAllClients()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zze;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 4
    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .line 6
    .line 7
    move-object v3, p0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v1, v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zzc(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I

    move-result v1

    iget-object v2, v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zzd(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object v0, v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzc;->zzbz:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    .line 9
    return-void
.end method

.method public final onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/support/v4/content/Loader<Ljava/lang/Void;>;)V"
        }
    .end annotation

    .line 5
    return-void
.end method
