.class public Landroid/support/v7/widget/MenuPopupWindow;
.super Landroid/support/v7/widget/ListPopupWindow;
.source ""

# interfaces
.implements Landroid/support/v7/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v5

    .line 63
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 1

    .line 75
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 76
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 77
    return-object v0
.end method

.method public onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 94
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 6

    .line 101
    sget-object v0, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v5

    .line 105
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void
.end method
