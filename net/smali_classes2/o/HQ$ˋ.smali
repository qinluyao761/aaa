.class final Lo/HQ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HQ;->ˊ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/functions/Predicate<Lo/Hh;>;"
    }
.end annotation


# static fields
.field public static final ˋ:Lo/HQ$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/HQ$ˋ;

    invoke-direct {v0}, Lo/HQ$ˋ;-><init>()V

    sput-object v0, Lo/HQ$ˋ;->ˋ:Lo/HQ$ˋ;

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

    .line 13
    move-object v0, p1

    check-cast v0, Lo/Hh;

    invoke-virtual {p0, v0}, Lo/HQ$ˋ;->ˋ(Lo/Hh;)Z

    move-result v0

    return v0
.end method

.method public final ˋ(Lo/Hh;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    instance-of v0, p1, Lo/Hh$ʹ;

    return v0
.end method
