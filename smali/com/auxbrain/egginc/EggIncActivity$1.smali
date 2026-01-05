.class Lcom/auxbrain/egginc/EggIncActivity$1;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Lcom/applovin/mediation/MaxAdRevenueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auxbrain/egginc/EggIncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/EggIncActivity;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$1;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 5

    .line 177
    invoke-static {}, Lcom/auxbrain/egginc/EggIncActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getRevenue()D

    move-result-wide v0

    .line 181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string v3, "ad_platform"

    const-string v4, "appLovin"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "ad_source"

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_format"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "ad_unit_name"

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string p1, "value"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 187
    const-string p1, "currency"

    const-string v0, "USD"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$1;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$100(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v0, "ad_impression"

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
