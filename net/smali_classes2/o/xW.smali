.class final synthetic Lo/xW;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field static final ˊ:Lio/reactivex/functions/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/xW;

    invoke-direct {v0}, Lo/xW;-><init>()V

    sput-object v0, Lo/xW;->ˊ:Lio/reactivex/functions/Consumer;

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

    invoke-static {v0}, Lo/xQ;->ˏ(Ljava/lang/Throwable;)V

    return-void
.end method
