.class public Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 136
    return-void
.end method

.method private generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 4

    .line 280
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 281
    :goto_0
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/support/mediacompat/R$layout;->notification_media_action:I

    invoke-direct {v3, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 284
    if-nez v2, :cond_1

    .line 285
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 288
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 290
    :cond_2
    return-object v3
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 211
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$MediaStyle;

    invoke-direct {v1}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 212
    invoke-virtual {p0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 216
    :cond_1
    :goto_0
    return-void
.end method

.method fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 226
    :cond_1
    return-object p1
.end method

.method generateBigContentView()Landroid/widget/RemoteViews;
    .locals 8

    .line 311
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 312
    .line 313
    invoke-virtual {p0, v4}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getBigContentViewLayoutResource(I)I

    move-result v0

    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 315
    sget v0, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v5, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 316
    if-lez v4, :cond_0

    .line 317
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 319
    sget v0, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v5, v0, v7}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 317
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_1

    .line 323
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v1, "setAlpha"

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 324
    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 326
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 328
    :cond_1
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/16 v1, 0x8

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    :goto_1
    return-object v5
.end method

.method generateContentView()Landroid/widget/RemoteViews;
    .locals 11

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    .line 243
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 246
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 247
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v0, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    array-length v0, v0

    .line 249
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 250
    :goto_0
    sget v0, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v5, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 251
    if-lez v7, :cond_2

    .line 252
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 253
    if-lt v8, v6, :cond_1

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    add-int/lit8 v3, v6, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 254
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    aget v1, v1, v8

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/support/v4/app/NotificationCompat$Action;

    .line 261
    invoke-direct {p0, v9}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 262
    sget v0, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v5, v0, v10}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 252
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 265
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_3

    .line 266
    sget v0, Landroid/support/mediacompat/R$id;->end_padder:I

    const/16 v1, 0x8

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 269
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v1, "setAlpha"

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 269
    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 272
    :cond_3
    sget v0, Landroid/support/mediacompat/R$id;->end_padder:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/16 v1, 0x8

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    :goto_2
    return-object v5
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1

    .line 334
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_big_media:I

    :goto_0
    return v0
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 294
    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_media:I

    return v0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 2

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 0

    .line 158
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 159
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .locals 0

    .line 149
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 150
    return-object p0
.end method
