.class public Lio/realm/internal/android/AndroidCapabilities;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/realm/internal/Capabilities;


# static fields
.field public static EMULATE_MAIN_THREAD:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# instance fields
.field private final isIntentServiceThread:Z

.field private final looper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/android/AndroidCapabilities;->EMULATE_MAIN_THREAD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    .line 43
    invoke-static {}, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread()Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    .line 44
    return-void
.end method

.method private hasLooper()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIntentServiceThread()Z
    .locals 2

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    const-string v0, "IntentService["

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canDeliverNotification()Z
    .locals 1

    .line 48
    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkCanDeliverNotification(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Realm cannot be automatically updated on a thread without a looper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Realm cannot be automatically updated on an IntentService thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    return-void
.end method
