.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;
.super Ljava/lang/Object;
.source "WorkflowCmcc.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Authorize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 456
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get OTP & save it to shared info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$802(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Z)Z

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "otp":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 464
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setValidityTimer(I)V

    .line 465
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 469
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1
.end method
