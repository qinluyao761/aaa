.class public final Lcom/google/android/gms/internal/measurement/zzgc;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<Lcom/google/android/gms/internal/measurement/zzgc;>;"
    }
.end annotation


# static fields
.field private static volatile zzawk:[Lcom/google/android/gms/internal/measurement/zzgc;


# instance fields
.field public value:Ljava/lang/String;

.field public zzoj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    .line 8
    .line 9
    move-object v1, p0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    .line 12
    const/4 v0, -0x1

    iput v0, v1, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfm:I

    .line 13
    return-void
.end method

.method public static zzmn()[Lcom/google/android/gms/internal/measurement/zzgc;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawk:[Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v0, :cond_1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzze;->zzcfl:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawk:[Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgc;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawk:[Lcom/google/android/gms/internal/measurement/zzgc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawk:[Lcom/google/android/gms/internal/measurement/zzgc;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    if-ne p1, p0, :cond_0

    .line 15
    const/4 v0, 0x1

    return v0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 20
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 25
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 26
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 28
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    :cond_6
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 33
    move v2, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 35
    move v2, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 37
    move v2, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 4

    .line 55
    move-object v2, p1

    move-object v1, p0

    .line 56
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyx;->zzug()I

    move-result v0

    .line 57
    move v3, v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 58
    :sswitch_0
    return-object v1

    .line 59
    :goto_1
    invoke-super {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzza;->zza(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-object v1

    .line 61
    :sswitch_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    .line 62
    goto :goto_0

    .line 63
    :sswitch_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    .line 64
    :cond_0
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(ILjava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(ILjava/lang/String;)V

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 46
    return-void
.end method

.method protected final zzf()I
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->zzf()I

    move-result v2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzc(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    .line 53
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzc(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 54
    :cond_1
    return v2
.end method
