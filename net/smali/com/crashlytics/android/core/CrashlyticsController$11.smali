.class Lcom/crashlytics/android/core/CrashlyticsController$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->cacheKeyData(Ljava/util/Map;)V
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

.field final synthetic val$keyData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Map;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$11;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$11;->val$keyData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$11;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$11;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    # invokes: Lcom/crashlytics/android/core/CrashlyticsController;->getCurrentSessionId()Ljava/lang/String;
    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1200(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object v2

    .line 452
    new-instance v0, Lcom/crashlytics/android/core/MetaDataStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$11;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsController;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$11;->val$keyData:Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lcom/crashlytics/android/core/MetaDataStore;->writeKeyData(Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method
