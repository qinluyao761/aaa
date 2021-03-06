.class Landroid/support/transition/ViewUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<Landroid/view/View;Landroid/graphics/Rect;>;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroid/support/transition/ViewUtilsBase;

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
        }
    .end annotation
.end field

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Landroid/support/transition/ViewUtilsApi22;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Landroid/support/transition/ViewUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_0

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 50
    new-instance v0, Landroid/support/transition/ViewUtilsApi19;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Landroid/support/transition/ViewUtilsBase;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    .line 59
    :goto_0
    new-instance v0, Landroid/support/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 74
    new-instance v0, Landroid/support/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 1

    .line 131
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private static fetchViewFlagsField()V
    .locals 3

    .line 214
    sget-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_0

    .line 216
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mViewFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 217
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    const-string v0, "ViewUtils"

    const-string v1, "fetchViewFlagsField: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    .line 223
    :cond_0
    return-void
.end method

.method static getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 94
    new-instance v0, Landroid/support/transition/ViewOverlayApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;

    move-result-object v0

    return-object v0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .locals 1

    .line 114
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 104
    new-instance v0, Landroid/support/transition/WindowIdApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Landroid/support/transition/WindowIdApi14;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 1

    .line 122
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 6

    .line 210
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ViewUtilsBase;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 211
    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .locals 1

    .line 110
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->setTransitionAlpha(Landroid/view/View;F)V

    .line 111
    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .locals 3

    .line 148
    invoke-static {}, Landroid/support/transition/ViewUtils;->fetchViewFlagsField()V

    .line 149
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 152
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v1, v2, -0xd

    or-int/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 157
    :cond_0
    :goto_0
    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 172
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 173
    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 188
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 189
    return-void
.end method
