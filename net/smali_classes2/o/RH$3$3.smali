.class Lo/RH$3$3;
.super Lo/RK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RH$3;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Lo/RH$3;

.field final synthetic ॱ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/RH$3;Ljava/lang/Runnable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/RH$3$3;->ˋ:Lo/RH$3;

    iput-object p2, p0, Lo/RH$3$3;->ॱ:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/RK;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/RH$3$3;->ॱ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method
