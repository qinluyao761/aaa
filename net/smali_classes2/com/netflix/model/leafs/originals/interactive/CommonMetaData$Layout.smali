.class public abstract Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/CommonMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Choice;,
        Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter<Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultChoicePointTimeOffsetMs(Ljava/lang/Float;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultChoices(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    .line 214
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultSubTitleY(Ljava/lang/Double;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultUiHideOffsetMs(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultSubTitleY(Ljava/lang/Double;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    new-instance v1, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Size;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_Size;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;->setDefaultCanvasSize(Lcom/netflix/model/leafs/originals/interactive/Size;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout$GsonTypeAdapter;

    move-result-object v0

    .line 212
    return-object v0
.end method


# virtual methods
.method public abstract assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;
.end method

.method public abstract canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;
.end method

.method public abstract choicePointTimeOffsetMs()Ljava/lang/Float;
.end method

.method public abstract choices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Choice;>;"
        }
    .end annotation
.end method

.method public abstract endButton()Lcom/netflix/model/leafs/originals/interactive/Button;
.end method

.method public abstract headerLabel()Lcom/netflix/model/leafs/originals/interactive/Label;
.end method

.method public abstract startButton()Lcom/netflix/model/leafs/originals/interactive/Button;
.end method

.method public abstract subTitleY()Ljava/lang/Double;
.end method

.method public abstract timer()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;
.end method

.method public abstract uiHideOffsetMs()Ljava/lang/Integer;
.end method
