.class final Lcom/google/android/gms/common/api/internal/zaan;
.super Lcom/google/android/gms/common/api/internal/zaau;


# instance fields
.field final synthetic zagi:Lcom/google/android/gms/common/api/internal/zaak;

.field private final zagk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/zaam;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/zaam;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaau;-><init>(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/api/internal/zaal;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaan;->zagk:Ljava/util/Map;

    .line 3
    return-void
.end method


# virtual methods
.method public final zaan()V
    .locals 17

    .line 4
    new-instance v4, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zab(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/common/api/Api$Client;

    .line 8
    invoke-interface {v8}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagk:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaam;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaam;->zaa(Lcom/google/android/gms/common/api/internal/zaam;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v7, -0x1

    .line 13
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    move-object v11, v6

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :cond_2
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v13, v13, 0x1

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/common/api/Api$Client;

    .line 15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v0

    .line 16
    move v7, v0

    if-nez v0, :cond_2

    .line 17
    :cond_3
    goto :goto_1

    .line 18
    :cond_4
    move-object v14, v5

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x0

    :cond_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_6

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v16, v16, 0x1

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/common/api/Api$Client;

    .line 19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v0

    .line 20
    move v7, v0

    if-eqz v0, :cond_5

    .line 21
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 22
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zad(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaao;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2, v8}, Lcom/google/android/gms/common/api/internal/zaao;-><init>(Lcom/google/android/gms/common/api/internal/zaan;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaa(Lcom/google/android/gms/common/api/internal/zabf;)V

    .line 24
    return-void

    .line 25
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zae(Lcom/google/android/gms/common/api/internal/zaak;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zaf(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/signin/zad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/signin/zad;->connect()V

    .line 27
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/common/api/Api$Client;

    .line 28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagk:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 29
    invoke-interface {v9}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zad(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaap;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaan;->zagi:Lcom/google/android/gms/common/api/internal/zaak;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2, v10}, Lcom/google/android/gms/common/api/internal/zaap;-><init>(Lcom/google/android/gms/common/api/internal/zaan;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->zaa(Lcom/google/android/gms/common/api/internal/zabf;)V

    goto :goto_2

    .line 32
    :cond_9
    invoke-interface {v9, v10}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    .line 33
    goto :goto_2

    .line 34
    :cond_a
    return-void
.end method
