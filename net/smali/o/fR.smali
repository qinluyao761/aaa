.class final synthetic Lo/fR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ˊ:Lo/fO;


# direct methods
.method constructor <init>(Lo/fO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fR;->ˊ:Lo/fO;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/fR;->ˊ:Lo/fO;

    invoke-virtual {v0}, Lo/fO;->ʼ()V

    return-void
.end method
