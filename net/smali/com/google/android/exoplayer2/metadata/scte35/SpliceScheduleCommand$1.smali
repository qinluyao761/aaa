.class final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
    .locals 2

    .line 216
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
    .locals 1

    .line 221
    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    return-object v0
.end method
