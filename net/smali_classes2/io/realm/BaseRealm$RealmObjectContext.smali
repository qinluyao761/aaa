.class public final Lio/realm/BaseRealm$RealmObjectContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/BaseRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealmObjectContext"
.end annotation


# instance fields
.field private acceptDefaultValue:Z

.field private columnInfo:Lio/realm/internal/ColumnInfo;

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    .line 779
    return-void
.end method

.method public getAcceptDefaultValue()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    return v0
.end method

.method public getColumnInfo()Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 762
    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    return-object v0
.end method

.method public getExcludeFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method getRealm()Lio/realm/BaseRealm;
    .locals 1

    .line 754
    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow()Lio/realm/internal/Row;
    .locals 1

    .line 758
    iget-object v0, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lio/realm/BaseRealm$RealmObjectContext;->realm:Lio/realm/BaseRealm;

    .line 747
    iput-object p2, p0, Lio/realm/BaseRealm$RealmObjectContext;->row:Lio/realm/internal/Row;

    .line 748
    iput-object p3, p0, Lio/realm/BaseRealm$RealmObjectContext;->columnInfo:Lio/realm/internal/ColumnInfo;

    .line 749
    iput-boolean p4, p0, Lio/realm/BaseRealm$RealmObjectContext;->acceptDefaultValue:Z

    .line 750
    iput-object p5, p0, Lio/realm/BaseRealm$RealmObjectContext;->excludeFields:Ljava/util/List;

    .line 751
    return-void
.end method
