.class public abstract Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Choice$Svg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Svg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter<Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Choice$Svg;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout_Choice_Svg$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_CommonMetaData_Layout_Choice_Svg$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract color()Lcom/netflix/model/leafs/originals/interactive/Color;
.end method

.method public abstract d()Ljava/lang/String;
.end method
