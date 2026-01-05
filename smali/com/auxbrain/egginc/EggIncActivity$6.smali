.class Lcom/auxbrain/egginc/EggIncActivity$6;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinCmpService$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncActivity;->showCMPFlow()V
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

    .line 634
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$6;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/applovin/sdk/AppLovinCmpError;)V
    .locals 1

    .line 638
    const-string v0, "EGGINC"

    if-nez p1, :cond_0

    .line 641
    const-string p1, "CMP Alert shown successfully"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_0
    const-string p1, "CMP Can\'t be shown on this device"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
