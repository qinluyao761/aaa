.class public final Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/UH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;Lo/UH<Lo/Yc;Lo/Ug$\u02cb;Lo/Yc;>;"
    }
.end annotation


# static fields
.field public static final ˋ:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->ˋ:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lo/Yc;

    move-object v1, p2

    check-cast v1, Lo/Ug$ˋ;

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->ˎ(Lo/Yc;Lo/Ug$ˋ;)Lo/Yc;

    move-result-object v0

    return-object v0
.end method

.method public final ˎ(Lo/Yc;Lo/Ug$ˋ;)Lo/Yc;
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    instance-of v0, p2, Lo/Xr;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p2

    check-cast v0, Lo/Xr;

    invoke-virtual {p1}, Lo/Yc;->ˏ()Lo/Ug;

    move-result-object v1

    invoke-virtual {p1}, Lo/Yc;->ॱ()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/Xr;->ˎ(Lo/Ug;Ljava/lang/Object;)V

    .line 54
    .line 57
    :cond_0
    return-object p1
.end method
