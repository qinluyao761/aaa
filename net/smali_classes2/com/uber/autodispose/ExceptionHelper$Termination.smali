.class final Lcom/uber/autodispose/ExceptionHelper$Termination;
.super Ljava/lang/Throwable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uber/autodispose/ExceptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Termination"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 73
    const-string v0, "No further exceptions"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 77
    monitor-exit p0

    return-object p0
.end method
