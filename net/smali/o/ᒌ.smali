.class public final synthetic Lo/ᒌ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final ˏ:Lio/reactivex/functions/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ᒌ;

    invoke-direct {v0}, Lo/ᒌ;-><init>()V

    sput-object v0, Lo/ᒌ;->ˏ:Lio/reactivex/functions/Consumer;

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

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->ˊ(Ljava/lang/Throwable;)V

    return-void
.end method
