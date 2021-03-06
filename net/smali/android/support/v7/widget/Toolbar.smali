.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 229
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .line 233
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    const v0, 0x800013

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 199
    new-instance v0, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 218
    new-instance v0, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 239
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 240
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 241
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 242
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v1, 0x30

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 245
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 246
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v5, v0, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 252
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 253
    if-ltz v7, :cond_1

    .line 254
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 257
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 258
    if-ltz v8, :cond_2

    .line 259
    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 262
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 263
    if-ltz v9, :cond_3

    .line 264
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 267
    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 269
    if-ltz v10, :cond_4

    .line 270
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 273
    :cond_4
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 275
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    .line 276
    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 278
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 279
    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 281
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 283
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 286
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 289
    const/high16 v0, -0x80000000

    if-ne v11, v0, :cond_5

    const/high16 v0, -0x80000000

    if-eq v12, v0, :cond_6

    .line 291
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, v11, v12}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 294
    :cond_6
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 296
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 299
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 302
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 303
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 304
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :cond_7
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 308
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 314
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 316
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 317
    if-eqz v17, :cond_9

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_9
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 321
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :cond_a
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 326
    if-eqz v19, :cond_b

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_b
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 331
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_c
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 339
    :cond_d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 340
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 342
    :cond_e
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 343
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;I)V"
        }
    .end annotation

    .line 2019
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2020
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    .line 2021
    .line 2022
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2021
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 2024
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2026
    if-eqz v2, :cond_3

    .line 2027
    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_2

    .line 2028
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2029
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2030
    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2031
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2032
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    .line 2036
    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 2037
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2038
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2039
    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_4

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2040
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2041
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2045
    :cond_5
    :goto_3
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1392
    if-nez v1, :cond_0

    .line 1393
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    goto :goto_0

    .line 1394
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1395
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    goto :goto_0

    .line 1397
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1399
    :goto_0
    const/4 v0, 0x1

    iput v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1401
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1402
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1405
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    :goto_1
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2168
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 2171
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 688
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1033
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1036
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    .line 1037
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1040
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1043
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1051
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v3

    .line 1052
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800005

    or-int/2addr v0, v1

    iput v0, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1056
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .line 1361
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1364
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v4

    .line 1365
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1366
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4

    .line 2048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 2049
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 2050
    and-int/lit8 v3, v2, 0x7

    .line 2051
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2055
    :pswitch_0
    return v3

    .line 2057
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11

    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1969
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1970
    if-lez p2, :cond_0

    sub-int v0, v3, p2

    div-int/lit8 v4, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1971
    :goto_0
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1973
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v4

    return v0

    .line 1976
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iget v1, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    return v0

    .line 1981
    :goto_1
    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1982
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    .line 1983
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v7

    .line 1984
    sub-int v0, v7, v5

    sub-int v8, v0, v6

    .line 1985
    sub-int v0, v8, v3

    div-int/lit8 v9, v0, 0x2

    .line 1986
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v9, v0, :cond_1

    .line 1987
    iget v9, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_2

    .line 1989
    :cond_1
    sub-int v0, v7, v6

    sub-int/2addr v0, v3

    sub-int/2addr v0, v9

    sub-int v10, v0, v5

    .line 1991
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v10, v0, :cond_2

    .line 1992
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v10

    sub-int v0, v9, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1995
    :cond_2
    :goto_2
    add-int v0, v5, v9

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 3

    .line 2000
    and-int/lit8 v2, p1, 0x70

    .line 2001
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 2005
    :sswitch_0
    return v2

    .line 2007
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3

    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2067
    invoke-static {v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 2068
    invoke-static {v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1059
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3

    .line 2072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2073
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;[I)I"
        }
    .end annotation

    .line 1923
    const/4 v0, 0x0

    aget v2, p2, v0

    .line 1924
    const/4 v0, 0x1

    aget v3, p2, v0

    .line 1925
    const/4 v4, 0x0

    .line 1926
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1927
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 1928
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    .line 1929
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1930
    iget v0, v8, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v9, v0, v2

    .line 1931
    iget v0, v8, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v10, v0, v3

    .line 1932
    const/4 v0, 0x0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1933
    const/4 v0, 0x0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1934
    neg-int v0, v9

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1935
    neg-int v0, v10

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1936
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    add-int/2addr v4, v0

    .line 1927
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1938
    :cond_0
    return v4
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1

    .line 2140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6

    .line 1943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1944
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v1, 0x0

    aget v1, p3, v1

    sub-int v3, v0, v1

    .line 1945
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    .line 1946
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 1947
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v4

    .line 1948
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1949
    add-int v0, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, p2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1950
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr p2, v0

    .line 1951
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6

    .line 1956
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1957
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v1, 0x1

    aget v1, p3, v1

    sub-int v3, v0, v1

    .line 1958
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1959
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 1960
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v4

    .line 1961
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1962
    sub-int v0, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, v4, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 1963
    iget v0, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    sub-int/2addr p2, v0

    .line 1964
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 10

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1534
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x0

    aget v1, p6, v1

    sub-int v3, v0, v1

    .line 1535
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v1, 0x1

    aget v1, p6, v1

    sub-int v4, v0, v1

    .line 1536
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1537
    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1538
    add-int v7, v5, v6

    .line 1539
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p6, v1

    .line 1540
    neg-int v0, v4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p6, v1

    .line 1542
    .line 1543
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v0, p3

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1542
    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v8

    .line 1544
    .line 1545
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1544
    invoke-static {p4, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v9

    .line 1548
    invoke-virtual {p1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    return v0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 7

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1509
    .line 1510
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1509
    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v3

    .line 1512
    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1512
    invoke-static {p4, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1516
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1517
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v0, :cond_1

    if-ltz p6, :cond_1

    .line 1518
    if-eqz v5, :cond_0

    .line 1519
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, p6

    .line 1521
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1523
    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1524
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1445
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1446
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method private shouldCollapse()Z
    .locals 4

    .line 1556
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1558
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1559
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1560
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1561
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 1562
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1563
    const/4 v0, 0x0

    return v0

    .line 1559
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1566
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2

    .line 2062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2131
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2133
    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 2134
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2133
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2136
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2137
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 717
    :goto_0
    if-eqz v1, :cond_1

    .line 718
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 720
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 588
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 5

    .line 1371
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1376
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v4

    .line 1377
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1378
    const/4 v0, 0x2

    iput v0, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1379
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Landroid/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 3

    .line 2096
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2078
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2083
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2084
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2085
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2086
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2087
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2088
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2090
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1126
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 5

    .line 1320
    const/4 v3, 0x0

    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    .line 1323
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1325
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1327
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1340
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1341
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1355
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1357
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1306
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1308
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1007
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 889
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 2

    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2112
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 2114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 701
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2

    .line 1071
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1072
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1451
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1452
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1453
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1487
    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1491
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v0, :cond_1

    .line 1492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1493
    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    if-nez v2, :cond_1

    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1498
    :cond_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 1499
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1502
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 34

    .line 1705
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1706
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v6

    .line 1707
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v7

    .line 1708
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    .line 1709
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v9

    .line 1710
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v10

    .line 1711
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v11

    .line 1712
    move v12, v8

    .line 1713
    sub-int v13, v6, v9

    .line 1715
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1716
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v14, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1719
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v15

    .line 1720
    if-ltz v15, :cond_1

    sub-int v0, p5, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 1722
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1723
    if-eqz v5, :cond_2

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    .line 1727
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1732
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1733
    if-eqz v5, :cond_4

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_3

    .line 1737
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1742
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1743
    if-eqz v5, :cond_6

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    goto :goto_4

    .line 1747
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    .line 1752
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v17

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v18

    .line 1754
    sub-int v0, v17, v12

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1755
    sub-int v0, v6, v9

    sub-int/2addr v0, v13

    sub-int v0, v18, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v14, v1

    .line 1756
    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1757
    sub-int v0, v6, v9

    sub-int v0, v0, v18

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1760
    if-eqz v5, :cond_8

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1764
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1769
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1770
    if-eqz v5, :cond_a

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_6

    .line 1774
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1779
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    .line 1781
    const/16 v21, 0x0

    .line 1782
    if-eqz v19, :cond_c

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1784
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, v22

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v21, v0, 0x0

    .line 1786
    :cond_c
    if-eqz v20, :cond_d

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1788
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, v22

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v21, v21, v0

    .line 1791
    :cond_d
    if-nez v19, :cond_e

    if-eqz v20, :cond_1e

    .line 1793
    :cond_e
    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1794
    :goto_7
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    .line 1795
    :goto_8
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1796
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1797
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_11
    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1798
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_13

    :cond_12
    const/16 v27, 0x1

    goto :goto_9

    :cond_13
    const/16 v27, 0x0

    .line 1800
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    goto :goto_a

    .line 1802
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    move-object/from16 v1, v25

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v22, v0, v1

    .line 1803
    goto/16 :goto_c

    .line 1806
    :goto_a
    :sswitch_1
    sub-int v0, v7, v10

    sub-int v28, v0, v11

    .line 1807
    sub-int v0, v28, v21

    div-int/lit8 v29, v0, 0x2

    .line 1808
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v0, v1

    move/from16 v1, v29

    if-ge v1, v0, :cond_14

    .line 1809
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    add-int v29, v0, v1

    goto :goto_b

    .line 1811
    :cond_14
    sub-int v0, v7, v11

    sub-int v0, v0, v21

    sub-int v0, v0, v29

    sub-int v30, v0, v10

    .line 1813
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v0, v1

    move/from16 v1, v30

    if-ge v1, v0, :cond_15

    .line 1814
    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v0, v1

    sub-int v0, v0, v30

    sub-int v0, v29, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 1818
    :cond_15
    :goto_b
    add-int v22, v10, v29

    .line 1819
    goto :goto_c

    .line 1821
    :sswitch_2
    sub-int v0, v7, v11

    move-object/from16 v1, v26

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v0, v1

    sub-int v22, v0, v21

    .line 1825
    :goto_c
    if-eqz v5, :cond_1a

    .line 1826
    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x1

    aget v1, v14, v1

    sub-int v28, v0, v1

    .line 1827
    const/4 v0, 0x0

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v13, v0

    .line 1828
    move/from16 v0, v28

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v14, v1

    .line 1829
    move/from16 v29, v13

    .line 1830
    move/from16 v30, v13

    .line 1832
    if-eqz v19, :cond_17

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v32, v29, v0

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v33, v22, v0

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move/from16 v1, v32

    move/from16 v2, v22

    move/from16 v3, v29

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v29, v32, v0

    .line 1838
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v22, v33, v0

    .line 1840
    :cond_17
    if-eqz v20, :cond_18

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1842
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int v22, v22, v0

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v32, v30, v0

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v33, v22, v0

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move/from16 v1, v32

    move/from16 v2, v22

    move/from16 v3, v30

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1846
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v30, v30, v0

    .line 1847
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v22, v33, v0

    .line 1849
    :cond_18
    if-eqz v27, :cond_19

    .line 1850
    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1852
    :cond_19
    goto/16 :goto_f

    .line 1853
    :cond_1a
    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    aget v1, v14, v1

    sub-int v28, v0, v1

    .line 1854
    const/4 v0, 0x0

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v12, v0

    .line 1855
    move/from16 v0, v28

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1856
    move/from16 v29, v12

    .line 1857
    move/from16 v30, v12

    .line 1859
    if-eqz v19, :cond_1c

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int v32, v29, v0

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v33, v22, v0

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move/from16 v1, v29

    move/from16 v2, v22

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1864
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v29, v32, v0

    .line 1865
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v22, v33, v0

    .line 1867
    :cond_1c
    if-eqz v20, :cond_1d

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1869
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    add-int v22, v22, v0

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int v32, v30, v0

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v33, v22, v0

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move/from16 v1, v30

    move/from16 v2, v22

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1873
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v30, v32, v0

    .line 1874
    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v22, v33, v0

    .line 1876
    :cond_1d
    if-eqz v27, :cond_1e

    .line 1877
    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1885
    :cond_1e
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1887
    const/16 v23, 0x0

    :goto_10
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_1f

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v12, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    .line 1887
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 1892
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1894
    const/16 v24, 0x0

    :goto_11
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_20

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v1, v0, v13, v14, v2}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    .line 1894
    add-int/lit8 v24, v24, 0x1

    goto :goto_11

    .line 1901
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v14}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v24

    .line 1903
    sub-int v0, v6, v8

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int v25, v8, v0

    .line 1904
    div-int/lit8 v26, v24, 0x2

    .line 1905
    sub-int v27, v25, v26

    .line 1906
    add-int v28, v27, v24

    .line 1907
    move/from16 v0, v27

    if-ge v0, v12, :cond_21

    .line 1908
    move/from16 v27, v12

    goto :goto_12

    .line 1909
    :cond_21
    move/from16 v0, v28

    if-le v0, v13, :cond_22

    .line 1910
    sub-int v0, v28, v13

    sub-int v27, v27, v0

    .line 1913
    :cond_22
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1914
    const/16 v30, 0x0

    :goto_13
    move/from16 v0, v30

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v27

    move/from16 v3, v16

    invoke-direct {v1, v0, v2, v14, v3}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v27

    .line 1914
    add-int/lit8 v30, v30, 0x1

    goto :goto_13

    .line 1919
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1920
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24

    .line 1571
    const/4 v7, 0x0

    .line 1572
    const/4 v8, 0x0

    .line 1573
    const/4 v9, 0x0

    .line 1575
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1578
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    const/4 v11, 0x1

    .line 1580
    const/4 v12, 0x0

    goto :goto_0

    .line 1582
    :cond_0
    const/4 v11, 0x0

    .line 1583
    const/4 v12, 0x1

    .line 1588
    :goto_0
    const/4 v13, 0x0

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v13, v0, v1

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1594
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1596
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1595
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1599
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1603
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v13, v0, v1

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1605
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1607
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1606
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1610
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v14

    .line 1611
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v7, v0, 0x0

    .line 1612
    sub-int v0, v14, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    .line 1614
    const/4 v15, 0x0

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1620
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1619
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1622
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredState()I

    move-result v0

    .line 1621
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1625
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v16

    .line 1626
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v7, v0

    .line 1627
    sub-int v0, v16, v15

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v12

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1630
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1633
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1632
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1635
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1634
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1638
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1639
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1642
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1641
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1644
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1643
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1647
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v17

    .line 1648
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 1649
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1650
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1651
    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1653
    goto :goto_2

    .line 1656
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1658
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1659
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1648
    :cond_7
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1662
    :cond_8
    const/16 v18, 0x0

    .line 1663
    const/16 v19, 0x0

    .line 1664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v20, v0, v1

    .line 1665
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v21, v0, v1

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move/from16 v2, p1

    add-int v3, v7, v21

    move/from16 v4, p2

    move/from16 v5, v20

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v18

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v18, v0, v1

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v19, v0, v1

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1674
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1675
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move/from16 v2, p1

    add-int v3, v7, v21

    move/from16 v4, p2

    add-int v5, v19, v20

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    move/from16 v1, v18

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1680
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1682
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1681
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1685
    :cond_a
    add-int v7, v7, v18

    .line 1686
    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 1691
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1693
    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v9

    .line 1693
    move/from16 v2, p1

    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v22

    .line 1696
    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v1, v9, 0x10

    .line 1696
    move/from16 v2, p2

    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v23

    .line 1700
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    move/from16 v0, v23

    :goto_3
    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1701
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1423
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 1424
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    return-void

    .line 1428
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1429
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1431
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1432
    :goto_0
    iget v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1433
    iget v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1434
    if-eqz v3, :cond_2

    .line 1435
    invoke-interface {v3}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1439
    :cond_2
    iget-boolean v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_3

    .line 1440
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1442
    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 487
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 489
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1411
    new-instance v1, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1413
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1418
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1463
    if-nez v1, :cond_0

    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1467
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v0, :cond_1

    .line 1468
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1469
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1474
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 1475
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1478
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2118
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2120
    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 2121
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2122
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2123
    iget v0, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v4, v0, :cond_0

    .line 2124
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 2125
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2128
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 2150
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2151
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2152
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    .line 1286
    if-gez p1, :cond_0

    .line 1287
    const/high16 p1, -0x80000000

    .line 1289
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1290
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1291
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1295
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    .line 1244
    if-gez p1, :cond_0

    .line 1245
    const/high16 p1, -0x80000000

    .line 1247
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1248
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1249
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1253
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    .line 1168
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1170
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    .line 1105
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1107
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 502
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 621
    if-eqz p1, :cond_0

    .line 622
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 630
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4

    .line 547
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v3

    .line 553
    if-ne v3, p1, :cond_1

    .line 554
    return-void

    .line 557
    :cond_1
    if-eqz v3, :cond_2

    .line 558
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 562
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_3

    .line 563
    new-instance v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 566
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 567
    if-eqz p1, :cond_4

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 571
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 576
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 578
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 579
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 2160
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 2161
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 2162
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 940
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 941
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 958
    if-eqz p1, :cond_0

    .line 959
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 965
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 994
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1084
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1017
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1018
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 353
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 354
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 355
    if-nez p1, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 358
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 795
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 808
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 809
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 811
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 812
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 815
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 830
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 848
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 852
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .line 872
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 740
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 755
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 758
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 761
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 776
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0

    .line 386
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 387
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 388
    iput p3, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 389
    iput p4, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 392
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .line 477
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 479
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .line 455
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 457
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 458
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 411
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 413
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .line 433
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 436
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 837
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 841
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 860
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
