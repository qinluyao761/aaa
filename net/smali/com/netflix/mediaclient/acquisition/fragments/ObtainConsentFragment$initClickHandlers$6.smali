.class final Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment$initClickHandlers$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;->initClickHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment$initClickHandlers$6;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment$initClickHandlers$6;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;

    # invokes: Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;->handleSubmitForm()V
    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;->access$handleSubmitForm(Lcom/netflix/mediaclient/acquisition/fragments/ObtainConsentFragment;)V

    .line 83
    return-void
.end method
