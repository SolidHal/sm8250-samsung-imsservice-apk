.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Authorize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 291
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->getOtp()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "otp":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1
.end method
