.class final synthetic Lo/uM;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final ˋ:Lo/uz;


# direct methods
.method constructor <init>(Lo/uz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/uM;->ˋ:Lo/uz;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/uM;->ˋ:Lo/uz;

    move-object v1, p1

    check-cast v1, Lo/Cd;

    invoke-virtual {v0, v1}, Lo/uz;->ˋ(Lo/Cd;)V

    return-void
.end method
