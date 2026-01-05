.class Lcom/auxbrain/egginc/EggIncActivity$2;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Lcom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auxbrain/egginc/EggIncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field last_completed:Z

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

    .line 193
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$300(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 212
    const-string p1, "EGGINC"

    const-string v0, "APPLOVIN DISPLAYED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 218
    const-string p1, "EGGINC"

    const-string v0, "APPLOVIN HIDDEN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$300(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    .line 220
    iget-boolean p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->last_completed:Z

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$400(Z)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 4

    .line 230
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$208(Lcom/auxbrain/egginc/EggIncActivity;)I

    .line 231
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {p2}, Lcom/auxbrain/egginc/EggIncActivity;->access$200(Lcom/auxbrain/egginc/EggIncActivity;)I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$2$1;

    invoke-direct {v1, p0}, Lcom/auxbrain/egginc/EggIncActivity$2$1;-><init>(Lcom/auxbrain/egginc/EggIncActivity$2;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/auxbrain/egginc/EggIncActivity;->access$202(Lcom/auxbrain/egginc/EggIncActivity;I)I

    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .locals 0

    .line 199
    const-string p1, "EGGINC"

    const-string p2, "APPLOVIN REWARD USER NOW"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2;->last_completed:Z

    return-void
.end method
