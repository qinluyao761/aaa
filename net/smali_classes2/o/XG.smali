.class public abstract Lo/XG;
.super Lo/XP;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/XP;"
    }
.end annotation


# static fields
.field private static final ॱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/XG;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/XG;->ॱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    .line 37
    invoke-direct {p0}, Lo/XP;-><init>()V

    .line 38
    invoke-static {}, Lo/XH;->ˋ()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/XG;->_consensus:Ljava/lang/Object;

    return-void
.end method

.method private final ॱ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/XG;->ˎ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/XG;->_consensus:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract ˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract ˎ(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Ljava/lang/Object;)V"
        }
    .end annotation
.end method

.method public final ˎ(Ljava/lang/Object;)Z
    .locals 4

    .line 43
    invoke-static {}, Lo/XH;->ˋ()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 44
    :cond_1
    sget-object v0, Lo/XG;->ॱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/XH;->ˋ()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final ˏ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 57
    iget-object v1, p0, Lo/XG;->_consensus:Ljava/lang/Object;

    .line 58
    invoke-static {}, Lo/XH;->ˋ()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lo/XG;->ˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/XG;->ॱ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    :cond_0
    invoke-virtual {p0, p1, v1}, Lo/XG;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object v1
.end method
