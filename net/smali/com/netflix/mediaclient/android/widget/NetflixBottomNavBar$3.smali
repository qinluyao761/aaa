.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->ˋ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lio/reactivex/functions/Consumer<Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field final synthetic ॱ:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;->ॱ:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 483
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;->ˊ(Ljava/lang/Integer;)V

    return-void
.end method

.method public ˊ(Ljava/lang/Integer;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$3;->ॱ:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->ॱ(I)V

    .line 487
    return-void
.end method
