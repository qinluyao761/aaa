.class Landroid/support/v4/app/FragmentTransitionImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentTransitionImpl;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->this$0:Landroid/support/v4/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 296
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 298
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 300
    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method
