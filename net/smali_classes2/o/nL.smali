.class final synthetic Lo/nL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ॱ:Lo/nJ;


# direct methods
.method constructor <init>(Lo/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nL;->ॱ:Lo/nJ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/nL;->ॱ:Lo/nJ;

    invoke-virtual {v0}, Lo/nJ;->ˏॱ()V

    return-void
.end method
