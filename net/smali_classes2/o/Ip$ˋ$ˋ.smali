.class final Lo/Ip$ˋ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ip$ˋ;->ˎ(Lo/Ip;Lio/reactivex/Observable;)V
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
.field public static final ˎ:Lo/Ip$ˋ$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Ip$ˋ$ˋ;

    invoke-direct {v0}, Lo/Ip$ˋ$ˋ;-><init>()V

    sput-object v0, Lo/Ip$ˋ$ˋ;->ˎ:Lo/Ip$ˋ$ˋ;

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

    .line 7
    move-object v0, p1

    check-cast v0, Lo/Hh;

    invoke-virtual {p0, v0}, Lo/Ip$ˋ$ˋ;->ˎ(Lo/Hh;)Z

    move-result v0

    return v0
.end method

.method public final ˎ(Lo/Hh;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo/Hh$COn;->ˎ:Lo/Hh$COn;

    if-eq p1, v0, :cond_0

    sget-object v0, Lo/Hh$con;->ˎ:Lo/Hh$con;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
