.class public abstract Lcom/google/android/gms/cast/framework/zzr$zza;
.super Lcom/google/android/gms/internal/cast/zzb;

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/zzr;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.IReconnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 4
    instance-of v0, v1, Lcom/google/android/gms/cast/framework/zzr;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/cast/framework/zzr;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/framework/zzs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/zzs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
