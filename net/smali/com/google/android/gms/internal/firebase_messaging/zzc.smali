.class public final Lcom/google/android/gms/internal/firebase_messaging/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase_messaging/zzd;

.field private static final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza()Ljava/lang/Integer;

    move-result-object v0

    .line 12
    move-object v4, v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/firebase_messaging/zzh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzh;-><init>()V

    goto :goto_1

    .line 14
    :cond_0
    const-string v0, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/firebase_messaging/zzg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzg;-><init>()V

    goto :goto_1

    .line 17
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v5

    .line 20
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v1, Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v1, 0x84

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "will be used. The error is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    new-instance v3, Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzc$zza;-><init>()V

    .line 25
    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzd;

    .line 26
    if-nez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    sput v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zzc:I

    .line 27
    return-void
.end method

.method private static zza()Ljava/lang/Integer;
    .locals 3

    .line 3
    const-string v0, "android.os.Build$VERSION"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    move-exception v2

    .line 7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzd;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzd;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2
    return-void
.end method
