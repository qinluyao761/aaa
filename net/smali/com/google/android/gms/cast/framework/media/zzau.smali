.class final Lcom/google/android/gms/cast/framework/media/zzau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lcom/google/android/gms/common/api/ResultCallback<Lcom/google/android/gms/common/api/Status;>;"
    }
.end annotation


# instance fields
.field private final zzgp:J

.field private final synthetic zzpn:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzau;->zzpn:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/zzau;->zzgp:J

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 6

    .line 4
    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/common/api/Status;

    move-object v4, p0

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/zzau;->zzpn:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/cast/zzdi;

    move-result-object v0

    iget-wide v1, v4, Lcom/google/android/gms/cast/framework/media/zzau;->zzgp:J

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzcn;->zza(JI)V

    .line 7
    :cond_0
    return-void
.end method
