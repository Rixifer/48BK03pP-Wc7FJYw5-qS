.class public final synthetic Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/auxbrain/egginc/EggIncBilling;


# direct methods
.method public synthetic constructor <init>(Lcom/auxbrain/egginc/EggIncBilling;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda3;->f$0:Lcom/auxbrain/egginc/EggIncBilling;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda3;->f$0:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0, p1, p2}, Lcom/auxbrain/egginc/EggIncBilling;->lambda$queryPurchasesAsync$4$com-auxbrain-egginc-EggIncBilling(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
