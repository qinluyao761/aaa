.class Lcom/crashlytics/android/core/CrashlyticsController$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$userEmail:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .line 431
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1200(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object v5

    .line 432
    new-instance v0, Lcom/crashlytics/android/core/MetaDataStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsController;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/crashlytics/android/core/UserMetaData;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsController$10;->val$userEmail:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/crashlytics/android/core/UserMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lcom/crashlytics/android/core/MetaDataStore;->writeUserData(Ljava/lang/String;Lcom/crashlytics/android/core/UserMetaData;)V

    .line 434
    const/4 v0, 0x0

    return-object v0
.end method
