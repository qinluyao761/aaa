.class final Lcom/google/android/gms/internal/measurement/zzut$zzd;
.super Lcom/google/android/gms/internal/measurement/zzut;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation


# instance fields
.field private final zzbuy:I

.field private final zzbuz:Ljava/nio/ByteBuffer;

.field private final zzbva:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;-><init>(Lcom/google/android/gms/internal/measurement/zzuu;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuz:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuy:I

    .line 5
    return-void
.end method

.method private final zzfy(Ljava/lang/String;)V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final flush()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuz:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 102
    :catch_1
    move-exception v1

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(IJ)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzav(J)V

    .line 21
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Lcom/google/android/gms/internal/measurement/zzud;)V

    .line 33
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V

    .line 36
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 1

    .line 37
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V

    .line 39
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzud;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 67
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzud;->zza(Lcom/google/android/gms/internal/measurement/zzuc;)V

    .line 68
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 5

    .line 53
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztw;

    move-object v3, p2

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zztw;->zztu()I

    move-result v0

    .line 55
    move v4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zzae(Ljava/lang/Object;)I

    move-result v4

    .line 57
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zztw;->zzah(I)V

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuw:Lcom/google/android/gms/internal/measurement/zzuv;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    .line 61
    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->write([BII)V

    .line 105
    return-void
.end method

.method public final zzav(J)V
    .locals 5

    .line 87
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    .line 93
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzax(I)V
    .locals 2

    .line 72
    if-ltz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    return-void

    .line 74
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzav(J)V

    .line 75
    return-void
.end method

.method public final zzax(J)V
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzay(I)V
    .locals 4

    .line 76
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 2

    .line 45
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zze(II)V

    .line 47
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(ILcom/google/android/gms/internal/measurement/zzud;)V

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 49
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 2

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zze(II)V

    .line 42
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(ILcom/google/android/gms/internal/measurement/zzwt;)V

    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 44
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzfw(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 26
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(B)V

    .line 27
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzwt;->zzvu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 51
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzwt;->zzb(Lcom/google/android/gms/internal/measurement/zzut;)V

    .line 52
    return-void
.end method

.method public final zzba(I)V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(B)V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .locals 2

    .line 6
    move v1, p2

    .line 7
    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 9
    return-void
.end method

.method public final zzc(IJ)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzax(J)V

    .line 24
    return-void
.end method

.method public final zzd(II)V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzax(I)V

    .line 12
    return-void
.end method

.method public final zze(II)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 15
    return-void
.end method

.method public final zze([BII)V
    .locals 1

    .line 69
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzut;->write([BII)V

    .line 71
    return-void
.end method

.method public final zzfw(Ljava/lang/String;)V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbd(I)I

    move-result v4

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbd(I)I

    move-result v0

    .line 110
    move v5, v0

    if-ne v0, v4, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int v6, v0, v5

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzfy(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    sub-int v0, v7, v6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;)I

    move-result v6

    .line 120
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzfy(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzyn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    return-void

    .line 123
    :catch_0
    move-exception v3

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyn;)V

    .line 126
    return-void

    .line 127
    :catch_1
    move-exception v3

    .line 128
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzg(II)V
    .locals 1

    .line 16
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzba(I)V

    .line 18
    return-void
.end method

.method public final zzvg()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method
