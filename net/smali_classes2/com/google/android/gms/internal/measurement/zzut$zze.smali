.class final Lcom/google/android/gms/internal/measurement/zzut$zze;
.super Lcom/google/android/gms/internal/measurement/zzut;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzbuz:Ljava/nio/ByteBuffer;

.field private final zzbva:Ljava/nio/ByteBuffer;

.field private final zzbvb:J

.field private final zzbvc:J

.field private final zzbvd:J

.field private final zzbve:J

.field private zzbvf:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;-><init>(Lcom/google/android/gms/internal/measurement/zzuu;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbuz:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyh;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvc:J

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbve:J

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 9
    return-void
.end method

.method private final zzbe(J)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    move-wide v4, p1

    move-object v3, p0

    .line 164
    iget-wide v1, v3, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    sub-long v1, v4, v1

    long-to-int v1, v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbuz:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    move-object v3, p0

    .line 159
    iget-wide v1, v3, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    sub-long v1, v4, v1

    long-to-int v1, v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    return-void
.end method

.method public final write([BII)V
    .locals 7

    .line 119
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    move-object v0, p1

    int-to-long v1, p2

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-long v5, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzyh;->zza([BJJJ)V

    .line 125
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 126
    return-void
.end method

.method public final zza(IJ)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzav(J)V

    .line 25
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Lcom/google/android/gms/internal/measurement/zzud;)V

    .line 37
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V

    .line 40
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 1

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V

    .line 43
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzud;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzud;->zza(Lcom/google/android/gms/internal/measurement/zzuc;)V

    .line 73
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 5

    .line 57
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztw;

    move-object v3, p2

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zztw;->zztu()I

    move-result v0

    .line 59
    move v4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zzae(Ljava/lang/Object;)I

    move-result v4

    .line 61
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zztw;->zzah(I)V

    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbuw:Lcom/google/android/gms/internal/measurement/zzuv;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    .line 65
    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->write([BII)V

    .line 128
    return-void
.end method

.method public final zzav(J)V
    .locals 5

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbve:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 101
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 103
    return-void

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 105
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 107
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 108
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 109
    return-void

    .line 110
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 111
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1

    .line 112
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzax(I)V
    .locals 2

    .line 77
    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    return-void

    .line 79
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzav(J)V

    .line 80
    return-void
.end method

.method public final zzax(J)V
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    move-object v4, p0

    .line 115
    iget-wide v1, v4, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    sub-long v1, v5, v1

    long-to-int v1, v1

    .line 116
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 117
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 118
    return-void
.end method

.method public final zzay(I)V
    .locals 5

    .line 81
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbve:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 82
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 83
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 84
    return-void

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 86
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 88
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 89
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 90
    return-void

    .line 91
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 92
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 93
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 2

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zze(II)V

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(ILcom/google/android/gms/internal/measurement/zzud;)V

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 53
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 2

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 45
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut;->zze(II)V

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zza(ILcom/google/android/gms/internal/measurement/zzwt;)V

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 48
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzfw(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 30
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(B)V

    .line 31
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzwt;->zzvu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 55
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzwt;->zzb(Lcom/google/android/gms/internal/measurement/zzut;)V

    .line 56
    return-void
.end method

.method public final zzba(I)V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    move-object v4, p0

    .line 96
    iget-wide v1, v4, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    sub-long v1, v5, v1

    long-to-int v1, v1

    .line 97
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 99
    return-void
.end method

.method public final zzc(B)V
    .locals 5

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzyh;->zza(JB)V

    .line 70
    return-void
.end method

.method public final zzc(II)V
    .locals 2

    .line 10
    move v1, p2

    .line 11
    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 13
    return-void
.end method

.method public final zzc(IJ)V
    .locals 1

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzax(J)V

    .line 28
    return-void
.end method

.method public final zzd(II)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzax(I)V

    .line 16
    return-void
.end method

.method public final zze(II)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 19
    return-void
.end method

.method public final zze([BII)V
    .locals 1

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzut;->write([BII)V

    .line 76
    return-void
.end method

.method public final zzfw(Ljava/lang/String;)V
    .locals 14

    .line 129
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbd(I)I

    move-result v7

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbd(I)I

    move-result v0

    .line 133
    move v8, v0

    if-ne v0, v7, :cond_0

    .line 134
    iget-wide v12, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    move-object v11, p0

    .line 135
    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvb:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    .line 136
    add-int v9, v0, v8

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v10, v0, v9

    .line 140
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 141
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-long v2, v10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 142
    return-void

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;)I

    move-result v9

    .line 144
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/measurement/zzut;->zzay(I)V

    .line 145
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbe(J)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbva:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 147
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    int-to-long v2, v9

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzyn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    return-void

    .line 149
    :catch_0
    move-exception v6

    .line 150
    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    .line 151
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbe(J)V

    .line 152
    invoke-virtual {p0, p1, v6}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyn;)V

    .line 153
    return-void

    .line 154
    :catch_1
    move-exception v6

    .line 155
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 156
    :catch_2
    move-exception v6

    .line 157
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzg(II)V
    .locals 1

    .line 20
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzc(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzba(I)V

    .line 22
    return-void
.end method

.method public final zzvg()I
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zze;->zzbvf:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
