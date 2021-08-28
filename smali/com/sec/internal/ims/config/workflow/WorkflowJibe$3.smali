.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 530
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "FetchHttp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 534
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 535
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    .line 537
    return-object v0
.end method

.method protected setHttpHeader()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 543
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnrichedHeaderFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpSPR()V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->resetHttpSPR()V

    goto :goto_0

    .line 550
    :cond_1
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;->setHttpHeader()V

    .line 552
    :goto_0
    return-void
.end method
