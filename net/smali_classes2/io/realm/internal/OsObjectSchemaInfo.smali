.class public Lio/realm/internal/OsObjectSchemaInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObjectSchemaInfo$Builder;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    invoke-static {}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-wide p1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    .line 157
    sget-object v0, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 158
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 146
    invoke-static {p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(J)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/realm/internal/OsObjectSchemaInfo;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(J[J[J)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/OsObjectSchemaInfo;->nativeAddProperties(J[J[J)V

    return-void
.end method

.method private static native nativeAddProperties(J[J[J)V
.end method

.method private static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method private static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetPrimaryKeyProperty(J)J
.end method

.method private static native nativeGetProperty(JLjava/lang/String;)J
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .line 195
    sget-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method public getPrimaryKeyProperty()Lio/realm/internal/Property;
    .locals 5

    .line 184
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v3

    .line 185
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lio/realm/internal/Property;
    .locals 3

    .line 174
    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetProperty(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    return-object v0
.end method
