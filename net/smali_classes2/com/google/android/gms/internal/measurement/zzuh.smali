.class final Lcom/google/android/gms/internal/measurement/zzuh;
.super Lcom/google/android/gms/internal/measurement/zzum;


# instance fields
.field private final zzbud:I

.field private final zzbue:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzum;-><init>([B)V

    .line 2
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzuh;->zzb(III)I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbud:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbue:I

    .line 5
    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbue:I

    return v0
.end method

.method public final zzal(I)B
    .locals 5

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzud;->size()I

    move-result v4

    .line 7
    move v3, p1

    add-int/lit8 v0, v3, 0x1

    sub-int v0, v4, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    .line 8
    if-gez v3, :cond_0

    .line 9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbug:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbud:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected final zzud()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuh;->zzbud:I

    return v0
.end method
