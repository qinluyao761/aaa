.class Landroid/support/design/bottomappbar/BottomAppBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 642
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 645
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    # getter for: Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z
    invoke-static {v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v1

    # invokes: Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateAttachChange(Z)V
    invoke-static {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$700(Landroid/support/design/bottomappbar/BottomAppBar;Z)V

    .line 646
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    # getter for: Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I
    invoke-static {v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$800(Landroid/support/design/bottomappbar/BottomAppBar;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$7;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    # getter for: Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z
    invoke-static {v2}, Landroid/support/design/bottomappbar/BottomAppBar;->access$600(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v2

    # invokes: Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V
    invoke-static {v0, v1, v2}, Landroid/support/design/bottomappbar/BottomAppBar;->access$900(Landroid/support/design/bottomappbar/BottomAppBar;IZ)V

    .line 647
    return-void
.end method
