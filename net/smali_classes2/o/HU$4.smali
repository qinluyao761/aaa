.class final Lo/HU$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HU;-><init>(Lo/IK;Lio/reactivex/Observable;Lo/Hg;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/functions/Predicate<Lo/Hg$\u02cb;>;"
    }
.end annotation


# static fields
.field public static final ˎ:Lo/HU$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/HU$4;

    invoke-direct {v0}, Lo/HU$4;-><init>()V

    sput-object v0, Lo/HU$4;->ˎ:Lo/HU$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic test(Ljava/lang/Object;)Z
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Lo/Hg$ˋ;

    invoke-virtual {p0, v0}, Lo/HU$4;->ˊ(Lo/Hg$ˋ;)Z

    move-result v0

    return v0
.end method

.method public final ˊ(Lo/Hg$ˋ;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lo/Hg$ˋ;->ˏ()Lo/sj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
