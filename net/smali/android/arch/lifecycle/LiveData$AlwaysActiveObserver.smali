.class Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;
.super Landroid/arch/lifecycle/LiveData$ObserverWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlwaysActiveObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/arch/lifecycle/Observer<TT;>;)V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$AlwaysActiveObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    .line 424
    invoke-direct {p0, p1, p2}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 425
    return-void
.end method


# virtual methods
.method shouldBeActive()Z
    .locals 1

    .line 429
    const/4 v0, 0x1

    return v0
.end method
