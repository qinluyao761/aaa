.class final Lcom/google/android/gms/internal/measurement/zzuy;
.super Ljava/lang/Object;


# static fields
.field private static final zzbvi:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuy;->zzvk()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->zzbvi:Ljava/lang/Class;

    return-void
.end method

.method private static final zzfz(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 3

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->zzbvi:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzuz;

    .line 18
    return-object v0
.end method

.method private static zzvk()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/lang/Class<*>;"
        }
    .end annotation

    .line 1
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2
    .line 3
    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzvl()Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->zzbvi:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "getEmptyRegistry"

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzuy;->zzfz(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 6
    .line 7
    :catch_0
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    return-object v0
.end method

.method static zzvm()Lcom/google/android/gms/internal/measurement/zzuz;
    .locals 2

    .line 8
    const/4 v1, 0x0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzuy;->zzbvi:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "loadGeneratedRegistry"

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzuy;->zzfz(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzuz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 11
    nop

    .line 12
    .line 13
    :catch_0
    :cond_0
    if-nez v1, :cond_1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvm()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v1

    .line 15
    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuy;->zzvl()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method
