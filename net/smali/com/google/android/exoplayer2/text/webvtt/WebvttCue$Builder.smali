.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endTime:J

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private position:F

.field private positionAnchor:I

.field private startTime:J

.field private text:Landroid/text/SpannableStringBuilder;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    .line 81
    return-void
.end method

.method private derivePositionAnchorFromAlignment()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 158
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_1

    .line 160
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$1;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 163
    goto :goto_1

    .line 165
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 166
    goto :goto_1

    .line 168
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 169
    goto :goto_1

    .line 171
    :goto_0
    const-string v0, "WebvttCueBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 176
    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;
    .locals 13

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->derivePositionAnchorFromAlignment()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget v7, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    iget v8, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    iget v9, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iget v10, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    iget v11, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v12, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    .line 89
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 90
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    .line 92
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    .line 94
    return-void
.end method

.method public setEndTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 113
    return-object p0
.end method

.method public setLine(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 127
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    .line 128
    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 138
    return-object p0
.end method

.method public setLineType(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 132
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 133
    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 142
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    .line 143
    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 147
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 148
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 108
    return-object p0
.end method

.method public setText(Landroid/text/SpannableStringBuilder;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    .line 118
    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 123
    return-object p0
.end method

.method public setWidth(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    .line 153
    return-object p0
.end method
