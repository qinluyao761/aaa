.class final Lo/mk$iF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "iF"
.end annotation


# instance fields
.field public final ˋ:J

.field public final ˎ:J

.field public final ˏ:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-boolean p1, p0, Lo/mk$iF;->ˏ:Z

    .line 635
    iput-wide p2, p0, Lo/mk$iF;->ˎ:J

    .line 636
    iput-wide p4, p0, Lo/mk$iF;->ˋ:J

    .line 637
    return-void
.end method

.method public static ˎ(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lo/mk$iF;
    .locals 22

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 598
    const-wide/16 v7, 0x0

    .line 599
    const-wide v9, 0x7fffffffffffffffL

    .line 600
    const/4 v11, 0x0

    .line 601
    const/4 v12, 0x0

    .line 602
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v6, :cond_3

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v14

    .line 604
    if-nez v14, :cond_0

    .line 605
    new-instance v0, Lo/mk$iF;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lo/mk$iF;-><init>(ZJJ)V

    return-object v0

    .line 607
    :cond_0
    invoke-interface {v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v0

    or-int/2addr v11, v0

    .line 608
    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v15

    .line 609
    if-nez v15, :cond_1

    .line 610
    const/4 v12, 0x1

    .line 611
    const-wide/16 v7, 0x0

    .line 612
    const-wide/16 v9, 0x0

    goto :goto_1

    .line 613
    :cond_1
    if-nez v12, :cond_2

    .line 614
    invoke-interface {v14}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v16

    .line 615
    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v17

    .line 616
    move-wide/from16 v0, v17

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 617
    const/4 v0, -0x1

    if-eq v15, v0, :cond_2

    .line 618
    add-int v0, v16, v15

    add-int/lit8 v19, v0, -0x1

    .line 619
    move/from16 v0, v19

    invoke-interface {v14, v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    .line 620
    move/from16 v2, v19

    move-wide/from16 v3, p1

    invoke-interface {v14, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long v20, v0, v2

    .line 621
    move-wide/from16 v0, v20

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 602
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 625
    :cond_3
    new-instance v0, Lo/mk$iF;

    move v1, v11

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lo/mk$iF;-><init>(ZJJ)V

    return-object v0
.end method
