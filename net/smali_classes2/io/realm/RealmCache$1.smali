.class Lio/realm/RealmCache$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmCache;->copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$certFileExists:Z

.field final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field final synthetic val$realmFileFromAsset:Ljava/io/File;

.field final synthetic val$syncServerCertificateAssetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/realm/RealmConfiguration;ZLjava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    iput-object p2, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    iput-boolean p3, p0, Lio/realm/RealmCache$1;->val$certFileExists:Z

    iput-object p4, p0, Lio/realm/RealmCache$1;->val$syncServerCertificateAssetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 509
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    # invokes: Lio/realm/RealmCache;->copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v1}, Lio/realm/RealmCache;->access$900(Ljava/lang/String;Ljava/io/File;)V

    .line 514
    :cond_0
    iget-boolean v0, p0, Lio/realm/RealmCache$1;->val$certFileExists:Z

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    .line 516
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    .line 515
    invoke-static {v0}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    .line 516
    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 518
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$syncServerCertificateAssetName:Ljava/lang/String;

    # invokes: Lio/realm/RealmCache;->copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v3}, Lio/realm/RealmCache;->access$900(Ljava/lang/String;Ljava/io/File;)V

    .line 521
    :cond_1
    return-void
.end method
