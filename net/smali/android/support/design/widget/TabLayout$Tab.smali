.class public Landroid/support/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field public parent:Landroid/support/design/widget/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Landroid/support/design/widget/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    .line 1706
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 1

    .line 1679
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 1

    .line 1679
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1734
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1780
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1790
    iget v0, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1804
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1879
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    .line 1941
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 1942
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1944
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1945
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    .line 1946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1947
    return-void
.end method

.method public select()V
    .locals 2

    .line 1871
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1874
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1875
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0

    .line 1913
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1914
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1915
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 3

    .line 1769
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1770
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0

    .line 1750
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1751
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1752
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0

    .line 1815
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1816
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1817
    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 1794
    iput p1, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    .line 1795
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 1843
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1850
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    .line 1851
    return-object p0
.end method

.method updateView()V
    .locals 1

    .line 1933
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1936
    :cond_0
    return-void
.end method
