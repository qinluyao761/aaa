.class public final Lcom/google/android/gms/common/data/zac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/data/DataHolder;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    .line 6
    .line 7
    move-object v6, p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v7

    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v10, 0x0

    .line 11
    const/4 v11, 0x0

    .line 12
    const/4 v12, 0x0

    .line 13
    :goto_0
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 14
    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 15
    move v13, v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 16
    .line 17
    :sswitch_0
    invoke-static {v6, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v9

    .line 18
    goto :goto_0

    .line 19
    :sswitch_1
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    invoke-static {v6, v13, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/database/CursorWindow;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :sswitch_2
    invoke-static {v6, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v11

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :sswitch_3
    invoke-static {v6, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v12

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :sswitch_4
    invoke-static {v6, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v8

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    invoke-static {v6, v13}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 32
    goto/16 :goto_0

    .line 33
    :cond_0
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 34
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    move v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 35
    move-object v13, v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->zaca()V

    .line 36
    .line 37
    return-object v13

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 3
    .line 4
    new-array v0, p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    return-object v0
.end method
