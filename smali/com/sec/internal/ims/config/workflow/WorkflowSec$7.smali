.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;
.source "WorkflowSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 579
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 582
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v2, "FetchOtp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 584
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 585
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    .line 589
    :cond_0
    return-object v0
.end method

.method protected setHttp()V
    .locals 3

    .line 594
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->setHttp()V

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 596
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 595
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 597
    return-void
.end method
