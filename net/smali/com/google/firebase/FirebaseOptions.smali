.class public final Lcom/google/firebase/FirebaseOptions;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 144
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 150
    iput-object p7, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public static fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;
    .locals 9

    .line 160
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 161
    move-object p0, v0

    const-string v1, "google_app_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions;

    const-string v1, "google_api_key"

    .line 167
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "firebase_database_url"

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "ga_trackingId"

    .line 169
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "gcm_defaultSenderId"

    .line 170
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "google_storage_bucket"

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "project_id"

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 230
    instance-of v0, p1, Lcom/google/firebase/FirebaseOptions;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    check-cast p1, Lcom/google/firebase/FirebaseOptions;

    .line 234
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 235
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 236
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    .line 237
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 238
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 239
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 240
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getGcmSenderId()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 245
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzd:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 251
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "applicationId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzb:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zza:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "databaseUrl"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzc:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "gcmSenderId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zze:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "storageBucket"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzf:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "projectId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzg:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0
.end method
