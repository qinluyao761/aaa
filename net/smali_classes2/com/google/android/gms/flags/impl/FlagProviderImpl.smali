.class public Lcom/google/android/gms/flags/impl/FlagProviderImpl;
.super Lcom/google/android/gms/flags/zzd;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzu:Z

.field private zzv:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/flags/zzd;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    return-void
.end method


# virtual methods
.method public getBooleanFlagValue(Ljava/lang/String;ZI)Z
    .locals 2

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    if-nez v0, :cond_0

    .line 16
    return p2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzv:Landroid/content/SharedPreferences;

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/flags/impl/zzb;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIntFlagValue(Ljava/lang/String;II)I
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    if-nez v0, :cond_0

    .line 21
    return p2

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzv:Landroid/content/SharedPreferences;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 24
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/flags/impl/zzd;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongFlagValue(Ljava/lang/String;JI)J
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    if-nez v0, :cond_0

    .line 26
    return-wide p2

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzv:Landroid/content/SharedPreferences;

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 29
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/flags/impl/zzf;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    if-nez v0, :cond_0

    .line 31
    return-object p2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzv:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/flags/impl/zzh;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 6

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z

    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/flags/impl/zzj;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzv:Landroid/content/SharedPreferences;

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->zzu:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    return-void

    .line 10
    .line 11
    :catch_0
    return-void

    .line 12
    :catch_1
    move-exception v5

    .line 13
    const-string v0, "FlagProviderImpl"

    const-string v2, "Could not retrieve sdk flags, continuing with defaults: "

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
