.class final Lcom/google/android/gms/cast/framework/SessionProvider$zza;
.super Lcom/google/android/gms/cast/framework/zzaa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/SessionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzjf:Lcom/google/android/gms/cast/framework/SessionProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/SessionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzjf:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzaa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/SessionProvider;Lcom/google/android/gms/cast/framework/zzaf;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/SessionProvider$zza;-><init>(Lcom/google/android/gms/cast/framework/SessionProvider;)V

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzjf:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isSessionRecoverable()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzjf:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionProvider;->isSessionRecoverable()Z

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;->zzjf:Lcom/google/android/gms/cast/framework/SessionProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionProvider;->createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;

    move-result-object v1

    .line 4
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->zzz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    .line 2
    const v0, 0xbdfcc1

    return v0
.end method
