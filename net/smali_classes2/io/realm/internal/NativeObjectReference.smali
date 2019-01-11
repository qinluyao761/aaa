.class final Lio/realm/internal/NativeObjectReference;
.super Ljava/lang/ref/PhantomReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/NativeObjectReference$ReferencePool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<Lio/realm/internal/NativeObject;>;"
    }
.end annotation


# static fields
.field private static referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativeFinalizerPtr:J

.field private final nativePtr:J

.field private next:Lio/realm/internal/NativeObjectReference;

.field private prev:Lio/realm/internal/NativeObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lio/realm/internal/NativeObjectReference$ReferencePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>(Lio/realm/internal/NativeObjectReference$1;)V

    sput-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/realm/internal/NativeContext;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue<-Lio/realm/internal/NativeObject;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 76
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativePtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    .line 77
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativeFinalizerPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    .line 78
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/NativeContext;

    .line 79
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->add(Lio/realm/internal/NativeObjectReference;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .line 31
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method static synthetic access$100(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .line 31
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method private static native nativeCleanUp(JJ)V
.end method


# virtual methods
.method cleanup()V
    .locals 6

    .line 86
    iget-object v4, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/NativeContext;

    monitor-enter v4

    .line 87
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    iget-wide v2, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 90
    :goto_0
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->remove(Lio/realm/internal/NativeObjectReference;)V

    .line 91
    return-void
.end method
