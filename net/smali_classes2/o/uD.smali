.class final synthetic Lo/uD;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field static final ˎ:Lio/reactivex/functions/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/uD;

    invoke-direct {v0}, Lo/uD;-><init>()V

    sput-object v0, Lo/uD;->ˎ:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lo/uz;->ˏ(Ljava/lang/Throwable;)V

    return-void
.end method