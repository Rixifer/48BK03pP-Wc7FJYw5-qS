.class Lcom/auxbrain/egginc/HTTPHelper$2;
.super Ljava/lang/Object;
.source "HTTPHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/HTTPHelper;->backgroundDownloadFile(Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/HTTPHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/HTTPHelper;Ljava/lang/String;)V
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

    .line 49
    iput-object p1, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iput-object p2, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iget-object v1, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/auxbrain/egginc/HTTPHelper;->blockingFileDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iget-wide v1, v1, Lcom/auxbrain/egginc/HTTPHelper;->genAtStart:J

    invoke-static {}, Lcom/auxbrain/egginc/EngineState;->generation()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 56
    array-length v1, v0

    iget-object v2, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iget-boolean v2, v2, Lcom/auxbrain/egginc/HTTPHelper;->success:Z

    iget-object v3, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iget v3, v3, Lcom/auxbrain/egginc/HTTPHelper;->sequence:I

    invoke-static {v0, v1, v2, v3}, Lcom/auxbrain/egginc/EggIncActivity;->httpRequestComplete([BIZI)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dropping stale HTTP callback seq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->this$0:Lcom/auxbrain/egginc/HTTPHelper;

    iget v1, v1, Lcom/auxbrain/egginc/HTTPHelper;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http done dONE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auxbrain/egginc/HTTPHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "egginc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
