.class Lcom/auxbrain/egginc/EggIncBilling$3;
.super Ljava/lang/Object;
.source "EggIncBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncBilling;->processPurchases(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/EggIncBilling;

.field final synthetic val$p:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncBilling;Lcom/android/billingclient/api/Purchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$3;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    iput-object p2, p0, Lcom/auxbrain/egginc/EggIncBilling$3;->val$p:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$3;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncBilling;->access$000(Lcom/auxbrain/egginc/EggIncBilling;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/auxbrain/egginc/EggIncBilling$3;->val$p:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
