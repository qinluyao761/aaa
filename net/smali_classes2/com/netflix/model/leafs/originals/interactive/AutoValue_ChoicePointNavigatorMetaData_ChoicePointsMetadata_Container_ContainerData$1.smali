.class final Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;
    .locals 4

    .line 11
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;-><init>(DI)V

    .line 11
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;
    .locals 1

    .line 18
    new-array v0, p1, [Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/AutoValue_ChoicePointNavigatorMetaData_ChoicePointsMetadata_Container_ContainerData;

    move-result-object v0

    return-object v0
.end method
