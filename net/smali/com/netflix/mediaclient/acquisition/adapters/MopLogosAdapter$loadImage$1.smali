.class final Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;->loadImage(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/ﺔ;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageView:Lo/ﺔ;

.field final synthetic $netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/ﺔ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$imageView:Lo/ﺔ;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBinding()V
    .locals 0

    invoke-static {p0}, Lo/ᒲ;->ॱ(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ˊ;)V

    return-void
.end method

.method public notAvailable(Lo/ry;)V
    .locals 0

    invoke-static {p0, p1}, Lo/ᒲ;->ॱ(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ˊ;Lo/ry;)V

    return-void
.end method

.method public final run(Lo/ry;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v7

    .line 43
    move-object v0, v7

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$imageView:Lo/ﺔ;

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$if;

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter$loadImage$1;->$url:Ljava/lang/String;

    .line 46
    sget-object v3, Lcom/netflix/mediaclient/api/res/AssetType;->ˋॱ:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 47
    const-string v4, "mopLogo"

    .line 48
    sget-object v5, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->ˊ:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    check-cast v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$iF;

    .line 43
    .line 49
    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->ˊ(Lcom/netflix/mediaclient/util/gfx/ImageLoader$if;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$iF;Z)V

    nop

    .line 51
    :cond_0
    return-void
.end method
