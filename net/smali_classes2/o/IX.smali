.class public final Lo/IX;
.super Lo/Je;
.source ""


# instance fields
.field private final ˋ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Je;-><init>(Landroid/view/View;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Lo/IX;->ˋ:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/IX$1;

    invoke-direct {v1, p0}, Lo/IX$1;-><init>(Lo/IX;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public ˊ()V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    invoke-virtual {p0}, Lo/IX;->ˈ()Lo/Gb;

    move-result-object v0

    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/Gb;->ˏ(Landroid/view/View;Z)V

    .line 27
    return-void
.end method

.method public ˋ()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/IX;->ˋ:Landroid/view/View;

    return-object v0
.end method

.method public ॱ()V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    invoke-virtual {p0}, Lo/IX;->ˈ()Lo/Gb;

    move-result-object v0

    invoke-virtual {p0}, Lo/IX;->ˋ()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/Gb;->ˏ(Landroid/view/View;Z)V

    .line 22
    return-void
.end method
