.class public abstract Lcom/google/android/gms/flags/zzd;
.super Lcom/google/android/gms/internal/flags/zzb;

# interfaces
.implements Lcom/google/android/gms/flags/zzc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/flags/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/flags/zzc;
    .locals 2

    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 6
    instance-of v0, v1, Lcom/google/android/gms/flags/zzc;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/flags/zzc;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/flags/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/zze;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .line 9
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/flags/zzd;->init(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    goto/16 :goto_1

    .line 14
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/flags/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v2

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 17
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/flags/zzd;->getBooleanFlagValue(Ljava/lang/String;ZI)Z

    move-result v4

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/flags/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 20
    goto/16 :goto_1

    .line 21
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 24
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/flags/zzd;->getIntFlagValue(Ljava/lang/String;II)I

    move-result v4

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    goto :goto_1

    .line 28
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 31
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/flags/zzd;->getLongFlagValue(Ljava/lang/String;JI)J

    move-result-wide v5

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    goto :goto_1

    .line 35
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 38
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/flags/zzd;->getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 43
    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
