.class final synthetic Lo/Et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ˏ:Lo/Es;


# direct methods
.method constructor <init>(Lo/Es;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Et;->ˏ:Lo/Es;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Et;->ˏ:Lo/Es;

    invoke-virtual {v0}, Lo/Es;->ˊ()V

    return-void
.end method
