.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingEvent"
.end annotation


# static fields
.field public static final APPEND_REJOIN:Ljava/lang/String; = "_rejoin"

.field public static final CONFIRM:Ljava/lang/String; = "confirm"

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;

.field public static final NM_LANDING:Ljava/lang/String; = "nmLanding"

.field public static final ORDER_CONFIRM:Ljava/lang/String; = "orderConfirm"

.field public static final ORDER_CONFIRM_CONTEXT:Ljava/lang/String; = "orderConfirmContext"

.field public static final ORDER_FINAL:Ljava/lang/String; = "orderFinal"

.field public static final PAYMENT:Ljava/lang/String; = "payment"

.field public static final PAYMENT_CREDIT_CARD:Ljava/lang/String; = "paymentCreditCard"

.field public static final PAYMENT_GIFT_CARD:Ljava/lang/String; = "paymentGiftCard"

.field public static final PAYMENT_WITH_CONTEXT:Ljava/lang/String; = "paymentContext"

.field public static final PLAN_SELECTION:Ljava/lang/String; = "planSelection"

.field public static final PLAN_SELECTION_CONTEXT:Ljava/lang/String; = "planSelectionContext"

.field public static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final REGISTRATION_CONTEXT:Ljava/lang/String; = "registrationContext"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 263
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$LoggingEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
