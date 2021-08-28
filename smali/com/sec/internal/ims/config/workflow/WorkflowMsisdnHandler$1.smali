.class Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;
.super Landroid/os/CountDownTimer;
.source "WorkflowMsisdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->startMsisdnTimer(Landroid/os/CountDownTimer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

.field final synthetic val$nextMsisdnTime:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;JJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;
    .param p2, "arg0"    # J
    .param p4, "arg1"    # J

    .line 121
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iput p6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->val$nextMsisdnTime:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdnTimer expired("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->val$nextMsisdnTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->expiredMsisdnTimer()V

    .line 131
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .line 124
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validity tick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
