.class public abstract Lcom/google/android/gms/internal/measurement/zzzg;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzcfm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzyu()Lcom/google/android/gms/internal/measurement/zzzg;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzc(Lcom/google/android/gms/internal/measurement/zzzg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 0

    .line 10
    return-void
.end method

.method protected zzf()I
    .locals 1

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public final zzvu()I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzf()I

    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    .line 8
    return v0
.end method

.method public zzyu()Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 1

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzg;

    return-object v0
.end method

.method public final zzza()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    if-gez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzvu()I

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return v0
.end method
