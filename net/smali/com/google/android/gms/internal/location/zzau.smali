.class final Lcom/google/android/gms/internal/location/zzau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<Lcom/google/android/gms/location/LocationCallback;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzdb:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzau;->zzdb:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/location/LocationCallback;

    move-object v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/location/zzau;->zzdb:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
