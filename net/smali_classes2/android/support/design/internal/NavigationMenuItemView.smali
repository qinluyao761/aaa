.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source ""

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private actionArea:Landroid/widget/FrameLayout;

.field checkable:Z

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private hasIconTintList:Z

.field private final iconSize:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private itemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private needsEmptyIcon:Z

.field private final textView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Landroid/support/design/internal/NavigationMenuItemView$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuItemView$1;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    .line 95
    sget v0, Landroid/support/design/R$id;->design_menu_item_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 96
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 98
    return-void
.end method

.method private adjustAppearance()V
    .locals 3

    .line 128
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 133
    const/4 v0, -0x1

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 134
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 140
    const/4 v0, -0x2

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 141
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 166
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 167
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 171
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, v3, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 172
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    return-object v4

    .line 175
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 1

    .line 154
    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 156
    sget v0, Landroid/support/design/R$id;->design_menu_item_action_area_stub:I

    .line 158
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 161
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_1
    return-void
.end method

.method private shouldExpandActionArea()Z
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 123
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 124
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 102
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 119
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .line 242
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 243
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->itemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 246
    :cond_0
    return-object v1
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 191
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->checkable:Z

    if-eq v0, p1, :cond_0

    .line 192
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->checkable:Z

    .line 193
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->accessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 201
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 202
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 2

    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setPadding(IIII)V

    .line 272
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 209
    if-eqz p1, :cond_2

    .line 210
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->hasIconTintList:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 212
    if-nez v5, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 213
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_1
    iget v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 216
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 218
    .line 220
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->navigation_empty_icon:I

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 219
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    iget v2, p0, Landroid/support/design/internal/NavigationMenuItemView;->iconSize:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    :cond_3
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 276
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->needsEmptyIcon:Z

    .line 268
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .line 205
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 260
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
