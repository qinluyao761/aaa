.class public Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;>;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 185
    const-class v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public get(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 190
    invoke-interface {p1}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, v0}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->get(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 0

    .line 195
    invoke-interface {p1, p2}, Landroid/support/design/circularreveal/CircularRevealWidget;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 196
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    move-object v1, p2

    check-cast v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->set(Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
