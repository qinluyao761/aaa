.class final Lcom/google/android/gms/internal/measurement/zzxt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/google/android/gms/internal/measurement/zzxt;>;Ljava/util/Map$Entry<TK;TV;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final synthetic zzcch:Lcom/google/android/gms/internal/measurement/zzxm;

.field private final zzcck:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcch:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map$Entry<TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzxt;-><init>(Lcom/google/android/gms/internal/measurement/zzxm;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 2
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 22
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 26
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzxt;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxt;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzxt;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 28
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 12
    if-ne p1, p0, :cond_0

    .line 13
    const/4 v0, 0x1

    return v0

    .line 14
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 15
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxt;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxt;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    .line 25
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcch:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxm;->zza(Lcom/google/android/gms/internal/measurement/zzxm;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    .line 11
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->zzcck:Ljava/lang/Comparable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxt;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
