.class public Lorg/chromium/base/library_loader/Linker$LibInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
        }
    .end annotation
.end field


# instance fields
.field public mLoadAddress:J
    .annotation build Lorg/chromium/base/annotations/AccessedByNative;
    .end annotation
.end field

.field public mLoadSize:J
    .annotation build Lorg/chromium/base/annotations/AccessedByNative;
    .end annotation
.end field

.field public mRelroFd:I
    .annotation build Lorg/chromium/base/annotations/AccessedByNative;
    .end annotation
.end field

.field public mRelroSize:J
    .annotation build Lorg/chromium/base/annotations/AccessedByNative;
    .end annotation
.end field

.field public mRelroStart:J
    .annotation build Lorg/chromium/base/annotations/AccessedByNative;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 751
    new-instance v0, Lorg/chromium/base/library_loader/Linker$LibInfo$1;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/Linker$LibInfo$1;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/Linker$LibInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 696
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    .line 697
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    .line 698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    .line 721
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 723
    if-nez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 724
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 766
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[load=0x%x-0x%x relro=0x%x-0x%x fd=%d]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 768
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    iget-wide v5, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    add-long/2addr v3, v5

    .line 769
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v3, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    .line 770
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-wide v3, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    iget-wide v5, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    add-long/2addr v3, v5

    .line 771
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 772
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 766
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 729
    iget v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-ltz v0, :cond_0

    .line 730
    iget-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 731
    iget-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 732
    iget-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    iget-wide v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 735
    :try_start_0
    iget v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 736
    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 737
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    goto :goto_0

    .line 738
    :catch_0
    move-exception v4

    .line 739
    const-string v0, "LibraryLoader"

    const-string v1, "Can\'t write LibInfo file descriptor to parcel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :cond_0
    :goto_0
    return-void
.end method
